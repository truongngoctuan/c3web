using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Net;
using System.IO;
using System.Xml.Linq;
using System.Web.DynamicData;

namespace CTLH_C3
{
    public partial class Default : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Load dữ liệu
            System.Collections.IList visibleTables = MetaModel.Default.VisibleTables;
            if (visibleTables.Count == 0)
            {
                throw new InvalidOperationException("There are no accessible tables. Make sure that at least one data model is registered in Global.asax and scaffolding is enabled or implement custom pages.");
            }
            
            //Menu1.DataSource = visibleTables;
            //Menu1.DataBind();

        }

        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
            //AddScript(new string[] { "InitCheckBox();","initDropDownList();"});
        }
    }
}
