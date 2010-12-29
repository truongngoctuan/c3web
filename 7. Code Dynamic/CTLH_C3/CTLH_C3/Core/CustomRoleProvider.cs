using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Configuration.Provider;
using CTLH_C3.Core;
using System.Collections.Specialized;

namespace CTLH_C3.Core
{
    public class CustomRoleProvider : RoleProvider
    {
        private string _AppName;
        private string _DatabaseFileName;
        private int _ApplicationId = 0;
        private DateTime _ApplicationIDCacheDate;

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
        public override void Initialize(string name, NameValueCollection config)
        {
            if (config == null)
                throw new ArgumentNullException("config");
            if (String.IsNullOrEmpty(name))
                name = "AccessRoleProvider";
            if (string.IsNullOrEmpty(config["description"]))
            {
                config.Remove("description");
                config.Add("description", "$safeprojectname$ Role Provider");
            }
            base.Initialize(name, config);

            _DatabaseFileName = config["connectionStringName"];
            if (_DatabaseFileName == null || _DatabaseFileName.Length < 1)
                throw new ProviderException("Connection name not specified");

            /*string temp = MyConnectionHelper.GetFileNameFromConnectionName(_DatabaseFileName, true);
            if (temp == null || temp.Length < 1)
            {
                throw new ProviderException("Connection string not found: " + _DatabaseFileName);
            }
            _DatabaseFileName = temp;
            //HandlerBase.CheckAndReadRegistryValue(ref _DatabaseFileName, true);
            MyConnectionHelper.CheckConnectionString(_DatabaseFileName);*/

            _AppName = config["applicationName"];
            if (string.IsNullOrEmpty(_AppName))
                _AppName = ConfigHelper.GetDefaultAppName();

            if (_AppName.Length > 255)
            {
                throw new ProviderException("Provider application name too long, max is 255.");
            }

            config.Remove("connectionStringName");
            config.Remove("applicationName");
            config.Remove("description");
            if (config.Count > 0)
            {
                string attribUnrecognized = config.GetKey(0);
                if (!String.IsNullOrEmpty(attribUnrecognized))
                    throw new ProviderException("Provider unrecognized attribute: " + attribUnrecognized);
            }
        }

        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override void CreateRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            throw new NotImplementedException();
        }

        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            throw new NotImplementedException();
        }

        public override string[] GetAllRoles()
        {
            throw new NotImplementedException();
        }

        //Trả về vai trò và mã nhân viên
        public override string[] GetRolesForUser(string username)
        {
            TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
            var user = from u in dataContext.TAI_KHOANs
                       where u.Username.Equals(username)
                       select u;
            if (user.Count()==1)
            {
                TAI_KHOAN tk = user.Single();

               
                var loaitk = from l in dataContext.LOAI_TAI_KHOANs
                             where l.MaLoaiTaiKhoan == tk.LoaiTaiKhoan
                             select l;
                    if (loaitk.Count() == 1)
                    {
                        LOAI_TAI_KHOAN ltk = loaitk.Single();
                        return new string[] { ltk.TenLoaiTaiKhoan,tk.MaNhanVien.ToString() }; 
                    }
                                                  
            }
            return new string[] {"",""};
        }

        public override string[] GetUsersInRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool IsUserInRole(string username, string roleName)
        {
            throw new NotImplementedException();
        }

        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override bool RoleExists(string roleName)
        {
            throw new NotImplementedException();
        }
    }
}
