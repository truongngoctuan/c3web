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
    public partial class TaiXe_Default : CTLH_C3.Core.BasePage
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
            DynamicDataManager1.RegisterControl(GridView1, false);
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

                // Chọn các chuyến mà tài xế này sẽ phục vụ
                // (Các chuyến chưa đến nơi)
                TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
                var query = (from c in dataContext.CHUYEN_XEs
                             join t in dataContext.TUYEN_XEs on c.MaTuyenXe equals t.MaTuyenXe
                             where (c.MaTaiXe.Equals(_maNhanVien) 
                                    && c.ThoiGianDenTram==null
                                    && c.KhoiHanh.Value.Month == month
                                    && c.KhoiHanh.Value.Year == year)
                             select new { MaChuyen = c.MaChuyenXe, TramDi = t.TRAM_XE1.TenTramXe, TramDen = t.TRAM_XE.TenTramXe, KhoiHanh = c.KhoiHanh, DuKienDen = c.DuKienDen }).Distinct();
                GridView1.DataSource = query;
                //GridView1.DataKeyNames = new string[] { "MaChuyen" };
                GridView1.DataBind();
            }
        }
    }
}
