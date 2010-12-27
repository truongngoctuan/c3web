using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace CTLH_C3.Guest
{
    public partial class user_CustomLogin : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login1_LoginError(object sender, EventArgs e)
        {
            //Display the failure message in a client-side alert box
            //ClientScript.RegisterStartupScript(Me.GetType(), "LoginError", 
            //   String.Format("alert('{0}');", Login1.FailureText.Replace("'", "\'")), True);
            String strScript = String.Format("alert('{0}');", ((Login)LoginView1.FindControl("Login1")).FailureText.Replace("'", "\'"));
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "Login Error", strScript, true);
            //Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "Login Error", strScript, true);
        }
        //---------------------------------------------------------
        //phan he admin
        protected void ldsTenNhanVien_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
            var nvQuery = dataContext.NHAN_VIENs.Join(dataContext.TAI_KHOANs, c => c.MaNhanVien, o => o.MaNhanVien,
                (c, o) => new {c.HoTen, o.Username}).
                Where(q => q.Username.ToString() == Page.User.Identity.Name.ToString());

            e.Result = nvQuery;
        }

        //---------------------------------------------------------
        //phan he tai xe
        protected void ldsDanhSachPhanHoi_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
            var nvQuery = dataContext.NHAN_VIENs.Join(dataContext.TAI_KHOANs, c => c.MaNhanVien, o => o.MaNhanVien,
                (c, o) => new { c.MaNhanVien, o.Username}).
                Where(q => q.Username.ToString() == Page.User.Identity.Name.ToString()).
                Join(dataContext.PHAN_HOIs, c => c.MaNhanVien, o => o.MaNhanVien,
                (c, o) => new {c.MaNhanVien, o.MaPhanHoi}).
                Join(dataContext.PHAN_HOI_KHACH_HANGs, c => c.MaPhanHoi, o => o.MaPhanHoi,
                (c, o) => new {o.NoiDung, o.NgayDang}).
                OrderByDescending(c => c.NgayDang).Take(5);

            e.Result = nvQuery;
        }

        protected void ldsTenLuongNhanVien_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
            var nvQuery = dataContext.NHAN_VIENs.Join(dataContext.TAI_KHOANs, c => c.MaNhanVien, o => o.MaNhanVien,
                (c, o) => new { c.HoTen, o.Username, c.LuongTrongThang}).
                Where(q => q.Username.ToString() == Page.User.Identity.Name.ToString());

            e.Result = nvQuery;
        }
    }
}