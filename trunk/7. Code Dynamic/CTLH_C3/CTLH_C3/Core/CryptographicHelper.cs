using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Web.Security;

namespace CTLH_C3.Core
{
    public class CryptographicHelper
    {
        public static string CreateSalt()
        {
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            byte[] buff = new byte[32];
            rng.GetBytes(buff);

            return Convert.ToBase64String(buff);
        }
        public static string CreatePasswordHash(string pwd, string salt)
        {
            string saltAndPwd = String.Concat(pwd, salt);
            string hashedPwd =
                    FormsAuthentication.HashPasswordForStoringInConfigFile(
                    saltAndPwd, Membership.HashAlgorithmType);
            return hashedPwd;
        }
        public static string GenerateKey()
        {
            Guid key = Guid.NewGuid();
            return key.ToString();
        }

        public static void ConvertPlainPasswordToHashPasswordInAllUsers()
        {
            TRAVEL_WEBDataContext datacontext = new TRAVEL_WEBDataContext();
            var taikhoans = from t in datacontext.TAI_KHOANs select t;
            foreach (TAI_KHOAN tk in taikhoans)
            {
                tk.Salt = CryptographicHelper.CreateSalt();
                if (String.IsNullOrEmpty(tk.Password))
                    tk.Password = Membership.GeneratePassword(10, 3);
                tk.Password = CryptographicHelper.CreatePasswordHash(tk.Password, tk.Salt);
            }
            datacontext.SubmitChanges();
        }
    }
}
