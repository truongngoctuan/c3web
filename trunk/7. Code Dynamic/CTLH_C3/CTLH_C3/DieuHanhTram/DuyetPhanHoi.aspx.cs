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
    public partial class DuyetPhanHoi : CTLH_C3.Core.BasePage
    {
        protected MetaTable table;
        TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
        public static int iMaPhanHoiKhach;
        protected static DateTime KhoiHanh;
        protected void Page_Init(object sender, EventArgs e)
        {
            DropDownList_TaiXe.DataSource = db.TaiXe();
            DropDownList_TaiXe.DataBind();

        }

        protected void Page_Load(object sender, EventArgs e)
        {


            GridView_PHANHOI.DataBind();
        }

       

       

        protected void Button_Tim_Click(object sender, EventArgs e)
        {
            int iMaTuyenXe = Convert.ToInt32(DropDownList_TuyenXe.SelectedValue);
            DateTime KhoiHanh = Calendar1.SelectedDate;
            int iMaTaiXe = Convert.ToInt32(DropDownList_TaiXe.SelectedValue);
            var cx = db.TimKiemChuyenXe(iMaTuyenXe, iMaTaiXe, KhoiHanh);

            GridView1.DataSource = cx;
            GridView1.DataBind();
        }

        protected void Button_OK_Click(object sender, EventArgs e)
        {
            GridViewRow row;
            bool isChecked;
            int iMaChuyenXe;
            int iSoLuong = GridView1.Rows.Count;
            for (int i = 0; i < iSoLuong; i++)
            {
                row = GridView1.Rows[i];
                isChecked = ((CheckBox)row.FindControl("chkSelect")).Checked;
                if (isChecked)
                {
                    iMaChuyenXe = Convert.ToInt32(row.Cells[1].Text);
                    
                    // Them PhanHoi
                    PHAN_HOI ph = new PHAN_HOI();
                    ph.MaPhanHoiKhach = iMaPhanHoiKhach;
                    ph.MaChuyen = iMaChuyenXe;
                    db.PHAN_HOIs.InsertOnSubmit(ph);
                    db.SubmitChanges();
                    ((CheckBox)row.FindControl("chkSelect")).Checked = false;

                    // Update
                    PHAN_HOI_KHACH_HANG phkh = (from x in db.PHAN_HOI_KHACH_HANGs
                                                where x.MaPhanHoi == iMaPhanHoiKhach
                                                select x).Single();
                    phkh.Duyet = 2;
                    db.SubmitChanges();
                }
            }
            GridView_PHANHOI.DataBind();
        }

        protected void GridView_PHANHOI_SelectedIndexChanged(object sender, EventArgs e)
        {
            iMaPhanHoiKhach = Convert.ToInt32(GridView_PHANHOI.SelectedRow.Cells[3].Text);
        }

        protected void DropDownList_TuyenXe_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
     

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            KhoiHanh = Calendar1.SelectedDate;
        }
     
    }
}
