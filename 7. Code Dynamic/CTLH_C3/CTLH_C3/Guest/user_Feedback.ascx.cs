using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net.Configuration;
using System.Configuration;
using System.Web;
using System.Web.Configuration;
using System.Text;

namespace CTLH_C3.Guest
{
    public partial class user_Feedback : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSubmit_Click(object sender, EventArgs e)
        {
            string strCustomerEmail = tbCustomerEmail.Text;    
            try
            {
                Configuration config = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath);
                MailSettingsSectionGroup settings = (MailSettingsSectionGroup)config.GetSectionGroup("system.net/mailSettings");
                string strFrom = settings.Smtp.From;
          
                MailMessage message = new MailMessage();
                message.From = new MailAddress(strFrom);
                message.To.Add(new MailAddress("luhanhc3hcmus@gmail.com"));
                message.Subject = tbSubject.Text;
                message.SubjectEncoding = Encoding.UTF8;
                message.Body = "From: " + strCustomerEmail + "\n" + tbThongTinPhanHoi.Text;
                message.BodyEncoding = Encoding.UTF8;
                message.Priority = MailPriority.High;
                SmtpClient client = new SmtpClient();
                client.EnableSsl = true;
                client.Send(message);
            }
            catch (Exception ex)
            {
                HttpContext.Current.Response.Write(ex.Message);
            }
        }
    }
}