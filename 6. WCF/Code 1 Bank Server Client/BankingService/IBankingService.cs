using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Security.Permissions;

namespace BankingService
{
    // NOTE: If you change the interface name "IService1" here, you must also update the reference to "IService1" in Web.config.
    [ServiceContract(SessionMode = SessionMode.Required)]
    public interface IBankingService
    {
        [OperationContract]
        bool Login(string username, string password);

        [OperationContract]
        [PrincipalPermission(SecurityAction.Demand, Authenticated = true)]
        void Logout();

        [OperationContract]
        //[PrincipalPermission(SecurityAction.Demand, Authenticated = true)]
        double GetCurrentMoney();

        [OperationContract]
        [FaultContract(typeof(FaultMessage))]
        //[PrincipalPermission(SecurityAction.Demand, Authenticated=true)]
        bool Deposit(double value);

        [OperationContract]
        [FaultContract(typeof(FaultMessage))]
        //[PrincipalPermission(SecurityAction.Demand, Authenticated = true)]
        bool Withdraw(double value);

        // TODO: Add your service operations here
    }


    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    [DataContract]
    public class Account
    {
        [DataMember]
        public int AccountID { get; set; }

        [DataMember]
        public string Owner { get; set; }

        [DataMember]
        public double Money { get; set; }
    }

    [DataContract]
    public struct FaultMessage
    {
        [DataMember]
        public string Message { get; set; }
    }
}
