using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace CTLH_C3
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //http://www.codeproject.com/KB/aspnet/sitemapwithmasterpage.aspx
            //chinh menu co noi dung dong
            if (!IsPostBack)
            {
                if (Page.User.Identity.IsAuthenticated)
                {
                    string role = Roles.GetRolesForUser(Page.User.Identity.Name)[0];
                    switch (role)
                    {
                        case "Admin":
                            {
                                SiteMapDataSourceMenu.SiteMapProvider = "AdminSiteMap";
                                break;
                            }
                        case "Tài Xế":
                            {
                                SiteMapDataSourceMenu.SiteMapProvider = "TaiXeSiteMap";
                                break;
                            }
                        case "Điều Hành Trạm":
                            {
                                SiteMapDataSourceMenu.SiteMapProvider = "DieuHanhTramSiteMap";
                                break;
                            }
                        case "Điều Hành Công Ty":
                            {
                                SiteMapDataSourceMenu.SiteMapProvider = "DieuHanhCongTySiteMap";
                                break;
                            }
                        default:
                            {
                                SiteMapDataSourceMenu.SiteMapProvider = "XmlSiteMapProvider";
                                break;
                            }
                    }
                }
                else
                {
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
