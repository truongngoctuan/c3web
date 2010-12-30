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
    public partial class ThayDoiThongTinCaNhan :CTLH_C3.Core.BasePage
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
                    if (!_role.ToLower().Equals("tài xế"))
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
            DynamicDataManager1.RegisterControl(DetailsView_ThongTinCaNhan);
            DynamicDataManager1.RegisterControl(DetailsView_TaiKhoan);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblLoaiNhanVien.Text = _role;

                ThongTinDataSource.AutoGenerateWhereClause = false;                
                ThongTinDataSource.Where = "MaNhanVien==" + _maNhanVien;

                TaiKhoanDataSource.AutoGenerateWhereClause = false;
                TaiKhoanDataSource.Where = "MaNhanVien==" + _maNhanVien;
            }
        }
    }
}
