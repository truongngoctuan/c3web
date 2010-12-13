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
    }
}