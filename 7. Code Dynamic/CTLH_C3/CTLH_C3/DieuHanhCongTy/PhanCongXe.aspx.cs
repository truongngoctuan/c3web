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

namespace CTLH_C3.DieuHanhCongTy
{
    public partial class List : CTLH_C3.Core.BasePage
    {
        protected MetaTable table;
        TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
        public static int iMaXe;
        protected void Page_Init(object sender, EventArgs e)
        {
          
            DynamicDataManager1.RegisterControl(GridView_TAIXE, true /*setSelectionFromUrl*/);
            GridView_XE.DataSource = db.XeChuaPhanCong();
            GridView_XE.DataBind();

        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
            

        }

        protected void GridView_XE_SelectedIndexChanged(object sender, EventArgs e)
        {
           

            GridView_TAIXE.DataSource = db.TaiXeChuaPhanCong();
            GridView_TAIXE.DataBind();

            GridViewRow row = GridView_XE.SelectedRow;
            iMaXe = Convert.ToInt32(row.Cells[1].Text);
            
        }

        protected void GridView_TAIXE_SelectedIndexChanged(object sender, EventArgs e)
        {
            int iMaTaiXe;
            GridViewRow row = GridView_TAIXE.SelectedRow;
            iMaTaiXe = Convert.ToInt32(row.Cells[1].Text);

            var xe = (from x in db.XEs
                           where x.MaXe == iMaXe
                           select x).Single();
            
            xe.MaTaiXe = iMaTaiXe;
            db.SubmitChanges();
            GridView_XE.DataBind();
            GridView_TAIXE.DataBind();

        }

      
    }
}
