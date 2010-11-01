using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;
using System.Collections.Generic;
using System.IO;

public class ThemeManager
{
    public static List<Theme> GetThemes()
    {
        DirectoryInfo dInfo = new DirectoryInfo(System.Web.HttpContext.Current.Server.MapPath("App_Themes"));
        DirectoryInfo[] dArrInfo = dInfo.GetDirectories();
        List<Theme> themeList = new List<Theme>();

        foreach (DirectoryInfo d in dArrInfo)
        {
            Theme theme = new Theme(d.Name);
            themeList.Add(theme);
        }
        return themeList;
    }
}
