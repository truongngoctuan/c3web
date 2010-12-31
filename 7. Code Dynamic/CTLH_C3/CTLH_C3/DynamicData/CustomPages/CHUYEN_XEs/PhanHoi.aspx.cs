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

namespace CTLH_C3.CHUYEN_XEs
{
    public partial class PhanHoi : System.Web.UI.Page
    {
        protected MetaTable table;
        public int iMaChuyenXe;
        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(GridView1, true /*setSelectionFromUrl*/);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
            table = GridDataSource.GetTable();
            Title = table.DisplayName;

          

            // Disable various options if the table is readonly
            if (table.IsReadOnly)
            {
                GridView1.Columns[0].Visible = false;
               
            }
        }

        protected void OnFilterSelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.PageIndex = 0;
        }

       
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectItem")
            {
                GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];

                iMaChuyenXe = Convert.ToInt32(row.Cells[4].Text);

                TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
                PHAN_HOI_KHACH_HANG phkh = new PHAN_HOI_KHACH_HANG();
                phkh.NgayDang = DateTime.Now;
                phkh.NoiDung = tbThongTinPhanHoi.Text;
                //phkh.Duyet = 2;
                db.PHAN_HOI_KHACH_HANGs.InsertOnSubmit(phkh);
                db.SubmitChanges();

                var x = from y in db.PHAN_HOI_KHACH_HANGs select y.MaPhanHoi;
                PHAN_HOI ph = new PHAN_HOI();
                ph.MaChuyen = iMaChuyenXe;
                ph.MaPhanHoiKhach = x.Max();

                db.PHAN_HOIs.InsertOnSubmit(ph);
                db.SubmitChanges();
                
            }
        }
    }
}
