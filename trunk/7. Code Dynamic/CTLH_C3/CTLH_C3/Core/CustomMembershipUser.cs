using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace CTLH_C3.Core
{
    public class CustomMembershipUser : MembershipUser
    {
        private static DateTime creationDate = DateTime.Today;
        private static DateTime lastLoginDate = DateTime.Today;
        private static DateTime lastActivityDate = DateTime.Today;
        private static DateTime lastPasswordChangedDate = DateTime.Today;
        private static DateTime lastLockedOutDate = DateTime.MinValue;
        private static string providerName = "CustomMembershipProvider";
        private static string passwordQuestion = String.Empty;
        private static string comment = String.Empty;
        private static bool isApproved = true;

        public CustomMembershipUser(string username, int userID, string email, bool isLockedOut)
            : base(providerName, username, userID, email, passwordQuestion, comment, isApproved, isLockedOut, creationDate, lastLoginDate, lastActivityDate, lastPasswordChangedDate, lastLockedOutDate)
        {
        }
    }
}
