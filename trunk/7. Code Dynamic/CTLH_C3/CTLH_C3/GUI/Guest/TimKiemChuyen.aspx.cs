using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTLH_C3.GUI.Guest
{
    public partial class TimKiemChuyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AdvanceSearchRegion.Visible = !AdvanceSearchRegion.Visible;
        }
    }
}
