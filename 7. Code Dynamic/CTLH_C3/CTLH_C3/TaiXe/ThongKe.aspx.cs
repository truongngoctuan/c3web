using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;
using System.Web.Security;

namespace CTLH_C3
{
    public partial class ThongKe :CTLH_C3.Core.BasePage
    {
        private string _role = "";
        private string _maNhanVien = "";
        private TRAVEL_WEBDataContext _dataContext = new TRAVEL_WEBDataContext();

        // Nếu người dùng chưa đăng nhập với vai trò "Tài Xế" 
        // thì không cho vào trang
        protected void Page_PreInit(object sender, EventArgs e)
        {            
            if (Page.User.Identity.IsAuthenticated)
            {
                _role = Roles.GetRolesForUser(Page.User.Identity.Name)[0];
                _maNhanVien = Roles.GetRolesForUser(Page.User.Identity.Name)[1];
                if (!_role.ToLower().Equals("tài xế"))
                    Response.Redirect("/Default.aspx");
                if (_maNhanVien == null)
                {
                    Response.Redirect("/Default.aspx");
                }
            }
            else
            {
                Response.Redirect("/Default.aspx");
            }            
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(grdDaChay);
            DynamicDataManager1.RegisterControl(grdSapChay);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int thisMonth = DateTime.Now.Month;
                int thisYear = DateTime.Now.Year;

                // Khởi tạo các droplist tháng và năm
                ListItem item = new ListItem();
                item.Text = thisYear.ToString();
                item.Value = thisYear.ToString();
                dlstNam_SapChay.Items.Add(item);
                ListItem item2 = new ListItem();
                item2.Text = (thisYear - 1).ToString();
                item2.Value = (thisYear - 1).ToString();
                dlstNam_SapChay.Items.Add(item2);

                ListItem item3 = new ListItem();
                item3.Text = thisYear.ToString();
                item3.Value = thisYear.ToString();
                dlstNam_DaChay.Items.Add(item3);
                ListItem item4 = new ListItem();
                item4.Text = (thisYear - 1).ToString();
                item4.Value = (thisYear - 1).ToString();
                dlstNam_DaChay.Items.Add(item4);

                dlstThang_SapChay.SelectedValue = thisMonth.ToString();
                dlstNam_SapChay.SelectedValue = thisYear.ToString();
                dlstThang_DaChay.SelectedValue = thisMonth.ToString();
                dlstNam_DaChay.SelectedValue = thisYear.ToString();

                grdSapChay.DataBind();
                grdDaChay.DataBind();                               
            }
        }      
        
        protected void dlstThang_SapChay_SelectedIndexChanged(object sender, EventArgs e)
        {
            grdSapChay.DataBind();
        }

        protected void dlstNam_SapChay_SelectedIndexChanged(object sender, EventArgs e)
        {
            grdSapChay.DataBind();
        }

        protected void dlstThang_DaChay_SelectedIndexChanged(object sender, EventArgs e)
        {
            grdDaChay.DataBind(); 
        }

        protected void dlstNam_DaChay_SelectedIndexChanged(object sender, EventArgs e)
        {
            grdDaChay.DataBind(); 
        }

        protected void grdSapChay_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                grdSapChay.PageIndex = e.NewPageIndex;
                grdSapChay.DataBind();
            }
            catch            
            { 

            }
        }

        protected void grdDaChay_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                grdDaChay.PageIndex = e.NewPageIndex;
                grdDaChay.DataBind();
            }
            catch
            {
 
            }
        }

        //*** DataSource nằm trong DataBind là để dùng Dynamicdata Gridviewpager ***//
        // -nếu không Gridviewpager không nhận được datasource

        // Chọn các chuyến mà tài xế này đã từng phục vụ
        // (Các chuyến đã đến nơi)
        // Lấy thời điểm khởi hành của chuyến làm căn cứ chuyến thuộc tháng năm nào
        protected void grdSapChay_DataBinding(object sender, EventArgs e)
        {
            int month = int.Parse(dlstThang_SapChay.SelectedValue);
            int year = int.Parse(dlstNam_SapChay.SelectedValue);

            var query_SapChay = (from c in _dataContext.CHUYEN_XEs
                                 join t in _dataContext.TUYEN_XEs on c.MaTuyenXe equals t.MaTuyenXe
                                 where (c.MaTaiXe.Equals(_maNhanVien)
                                        && c.ThoiGianDenTram == null
                                        && c.KhoiHanh.Value.Month == month
                                        && c.KhoiHanh.Value.Year == year)
                                 select new { MaChuyen = c.MaChuyenXe, TramDi = t.TRAM_XE1.TenTramXe, TramDen = t.TRAM_XE.TenTramXe, KhoiHanh = c.KhoiHanh }).Distinct();
            grdSapChay.DataSource = query_SapChay;
        }

        // Chọn các chuyến mà tài xế này sẽ phục vụ
        // (Các chuyến chưa đến nơi)
        protected void grdDaChay_DataBinding(object sender, EventArgs e)
        {
            int month = int.Parse(dlstThang_DaChay.SelectedValue);
            int year = int.Parse(dlstNam_DaChay.SelectedValue);

            var query_DaChay = (from c in _dataContext.CHUYEN_XEs
                                join t in _dataContext.TUYEN_XEs on c.MaTuyenXe equals t.MaTuyenXe
                                where (c.MaTaiXe.Equals(_maNhanVien)
                                       && c.ThoiGianDenTram != null
                                       && c.KhoiHanh.Value.Month == month
                                       && c.KhoiHanh.Value.Year == year)
                                select new
                                {
                                    MaChuyen = c.MaChuyenXe,
                                    TramDi = t.TRAM_XE1.TenTramXe,
                                    TramDen = t.TRAM_XE.TenTramXe,
                                    KhoiHanh = c.KhoiHanh,
                                    ThoiDiemDenTram = c.ThoiGianDenTram,
                                    Luong = c.LuongTaiXe
                                }).Distinct();

            grdDaChay.DataSource = query_DaChay;

            //Tính lương
            var query_NhanVien = (from n in _dataContext.NHAN_VIENs
                                  where n.MaNhanVien.Equals(_maNhanVien)
                                  select n).Single();
            lblHeSo.Text = query_NhanVien.LuongTrongThang.ToString();
            float temp = 0;
            foreach (var chuyen in query_DaChay)
            {
                temp += (float)chuyen.Luong.Value;
            }
            lblLuongChuyen.Text = temp.ToString();
            lblTongCong.Text = (temp * query_NhanVien.LuongTrongThang).ToString();
        }
    }
}
