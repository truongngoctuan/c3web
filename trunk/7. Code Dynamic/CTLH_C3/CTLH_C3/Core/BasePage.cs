using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace CTLH_C3.Core
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

            AddScript(new string[] { "InitCheckBox();", "initDropDownList();" });
        }

        protected void AddScript(string[] listFunction)
        {
            String csName = "CounterScript";
            Type csType = this.GetType();
            ClientScriptManager cs = Page.ClientScript;

            String scriptText = "";
            scriptText += "<script type=\"text/javascript\">";
            scriptText += "$(document).ready(function() {";

            for (int i = 0; i < listFunction.Length; i++)
            {
                scriptText += listFunction[i];
            }
                
            scriptText += "});";
            
            scriptText += "</script>";
            cs.RegisterClientScriptBlock(csType, csName, scriptText);
        }
    }
}