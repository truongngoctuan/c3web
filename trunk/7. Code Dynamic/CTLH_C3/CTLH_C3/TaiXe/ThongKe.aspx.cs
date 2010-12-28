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

        // Nếu người dùng chưa đăng nhập với vai trò "Tài Xế" 
        // thì không cho vào trang
        protected void Page_PreInit(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                if (Page.User.Identity.IsAuthenticated)
                {
                    _role = Roles.GetRolesForUser(Page.User.Identity.Name)[0];
                    _maNhanVien = Roles.GetRolesForUser(Page.User.Identity.Name)[1];
                    if (!_role.Equals("Tài Xế"))
                        Response.Redirect("/Default.aspx");
                }
                else
                {
                    Response.Redirect("/Default.aspx");
                }
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
                int month = DateTime.Now.Month;
                int year = DateTime.Now.Year;

                // Khởi tạo 2 label tháng và năm
                lblThang.Text = month.ToString();
                lblNam.Text = year.ToString();

                // Chọn các chuyến mà tài xế này đã từng phục vụ
                // (Các chuyến đã đến nơi)
                // Lấy thời điểm khởi hành của chuyến làm căn cứ chuyến thuộc tháng năm nào
                TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
                var query_DaChay = (from c in dataContext.CHUYEN_XEs
                             join t in dataContext.TUYEN_XEs on c.MaTuyenXe equals t.MaTuyenXe
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
                                 DuKienDen = c.DuKienDen,
                                 ThoiDiemDenTram = c.ThoiGianDenTram,
                                 Luong = c.LuongTaiXe
                             }).Distinct();

                grdDaChay.DataSource = query_DaChay;
                grdDaChay.DataBind();

                // Chọn các chuyến mà tài xế này sẽ phục vụ
                // (Các chuyến chưa đến nơi)
                var query_SapChay = (from c in dataContext.CHUYEN_XEs
                             join t in dataContext.TUYEN_XEs on c.MaTuyenXe equals t.MaTuyenXe
                             where (c.MaTaiXe.Equals(_maNhanVien) 
                                    && c.ThoiGianDenTram == null
                                    && c.KhoiHanh.Value.Month == month
                                    && c.KhoiHanh.Value.Year == year)
                             select new { MaChuyen = c.MaChuyenXe, TramDi = t.TRAM_XE1.TenTramXe, TramDen = t.TRAM_XE.TenTramXe, KhoiHanh = c.KhoiHanh, DuKienDen = c.DuKienDen }).Distinct();
                grdSapChay.DataSource = query_SapChay;
                grdSapChay.DataBind();

                //Tính lương
                var query_NhanVien = (from n in dataContext.NHAN_VIENs
                              where n.MaNhanVien.Equals(_maNhanVien)
                              select n).Single();
                lblHeSo.Text = query_NhanVien.LuongTrongThang.ToString();
                float temp=0;
                for (int i = 0; i < query_DaChay.Count(); i++)
                {
                    temp += float.Parse(grdDaChay.Rows[i].Cells[grdDaChay.Columns.Count-1].Text);
                }
                lblLuongChuyen.Text = temp.ToString();
                lblTongCong.Text = (temp * query_NhanVien.LuongTrongThang).ToString();
            }
        }
    }
}
