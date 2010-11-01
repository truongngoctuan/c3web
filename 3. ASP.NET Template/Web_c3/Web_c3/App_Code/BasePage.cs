using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Web_c3
{
    public class BasePage : Page
    {
        public BasePage()
        {
        }

        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
            if (Session["Theme"] == null)
            {
                Session.Add("Theme", "Default");
                Page.Theme = Session["Theme"].ToString();
            }
            else
            {
                Page.Theme = Session["Theme"].ToString();
            }
        }
    }
}