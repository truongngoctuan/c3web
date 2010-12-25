using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using CTLH_C3.Core;
using System.Text.RegularExpressions;
using System.Configuration.Provider;

namespace CTLH_C3.Core
{
    public class CustomMembershipProvider : MembershipProvider
    {
        string strTempPass = "123";

        private bool _EnablePasswordRetrieval;
        private bool _EnablePasswordReset;
        private bool _RequiresQuestionAndAnswer;
        private string _AppName;
        private bool _RequiresUniqueEmail;
        private string _DatabaseFileName;
        private string _HashAlgorithmType;
        private int _ApplicationId = 0;
        private int _MaxInvalidPasswordAttempts;
        private int _PasswordAttemptWindow;
        private int _MinRequiredPasswordLength;
        private int _MinRequiredNonalphanumericCharacters;
        private string _PasswordStrengthRegularExpression;
        private DateTime _ApplicationIDCacheDate;
        private MembershipPasswordFormat _PasswordFormat;

        public override bool EnablePasswordRetrieval { get { return _EnablePasswordRetrieval; } }
        public override bool EnablePasswordReset { get { return _EnablePasswordReset; } }
        public override bool RequiresQuestionAndAnswer { get { return _RequiresQuestionAndAnswer; } }
        public override bool RequiresUniqueEmail { get { return _RequiresUniqueEmail; } }
        public override MembershipPasswordFormat PasswordFormat { get { return _PasswordFormat; } }
        public override int MaxInvalidPasswordAttempts { get { return _MaxInvalidPasswordAttempts; } }
        public override int PasswordAttemptWindow { get { return _PasswordAttemptWindow; } }
        public override int MinRequiredPasswordLength { get { return _MinRequiredPasswordLength; } }
        public override int MinRequiredNonAlphanumericCharacters { get { return _MinRequiredNonalphanumericCharacters; } }
        public override string PasswordStrengthRegularExpression { get { return _PasswordStrengthRegularExpression; } }
        public override string ApplicationName
        {
            get { return _AppName; }
            set
            {
                if (_AppName != value)
                {
                    _ApplicationId = 0;
                    _AppName = value;
                }
            }
        }


        public override void Initialize(string name, System.Collections.Specialized.NameValueCollection config)
        {
            if (config == null)
                throw new ArgumentNullException("config");
            if (String.IsNullOrEmpty(name))
                name = "AccessMembershipProvider";
            if (string.IsNullOrEmpty(config["description"]))
            {
                config.Remove("description");
                config.Add("description", "Membership $safeprojectname$ Provider");
            }
            base.Initialize(name, config);

            _EnablePasswordRetrieval = ConfigHelper.GetBooleanValue(config, "enablePasswordRetrieval", false);
            _EnablePasswordReset = ConfigHelper.GetBooleanValue(config, "enablePasswordReset", true);
            _RequiresQuestionAndAnswer = ConfigHelper.GetBooleanValue(config, "requiresQuestionAndAnswer", false);
            _RequiresUniqueEmail = ConfigHelper.GetBooleanValue(config, "requiresUniqueEmail", false);
            _MaxInvalidPasswordAttempts = ConfigHelper.GetIntValue(config, "maxInvalidPasswordAttempts", 5, false, 0);
            _PasswordAttemptWindow = ConfigHelper.GetIntValue(config, "passwordAttemptWindow", 10, false, 0);
            _MinRequiredPasswordLength = ConfigHelper.GetIntValue(config, "minRequiredPasswordLength", 7, false, 128);
            _MinRequiredNonalphanumericCharacters = ConfigHelper.GetIntValue(config, "minRequiredNonalphanumericCharacters", 1, true, 128);

            _HashAlgorithmType = config["hashAlgorithmType"];
            if (String.IsNullOrEmpty(_HashAlgorithmType))
            {
                _HashAlgorithmType = "MD5";
            }

            _PasswordStrengthRegularExpression = config["passwordStrengthRegularExpression"];
            if (_PasswordStrengthRegularExpression != null)
            {
                _PasswordStrengthRegularExpression = _PasswordStrengthRegularExpression.Trim();
                if (_PasswordStrengthRegularExpression.Length != 0)
                {
                    try
                    {
                        Regex regex = new Regex(_PasswordStrengthRegularExpression);
                    }
                    catch (ArgumentException e)
                    {
                        throw new ProviderException(e.Message, e);
                    }
                }
            }
            else
            {
                _PasswordStrengthRegularExpression = string.Empty;
            }

            _AppName = config["applicationName"];
            if (string.IsNullOrEmpty(_AppName))
                _AppName = ConfigHelper.GetDefaultAppName();

            if (_AppName.Length > 255)
            {
                throw new ProviderException("Provider application name is too long, max length is 255.");
            }

            string strTemp = config["passwordFormat"];
            if (strTemp == null)
                strTemp = "Hashed";

            switch (strTemp)
            {
                case "Clear":
                    _PasswordFormat = MembershipPasswordFormat.Clear;
                    break;
                case "Encrypted":
                    _PasswordFormat = MembershipPasswordFormat.Encrypted;
                    break;
                case "Hashed":
                    _PasswordFormat = MembershipPasswordFormat.Hashed;
                    break;
                default:
                    throw new ProviderException("Bad password format");
            }

            if (_PasswordFormat == MembershipPasswordFormat.Hashed && _EnablePasswordRetrieval)
                throw new ProviderException("Provider cannot retrieve hashed password");

            _DatabaseFileName = config["connectionStringName"];
            if (_DatabaseFileName == null || _DatabaseFileName.Length < 1)
                throw new ProviderException("Connection name not specified");
            /*
            string temp = MyConnectionHelper.GetFileNameFromConnectionName(_DatabaseFileName, true);
            if (temp == null || temp.Length < 1)
                throw new ProviderException("Connection string not found: " + _DatabaseFileName);
            _DatabaseFileName = temp;

            // Make sure connection is good
            MyConnectionHelper.CheckConnectionString(_DatabaseFileName);*/

            config.Remove("connectionStringName");
            config.Remove("enablePasswordRetrieval");
            config.Remove("enablePasswordReset");
            config.Remove("requiresQuestionAndAnswer");
            config.Remove("applicationName");
            config.Remove("requiresUniqueEmail");
            config.Remove("maxInvalidPasswordAttempts");
            config.Remove("passwordAttemptWindow");
            config.Remove("passwordFormat");
            config.Remove("name");
            config.Remove("description");
            config.Remove("minRequiredPasswordLength");
            config.Remove("minRequiredNonalphanumericCharacters");
            config.Remove("passwordStrengthRegularExpression");
            config.Remove("hashAlgorithmType");
            if (config.Count > 0)
            {
                string attribUnrecognized = config.GetKey(0);
                if (!String.IsNullOrEmpty(attribUnrecognized))
                    throw new ProviderException("Provider unrecognized attribute: " + attribUnrecognized);
            }
        }
        
        public override bool ChangePassword(string username, string oldPassword, string newPassword)
        {
            if (username == "demo" && oldPassword == strTempPass)
            {
                strTempPass = newPassword;
                return true;
            }
            return false;
            //throw new NotImplementedException();
        }

        public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
        {
            throw new NotImplementedException();
        }

        public override MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteUser(string username, bool deleteAllRelatedData)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override int GetNumberOfUsersOnline()
        {
            throw new NotImplementedException();
        }

        public override string GetPassword(string username, string answer)
        {
            throw new NotImplementedException();
        }

        public override MembershipUser GetUser(string username, bool userIsOnline)
        {
            int userID = 1;
            string email = "luhanhc3hcmus@gmail.com";
            bool isLockedOut = false;
            return new CustomMembershipUser(username, userID, email, isLockedOut);
            //throw new NotImplementedException();
        }

        public override MembershipUser GetUser(object providerUserKey, bool userIsOnline)
        {
            throw new NotImplementedException();
        }

        public override string GetUserNameByEmail(string email)
        {
            throw new NotImplementedException();
        }

        public override string ResetPassword(string username, string answer)
        {
            throw new NotImplementedException();
        }

        public override bool UnlockUser(string userName)
        {
            throw new NotImplementedException();
        }

        public override void UpdateUser(MembershipUser user)
        {
            throw new NotImplementedException();
        }

        public override bool ValidateUser(string username, string password)
        {
            if (username == "demo" && password == strTempPass)
                return true;

            TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
            var user = from u in dataContext.TAI_KHOANs
                       where u.Username == username
                       select u;

            if (user.Count() == 1)
            {
                TAI_KHOAN tk = user.Single();
                if (tk.Password.Equals(password))
                    return true;
                else
                    return false;
            }
            return false;            
        }
    }
}
