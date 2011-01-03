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
    public partial class QuanLyVe : CTLH_C3.Core.BasePage
    {
        protected MetaTable table;
        TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
        public static int iMaChuyenXe;
        protected void Page_Init(object sender, EventArgs e)
        {
            HienThi();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }

        protected void GridView_DATCHO_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Update lai dat cho
            int iMaDatCho = Convert.ToInt32(GridView_DATCHO.SelectedRow.Cells[2].Text);
            var dc = (from x in db.DAT_CHOs where x.MaDatCho == iMaDatCho select x).Single();
            //dc.TinhTrang = 
        }

        protected void DropDownList_DATCHO_SelectedIndexChanged(object sender, EventArgs e)
        {
            HienThi();
        }

        protected void GridView_DATCHO_PreRender(object sender, EventArgs e)
        {
            HienThi();
        }

        protected void Button_OK_Click(object sender, EventArgs e)
        {
            GridViewRow row;
            bool isCheckedDatCho;
            bool isCheckedBanVe;
            int iMaDatCho;
          
            for(int i = 0; i < GridView_DATCHO.Rows.Count;i++)
            {
                row = GridView_DATCHO.Rows[i];
                iMaDatCho = Convert.ToInt32(row.Cells[3].Text);
                var dc = (from x in db.DAT_CHOs where x.MaDatCho == iMaDatCho select x).Single();
       
                isCheckedDatCho = ((CheckBox)row.FindControl("chkSelect_DatCho")).Checked;
                if(isCheckedDatCho)
                {
                    dc.TinhTrang = 2;
                }

                isCheckedBanVe = ((CheckBox)row.FindControl("chkSelect_BanVe")).Checked;
                if (isCheckedBanVe)
                {
                    dc.TinhTrang = 3;
                }
                db.SubmitChanges();
            }
            GridView_DATCHO.DataBind();
        }


        protected void HienThi()
        {
            if (DropDownList_DATCHO.SelectedIndex == 0)
            {
                GridView_DATCHO.Columns[0].Visible = true;
                GridView_DATCHO.Columns[1].Visible = true;
            }
            if (DropDownList_DATCHO.SelectedIndex > 0)
            {
                GridView_DATCHO.Columns[0].Visible = false;
            }
            if (DropDownList_DATCHO.SelectedIndex > 1)
            {
                GridView_DATCHO.Columns[1].Visible = false;
            }
        }
       
      
    }
}
