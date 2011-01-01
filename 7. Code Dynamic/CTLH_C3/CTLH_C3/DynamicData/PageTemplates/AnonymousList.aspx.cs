﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;

namespace CTLH_C3
{
    public partial class AnonymousList : System.Web.UI.Page
    {
        protected MetaTable table;

        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(GridView1);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            table = GridDataSource.GetTable();
            Title = table.DisplayName;

            // InsertHyperLink.NavigateUrl = table.GetActionPath(PageAction.Insert, null);

            // Disable various options if the table is readonly
            if (table.IsReadOnly)
            {
                GridView1.Columns.RemoveAt(0);
                // InsertHyperLink.Visible = false;
            }
        }

        protected void OnFilterSelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.PageIndex = 0;
        }
    }
}
