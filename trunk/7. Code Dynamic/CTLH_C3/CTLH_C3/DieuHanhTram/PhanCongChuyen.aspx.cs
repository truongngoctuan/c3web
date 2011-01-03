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

namespace CTLH_C3.DieuHanhTram
{
    public partial class PhanCongChuyen : CTLH_C3.Core.BasePage
    {
        protected MetaTable table;
        TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
        public static int iMaChuyenXe;
        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(GridView_CHUYENXE, true /*setSelectionFromUrl*/);
            DynamicDataManager1.RegisterControl(GridView_TAIXE, true /*setSelectionFromUrl*/);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
         
            GridView_CHUYENXE.DataSource = db.ChuyenXeChuaPhanCong();
            GridView_CHUYENXE.DataBind();


        }

        protected void GridView_CHUYENXE_SelectedIndexChanged(object sender, EventArgs e)
        {
            
          
           

            GridViewRow row = GridView_CHUYENXE.SelectedRow;
            iMaChuyenXe = Convert.ToInt32(row.Cells[1].Text);
            GridView_TAIXE.DataSource = db.TaiXePhanCongChuyen(iMaChuyenXe);
            GridView_TAIXE.DataBind();
            int i = 0;
            int j = 0;
            //GridView_CHUYENXE.Rows[iMaChuyenXe].Visible = false;
          
            
        }

        protected void GridView_TAIXE_SelectedIndexChanged(object sender, EventArgs e)
        {
            int iMaTaiXe;
            GridViewRow row = GridView_TAIXE.SelectedRow;
            iMaTaiXe = Convert.ToInt32(row.Cells[1].Text);

            // Cap nhat lai chuyen xe da phan cong
            var chuyenxe = (from x in db.CHUYEN_XEs
                      where x.MaChuyenXe == iMaChuyenXe
                      select x).Single();

            chuyenxe.MaTaiXe = iMaTaiXe;
            db.SubmitChanges();

            //Load lai du lieu
            GridView_CHUYENXE.DataSource = db.ChuyenXeChuaPhanCong();
            GridView_CHUYENXE.DataBind();

            GridView_TAIXE.DataSource = null;
            GridView_TAIXE.DataBind();

        }

      
    }
}
