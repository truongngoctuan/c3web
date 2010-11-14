using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_c3
{
    public partial class AnotherMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //http://www.codeproject.com/KB/aspnet/sitemapwithmasterpage.aspx
            //chinh menu co noi dung dong
            if (!IsPostBack)
            {
                string sURL = Request.Url.ToString().ToLower();
                if (sURL.Contains("/admin/"))
                {
                    SiteMapDataSourceMenu.SiteMapProvider = "AdminSiteMap";
                }
            }            
        }

        protected void ThemeList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("Theme", ThemeList.SelectedValue);
            Server.Transfer(Request.FilePath);
        }

        protected void ThemeList_DataBound(object sender, EventArgs e)
        {
            ThemeList.SelectedValue = Page.Theme;
        }

        public void SetSiteMap(string strSiteMapNameProvider)
        {
            SiteMapDataSourceMenu.SiteMapProvider = strSiteMapNameProvider;
        }
    }
}
