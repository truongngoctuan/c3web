using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BankingClient.BankingService;
using System.ServiceModel;
using System.Net;

namespace BankingClient
{
    public partial class BankingClientForm : Form
    {
        BankingServiceClient client;
        public BankingClientForm()
        {
            InitializeComponent();
            client = new BankingServiceClient();
        }

        private void btSignIn_Click(object sender, EventArgs e)
        {
            string username = tbUsername.Text;
            string password = tbPassword.Text;

            if (client.Login(username, password))
            {
                lbIsAuthenticated.Text = "true";
                GetCurrentMoney();
            }
        }

        private void btSignOut_Click(object sender, EventArgs e)
        {
            try
            {
                client.Logout();
            }
            catch (FaultException ex)
            {
                MessageBox.Show(ex.Message, "Error");
            }
            lbIsAuthenticated.Text = "false";
        }

        private void GetCurrentMoney()
        {
            double money = client.GetCurrentMoney();
            lbCurrentMoney.Text = money.ToString();
        }

        private void btDeposit_Click(object sender, EventArgs e)
        {
            double amount = double.Parse(tbMoney.Text);
            try
            {
                client.Deposit(amount);
                GetCurrentMoney();
            }
            catch (FaultException<FaultMessage> ex)
            {
                MessageBox.Show(ex.Detail.Message, "Error");
            }
        }

        private void btWithdraw_Click(object sender, EventArgs e)
        {
            double amount = double.Parse(tbMoney.Text);
            try
            {
                client.Withdraw(amount);
                GetCurrentMoney();
            }
            catch (FaultException<FaultMessage> ex)
            {
                MessageBox.Show(ex.Detail.Message, "Error");
            }
        }
    }
}
