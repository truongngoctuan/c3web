﻿using System;
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

namespace CTLH_C3.TAI_KHOANs
{
    public partial class Edit : CTLH_C3.Core.BasePage
    {
        protected MetaTable table;

        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(DetailsView1);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            table = DetailsDataSource.GetTable();
            Title = table.DisplayName;

        }

        protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            if (e.CommandName == DataControlCommands.CancelCommandName)
            {
                Response.Redirect(table.ListActionPath);
            }
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            if (e.Exception == null || e.ExceptionHandled)
            {
                Response.Redirect(table.ListActionPath);
            }
        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            if (!(e.NewValues["Salt"].Equals(e.OldValues["Salt"])))
                e.Cancel = true;
            else
            {
                if (String.IsNullOrEmpty((string)e.NewValues["Password"]))
                    e.NewValues["Password"] = e.OldValues["Password"];
                else
                    e.NewValues["Password"] = CryptographicHelper.CreatePasswordHash((string)e.NewValues["Password"], (string)e.OldValues["Salt"]);
            }
        }
    }
}