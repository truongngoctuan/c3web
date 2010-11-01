using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_c3
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ThemeList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("Theme", ThemeList.SelectedValue);
            Server.Transfer(Request.FilePath);
        }

        protected void ThemeList_DataBound(object sender, EventArgs e)
        {
            ThemeList.SelectedValue = Page.Theme;
        }
    }
}
