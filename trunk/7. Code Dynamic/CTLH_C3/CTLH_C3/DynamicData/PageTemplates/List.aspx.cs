using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.DynamicData;

namespace CTLH_C3
{
    public partial class List : System.Web.UI.Page
    {
        protected MetaTable table;

        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(GridView1, true /*setSelectionFromUrl*/);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            table = GridDataSource.GetTable();
            Title = table.DisplayName;

            InsertHyperLink.NavigateUrl = table.GetActionPath(PageAction.Insert);

            // Disable various options if the table is readonly
            if (table.IsReadOnly)
            {
                GridView1.Columns[0].Visible = false;
                InsertHyperLink.Visible = false;
            }
            // Add handler to manage delete button based on role.
            //GridView1.PreRender += new EventHandler(GridView1_PreRender);
        }

        protected void OnFilterSelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.PageIndex = 0;
        }

        void GridView1_PreRender(object sender, EventArgs e)
        {
            int rowCount = GridView1.Rows.Count;
            for (int row = 0; row < GridView1.Rows.Count; row++)
            {
                SetDelete(GridView1.Rows[row]);
            }
        }

        // Enable delete button only to allowed users.
        private void SetDelete(TableRow row)
        {
            // Instantiate the SecurityInformation 
            // utility object.
            DynamicDataSecurity secInfo =
              new DynamicDataSecurity();

            foreach (Control c in row.Cells[0].Controls)
            {
                // Deny delete capability to users that are 
                // not administrators
                if (!secInfo.IsUserInAdmimistrativeRole() &&
                  secInfo.IsUserInAuthenticatedRole())
                {
                    // Do not allow delete.
                    LinkButton btn = c as LinkButton;
                    if (btn != null &&
                        btn.CommandName ==
                        DataControlCommands.DeleteCommandName)
                    {
                        btn.Visible = false;
                        btn.OnClientClick = null;
                        btn.Enabled = false;
                    }
                }
            }
        }
    }
}
