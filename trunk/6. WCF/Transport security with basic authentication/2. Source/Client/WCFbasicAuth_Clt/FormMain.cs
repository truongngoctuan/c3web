using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Net;

using System.ServiceModel;
using System.ServiceModel.Security;

namespace WCFbasicAuth_Clt
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            WCFbasicAuthentication.ServiceClient svcClient = new WCFbasicAuthentication.ServiceClient();

            svcClient.ClientCredentials.UserName.UserName = tbxUsername.Text;
            svcClient.ClientCredentials.UserName.Password = tbxPassword.Text;

            try
            {
                tbxRespond.Text +=">> "+ svcClient.GetData(int.Parse(tbxValue.Text)) + Environment.NewLine;
            }
            catch (ArgumentException ae)
            {
                tbxRespond.Text +=">> "+ ae.Message + Environment.NewLine;
            }
            catch (WebException we)
            {
                tbxRespond.Text +=">> "+ we.Message + Environment.NewLine;
            }
            catch (MessageSecurityException mse)
            {
                tbxRespond.Text +=">> "+ mse.Message + Environment.NewLine;
            }
            catch (FormatException fe)
            {
                tbxRespond.Text +=">> "+ fe.Message + Environment.NewLine;
            }
        }
    }
}
