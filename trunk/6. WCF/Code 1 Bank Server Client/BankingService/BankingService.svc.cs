using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Web.Security;
using System.Runtime.Remoting.Contexts;

namespace BankingService
{
    // NOTE: If you change the class name "Service1" here, you must also update the reference to "Service1" in Web.config and in the associated .svc file.
    [ServiceBehaviorAttribute(InstanceContextMode = InstanceContextMode.PerSession)]
    public class BankingService : IBankingService
    {
        List<Account> listAccount;
        
        public BankingService()
        {
            listAccount = new List<Account> {
               new Account { AccountID = 0, Owner = "Trần Văn Anh", Money = 30 },
               new Account { AccountID = 1, Owner = "Lý Đào", Money = 35 },
               new Account { AccountID = 2, Owner = "Hoàng Văn Giáp", Money = 28 },
               new Account { AccountID = 3, Owner = "Nguyễn Quang Cường", Money = 25 },
               new Account { AccountID = 4, Owner = "Lê Thị Bảo", Money = 31 },
            };
        }

        #region IBankingService Members
        public bool Login(string username, string password)
        {
            //if (Membership.ValidateUser(username, password))
            {
                //FormsAuthentication.SetAuthCookie(username, true);
                return true;
            }
            //return false;
        }

        public void Logout()
        {
            //if (Context.User.Identity.IsAuthenticated)
            {
                //FormsAuthentication.SignOut();
            }
        }

        public double GetCurrentMoney()
        {
            return listAccount[0].Money;
        }

        public bool Deposit(double value)
        {
            if (value < 0)
            {
                var error = new FaultMessage { Message = "Số tiền nạp vào phải lớn hơn 0"};
                throw new FaultException<FaultMessage>(error); 
            }
            else
                listAccount[0].Money += value;
            return true;
        }

        public bool Withdraw(double value)
        {
            if (value < 0)
            {
                var error = new FaultMessage { Message = "Số tiền rút ra phải lớn hơn 0" };
                throw new FaultException<FaultMessage>(error);
            }
            else if (value > listAccount[0].Money)
            {
                var error = new FaultMessage { Message = "Số tiền rút ra không được lớn hơn số tiền trong tài khoản hiện tại: " + listAccount[0].Money};
                throw new FaultException<FaultMessage>(error);
            }
            else
                listAccount[0].Money -= value;
            return true;
        }
        #endregion
    }
}
