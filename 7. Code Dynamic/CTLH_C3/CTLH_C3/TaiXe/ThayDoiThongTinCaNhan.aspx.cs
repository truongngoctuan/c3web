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
    public partial class ThayDoiThongTinCaNhan : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(DetailsView1);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Page.User.Identity.IsAuthenticated)
                {
                    String _role = Roles.GetRolesForUser(Page.User.Identity.Name)[0];
                    String _maNhanVien = Roles.GetRolesForUser(Page.User.Identity.Name)[1];
                    if (!_role.Equals("Tài Xế"))
                        Response.Redirect("Default.aspx");
                    else
                    {
                        DetailsDataSource.AutoGenerateWhereClause = false;
                        lblLoaiNhanVien.Text = _role;
                        DetailsDataSource.Select = "new (MaNhanVien,HoTen, DienThoai, DiaChi, LuongTrongThang, LoaiNhanVien, LOAI_NHAN_VIEN)";
                        DetailsDataSource.Where = "MaNhanVien==" + _maNhanVien;
                    }
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}
