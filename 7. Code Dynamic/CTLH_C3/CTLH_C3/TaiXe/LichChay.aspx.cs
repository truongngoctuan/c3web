using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;
using System.Web.Security;
using CTLH_C3.Core;

namespace CTLH_C3
{
    public partial class TaiXe_Default : BasePage
    {
        private string _role = "";
        private string _maNhanVien = "";

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
            DynamicDataManager1.RegisterControl(grdSapChay, false);
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
                item2.Text = (thisYear + 1).ToString();
                item2.Value = (thisYear + 1).ToString();
                dlstNam_SapChay.Items.Add(item2);

                dlstThang_SapChay.SelectedValue = thisMonth.ToString();
                dlstNam_SapChay.SelectedValue = thisYear.ToString();

                grdSapChay.DataBind();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
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

        //*** DataSource nằm trong DataBind là để dùng Dynamicdata Gridviewpager ***//
        // -nếu không Gridviewpager không nhận được datasource

        // Chọn các chuyến mà tài xế này sẽ phục vụ
        // (Các chuyến chưa khởi hành)
        protected void GridView1_DataBinding(object sender, EventArgs e)
        {
            int month = int.Parse(dlstThang_SapChay.SelectedValue);
            int year = int.Parse(dlstNam_SapChay.SelectedValue);

            TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
            var query = (from c in dataContext.CHUYEN_XEs
                         join t in dataContext.TUYEN_XEs on c.MaTuyenXe equals t.MaTuyenXe
                         where (c.MaTaiXe.Equals(_maNhanVien)
                                && c.TINH_TRANG_CHUYEN_XE.TenTinhTrangChuyen.ToLower().Equals("chưa khởi hành")
                                && c.KhoiHanh.Value.Month == month
                                && c.KhoiHanh.Value.Year == year)                         
                         select new { MaChuyen = c.MaChuyenXe, TramDi = t.TRAM_XE1.TenTramXe, TramDen = t.TRAM_XE.TenTramXe, KhoiHanh = c.KhoiHanh }).Distinct();
            grdSapChay.DataSource = query;
        }

        protected void dlstThang_SapChay_SelectedIndexChanged(object sender, EventArgs e)
        {
            grdSapChay.DataBind();
        }

        protected void dlstNam_SapChay_SelectedIndexChanged(object sender, EventArgs e)
        {
            grdSapChay.DataBind();
        }
    }
}
