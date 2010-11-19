namespace BankingClient
{
    partial class BankingClientForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tbUsername = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tbPassword = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.lbIsAuthenticated = new System.Windows.Forms.Label();
            this.btSignIn = new System.Windows.Forms.Button();
            this.btSignOut = new System.Windows.Forms.Button();
            this.btDeposit = new System.Windows.Forms.Button();
            this.btWithdraw = new System.Windows.Forms.Button();
            this.tbMoney = new System.Windows.Forms.TextBox();
            this.lbCurrentMoney = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // tbUsername
            // 
            this.tbUsername.Location = new System.Drawing.Point(96, 20);
            this.tbUsername.Name = "tbUsername";
            this.tbUsername.Size = new System.Drawing.Size(100, 20);
            this.tbUsername.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(31, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(61, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Username :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(31, 47);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Password :";
            // 
            // tbPassword
            // 
            this.tbPassword.Location = new System.Drawing.Point(96, 44);
            this.tbPassword.Name = "tbPassword";
            this.tbPassword.Size = new System.Drawing.Size(100, 20);
            this.tbPassword.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(34, 76);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(87, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "IsAuthenticated :";
            // 
            // lbIsAuthenticated
            // 
            this.lbIsAuthenticated.AutoSize = true;
            this.lbIsAuthenticated.Location = new System.Drawing.Point(128, 76);
            this.lbIsAuthenticated.Name = "lbIsAuthenticated";
            this.lbIsAuthenticated.Size = new System.Drawing.Size(29, 13);
            this.lbIsAuthenticated.TabIndex = 5;
            this.lbIsAuthenticated.Text = "false";
            // 
            // btSignIn
            // 
            this.btSignIn.Location = new System.Drawing.Point(46, 108);
            this.btSignIn.Name = "btSignIn";
            this.btSignIn.Size = new System.Drawing.Size(75, 23);
            this.btSignIn.TabIndex = 6;
            this.btSignIn.Text = "Sign In";
            this.btSignIn.UseVisualStyleBackColor = true;
            this.btSignIn.Click += new System.EventHandler(this.btSignIn_Click);
            // 
            // btSignOut
            // 
            this.btSignOut.Location = new System.Drawing.Point(156, 108);
            this.btSignOut.Name = "btSignOut";
            this.btSignOut.Size = new System.Drawing.Size(75, 23);
            this.btSignOut.TabIndex = 7;
            this.btSignOut.Text = "Sign Out";
            this.btSignOut.UseVisualStyleBackColor = true;
            this.btSignOut.Click += new System.EventHandler(this.btSignOut_Click);
            // 
            // btDeposit
            // 
            this.btDeposit.Location = new System.Drawing.Point(156, 152);
            this.btDeposit.Name = "btDeposit";
            this.btDeposit.Size = new System.Drawing.Size(75, 23);
            this.btDeposit.TabIndex = 8;
            this.btDeposit.Text = "Deposit";
            this.btDeposit.UseVisualStyleBackColor = true;
            this.btDeposit.Click += new System.EventHandler(this.btDeposit_Click);
            // 
            // btWithdraw
            // 
            this.btWithdraw.Location = new System.Drawing.Point(156, 182);
            this.btWithdraw.Name = "btWithdraw";
            this.btWithdraw.Size = new System.Drawing.Size(75, 23);
            this.btWithdraw.TabIndex = 9;
            this.btWithdraw.Text = "Withdraw";
            this.btWithdraw.UseVisualStyleBackColor = true;
            this.btWithdraw.Click += new System.EventHandler(this.btWithdraw_Click);
            // 
            // tbMoney
            // 
            this.tbMoney.Location = new System.Drawing.Point(46, 168);
            this.tbMoney.Name = "tbMoney";
            this.tbMoney.Size = new System.Drawing.Size(100, 20);
            this.tbMoney.TabIndex = 10;
            // 
            // lbCurrentMoney
            // 
            this.lbCurrentMoney.AutoSize = true;
            this.lbCurrentMoney.Location = new System.Drawing.Point(108, 218);
            this.lbCurrentMoney.Name = "lbCurrentMoney";
            this.lbCurrentMoney.Size = new System.Drawing.Size(13, 13);
            this.lbCurrentMoney.TabIndex = 11;
            this.lbCurrentMoney.Text = "0";
            // 
            // BankingClient
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 262);
            this.Controls.Add(this.lbCurrentMoney);
            this.Controls.Add(this.tbMoney);
            this.Controls.Add(this.btWithdraw);
            this.Controls.Add(this.btDeposit);
            this.Controls.Add(this.btSignOut);
            this.Controls.Add(this.btSignIn);
            this.Controls.Add(this.lbIsAuthenticated);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.tbPassword);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tbUsername);
            this.Name = "BankingClient";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tbUsername;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tbPassword;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label lbIsAuthenticated;
        private System.Windows.Forms.Button btSignIn;
        private System.Windows.Forms.Button btSignOut;
        private System.Windows.Forms.Button btDeposit;
        private System.Windows.Forms.Button btWithdraw;
        private System.Windows.Forms.TextBox tbMoney;
        private System.Windows.Forms.Label lbCurrentMoney;
    }
}

