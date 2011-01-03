using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTLH_C3.Core;
using System.Web.DynamicData;

namespace CTLH_C3.DieuHanhTram
{
    public partial class Default : BasePage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(GridView1, false);
            DynamicDataManager1.RegisterControl(GridView2, false);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Load dữ liệu cho cho toàn site
            System.Collections.IList visibleTables = MetaModel.Default.VisibleTables;
            if (visibleTables.Count == 0)
            {
                throw new InvalidOperationException("There are no accessible tables. Make sure that at least one data model is registered in Global.asax and scaffolding is enabled or implement custom pages.");
            }

            GridView2.Visible = false;
        }

        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
            //AddScript(new string[] { "InitCheckBox();","initDropDownList();"});
        }

        protected void OnFilterSelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.PageIndex = 0;
            GridView2.Visible = false;
        }

        protected void Close_Click(object sender, EventArgs e)
        {
            btnClose.Visible = false;
            user_GioiThieu1.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.Visible = true;
        }

        protected void ldsTram_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {

        }
    }
}
