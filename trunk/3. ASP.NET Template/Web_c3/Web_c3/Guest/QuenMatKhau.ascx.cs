using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Web_c3.Guest
{
    public partial class QuenMatKhau : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
        {
            SmtpClient smtpSender = new SmtpClient();
            smtpSender.EnableSsl = true;
            smtpSender.Send(e.Message);
            e.Cancel = true;
        }
    }
}