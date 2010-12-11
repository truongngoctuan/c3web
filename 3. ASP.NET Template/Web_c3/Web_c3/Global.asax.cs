using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Web_c3
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception ex = HttpContext.Current.Server.GetLastError();
            if (ex is UnauthorizedAccessException)
            {
                //Response.Redirect("~/Unauthorized.aspx?page=" + Server.UrlEncode(Request.RawUrl));
                //Server.Transfer("~/Unauthorized.aspx");
                Server.Transfer("~/Default.aspx");
            }
            else
            {
                if (ex is HttpUnhandledException && ex.InnerException != null)
                    ex = ex.InnerException;
                if (ex != null)
                {
                    try
                    {
                        //send email to manager
                    }
                    catch (Exception)
                    {
                        //problem when sending email
                    }
                }
                //Server.Transfer("~/ErrorPage.aspx");
                Server.Transfer("~/Default.aspx");
            }     
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}