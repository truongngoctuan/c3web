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
using CTLH_C3.Core;

namespace CTLH_C3
{
    public partial class DynamicDefault : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Collections.IList visibleTables = MetaModel.Default.VisibleTables;
            if (visibleTables.Count == 0)
            {
                throw new InvalidOperationException("There are no accessible tables. Make sure that at least one data model is registered in Global.asax and scaffolding is enabled or implement custom pages.");
            }
            Menu1.DataSource = visibleTables;
            Menu1.DataBind();
        }

        // It obtains the action path for a custom or standard view.
        // Note the following:
        // a) You must define the related custom view (template) in the
        // DynamicData/PageTemplpates folder.
        // b) You must also define the route in the Gloab.asax file.
        // c) You must apply the SecurityAttribute to the tables you
        // want to display.
        // Inline syntax: 
        // NavigateUrl='<%# ((MetaTable)Page.GetDataItem()).GetActionPath    
        //   "AnonymousList") %>'>
        protected string GetActionPath(string view)
        {
            string actionPath = String.Empty;

            // Instantiate the SecurityInformation 
            // utility object.
            DynamicDataSecurity secInfo =
              new DynamicDataSecurity();

            if (secInfo.IsUserInAdmimistrativeRole() ||
              secInfo.IsUserInAuthenticatedRole())
                actionPath =
                 ((MetaTable)Page.GetDataItem()).GetActionPath(
                 PageAction.List);
            else
                // For non authenticated users allow limited
                // functionality as defined in Global.asax.
                actionPath =
                 ((MetaTable)Page.GetDataItem()).GetActionPath(view);

            return actionPath;
        }
    }
}
