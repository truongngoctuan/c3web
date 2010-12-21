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

namespace CTLH_C3.NHAN_VIENs
{
    public partial class ListDetails : System.Web.UI.Page
    {      
        protected void LinqDataSource2_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
            e.Result = context.GetAllNhanViensAndLoaiNhanVien();
            //e.Result = context.GetAllNhanViens();
            //e.Cancel = true;
        }
    }
}
