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

                if (sURL.Contains("/taixe/"))
                {
                    SiteMapDataSourceMenu.SiteMapProvider = "TaiXeSiteMap";
                }

                if (sURL.Contains("/dieuhanhtram/"))
                {
                    SiteMapDataSourceMenu.SiteMapProvider = "DieuHanhTramSiteMap";
                }

                if (sURL.Contains("/dieuhanhcongty/"))
                {
                    SiteMapDataSourceMenu.SiteMapProvider = "DieuHanhCongTySiteMap";
                }
            }            
        }

        protected string strFileJsUserControlPathKey = "Default";
        protected void ThemeList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("Theme", ThemeList.SelectedValue);
            Server.Transfer(Request.FilePath);

            //http://forums.asp.net/p/1609779/4120816.aspx
            strFileJsUserControlPathKey = ThemeList.SelectedValue;
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            //dynamic update resource javascript user control depend on
            //current theme 
            String csName = "CounterScript";
            Type csType = this.GetType();
            ClientScriptManager cs = Page.ClientScript;

            String scriptText = "";
            scriptText += "<script src=\"App_Themes/";
            scriptText += strFileJsUserControlPathKey;
            scriptText += "/jsUserControl.js\" type=\"text/javascript\"></script>";
            cs.RegisterClientScriptBlock(csType, csName, scriptText);
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
