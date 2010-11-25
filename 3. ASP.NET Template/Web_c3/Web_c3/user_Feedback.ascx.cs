using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;

namespace Web_c3
{
    public partial class user_Feedback : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string strEmail = tbEmail.Text;
                string strPass = tbPassword.Text;
                string strReceive = tbReceiveEmail.Text;
                MailMessage message = new MailMessage();
                message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "smtp.gmail.com");
                message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", "465");
                message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", "2");
                message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
                //Use 0 for anonymous
                message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", strEmail);
                message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", strPass);
                message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", "true");
                message.To = strReceive;
                message.From = "C3HCMUS@hcmus.edu.vn";
                message.Subject = tbSubject.Text;
                message.BodyFormat = MailFormat.Text;
                message.Body = tbThongTinPhanHoi.Text;
                SmtpMail.SmtpServer = "smtp.gmail.com:465";
                SmtpMail.Send(message);
            }
            catch (Exception ex)
            {
            }
        }
    }
}