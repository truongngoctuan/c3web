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
    public partial class XeDenTram : System.Web.UI.Page
    {
        protected MetaTable table;
        TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
        public static int iMaChuyenXe;
        protected void Page_Init(object sender, EventArgs e)
        {
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void GridView_DATCHO_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Update lai dat cho
            //int iMaDatCho = Convert.ToInt32(GridView_DATCHO.SelectedRow.Cells[2].Text);
            //var dc = (from x in db.DAT_CHOs where x.MaDatCho == iMaDatCho select x).Single();
            //dc.TinhTrang = 
        }

        protected void DropDownList_DATCHO_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void GridView_DATCHO_PreRender(object sender, EventArgs e)
        {
            
        }

        protected void Button_OK_Click(object sender, EventArgs e)
        {
            GridViewRow row;
            bool isChecked;
            
            int iMaChuyenXe;

            for (int i = 0; i < GridView_CHUYENXE.Rows.Count; i++)
            {
                row = GridView_CHUYENXE.Rows[i];
                iMaChuyenXe = Convert.ToInt32(row.Cells[1].Text);
                var dc = (from x in db.CHUYEN_XEs where x.MaChuyenXe == iMaChuyenXe select x).Single();

                isChecked = ((CheckBox)row.FindControl("chkSelect")).Checked;
                if (isChecked)
                {
                    dc.TinhTrang = 3;
                    dc.ThoiGianDenTram = DateTime.Now;
                }

                db.SubmitChanges();
            }
            GridView_CHUYENXE.DataBind();
        }

        protected void DropDownList_TUYENXE_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView_CHUYENXE.DataBind();
        }


      
       
      
    }
}
