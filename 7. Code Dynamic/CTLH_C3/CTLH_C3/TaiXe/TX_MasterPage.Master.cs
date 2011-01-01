using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace CTLH_C3
{
    public partial class TX_MasterPage : System.Web.UI.MasterPage
    {
        public enum ImageType { Banner,
            Logo,
            Slogan,
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //http://www.codeproject.com/KB/aspnet/sitemapwithmasterpage.aspx
            //chinh menu co noi dung dong
            if (!IsPostBack)
            {
                //----------------------------------------------------------------
                //cap nhat hinh anh/ thong tin tu csdl cho trang master
                int bannerId, sloganId, logoId;
                string gioithieuHTML;
                getThongTin(out bannerId, out sloganId, out logoId, out gioithieuHTML);

                imgBanner.ImageUrl = getImageURL(ImageType.Banner, bannerId);
                imgSlogan.ImageUrl = getImageURL(ImageType.Slogan, sloganId);
                imgLogo.ImageUrl = getImageURL(ImageType.Logo, logoId);
                //----------------------------------------------------------------
                
                SiteMapDataSourceMenu.SiteMapProvider= "TaiXeSiteMap";
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

        //-------------------------------------------------------------
        //cap nhat giao dien dong cho masterpage
        protected void getThongTin(out int banner, out int slogan, out int logo, out string gioithieu)
        {
            gioithieu = "";
            banner = slogan = logo = -1;
            TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
            var thongtincongtys = from t in context.THONG_TIN_CONG_Ties select t;
            var thongtincongty = new THONG_TIN_CONG_TY();
            if (thongtincongtys.Count() > 0)
                thongtincongty = thongtincongtys.First();

            if (thongtincongty.Banner != null)
                banner = (int)thongtincongty.Banner;
            if (thongtincongty.Slogan != null)
                slogan = (int)thongtincongty.Slogan;
            if (thongtincongty.Logo != null)
                logo = (int)thongtincongty.Logo;
            if (thongtincongty.TinTucGioiThieu != null)
                gioithieu = thongtincongty.TinTucGioiThieu;
        }
        protected string getImageURL(ImageType type, int id)
        {
            if (id == -1)
            {
                switch (type)
                {
                    case (ImageType.Banner):
                        {
                            return "~/images/banner.jpg";
                        }
                    case (ImageType.Logo):
                        {
                            return "~/images/logo.png";
                        }
                    case (ImageType.Slogan):
                        {
                            return "~/images/slogan.png";
                        }
                }
            }
            return "~/ImageHandler.ashx?Id=" + id;
        }
        //-------------------------------------------------------------
    }
}
