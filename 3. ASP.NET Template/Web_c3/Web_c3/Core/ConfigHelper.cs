using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections.Specialized;

namespace Web_c3.Core
{
    internal static class ConfigHelper
    {
        internal static string GetDefaultAppName()
        {
            try
            {
                string appName = System.Web.HttpRuntime.AppDomainAppVirtualPath;
                if (appName == null || appName.Length == 0)
                {
                    return "/";
                }
                else
                {
                    return appName;
                }
            }
            catch
            {
                return "/";
            }
        }

        internal static bool GetBooleanValue(NameValueCollection config, string valueName, bool defaultValue)
        {
            string sValue = config[valueName];
            if (sValue == null)
            {
                return defaultValue;
            }

            if (sValue == "true")
            {
                return true;
            }

            if (sValue == "false")
            {
                return false;
            }

            throw new Exception("The value must be a boolean for property '" + valueName + "'");
        }

        internal static int GetIntValue(NameValueCollection config, string valueName, int defaultValue, bool zeroAllowed, int maxValueAllowed)
        {
            string sValue = config[valueName];

            if (sValue == null)
            {
                return defaultValue;
            }

            int iValue;
            try
            {
                //iValue = Convert.ToInt32(sValue, CultureInfo.InvariantCulture);
                iValue = Convert.ToInt32(sValue);
            }
            catch (InvalidCastException e)
            {
                if (zeroAllowed)
                {
                    throw new Exception("The value must be a positive integer for property '" + valueName + "'", e);
                }

                throw new Exception("The value must be a positive integer for property '" + valueName + "'", e);
            }

            if (zeroAllowed && iValue < 0)
            {
                throw new Exception("The value must be a non-negative integer for property '" + valueName + "'");
            }

            if (!zeroAllowed && iValue <= 0)
            {
                throw new Exception("The value must be a non-negative integer for property '" + valueName + "'");
            }

            if (maxValueAllowed > 0 && iValue > maxValueAllowed)
            {
                //throw new Exception("The value is too big for '" + valueName + "' must be smaller than " + maxValueAllowed.ToString(CultureInfo.InvariantCulture));
                throw new Exception("The value is too big for '" + valueName + "' must be smaller than " + maxValueAllowed.ToString());
            }

            return iValue;
        }
    }
}
