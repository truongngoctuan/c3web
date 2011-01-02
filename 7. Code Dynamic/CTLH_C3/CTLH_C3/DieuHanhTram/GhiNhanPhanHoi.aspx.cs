using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTLH_C3.DieuHanhTram
{
    public partial class GhiNhanPhanHoi : CTLH_C3.Core.BasePage
    {
        protected static TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
        protected static DateTime KhoiHanh;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            DropDownList_TaiXe.DataSource = db.TaiXe();
            DropDownList_TaiXe.DataBind();

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void GridDataSource_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            

        }

        protected void DropDownList_TuyenXe_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();
            
        }

        protected void DropDownList_KhoiHanh_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button_Tim_Click(object sender, EventArgs e)
        {
            int iMaTuyenXe = Convert.ToInt32(DropDownList_TuyenXe.SelectedValue);
            
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
            for (int i = 0; i < iSoLuong; i++ )
            {
                row = GridView1.Rows[i];
                isChecked= ((CheckBox)row.FindControl("chkSelect")).Checked;
                if(isChecked)
                {
                     iMaChuyenXe = Convert.ToInt32(row.Cells[1].Text);
                    // Them o PHANHOIKHACHHANG
                    PHAN_HOI_KHACH_HANG phkh = new PHAN_HOI_KHACH_HANG();
                    phkh.NoiDung = TextBox1.Text;
                    phkh.NgayDang = DateTime.Now;
                    phkh.Duyet = 2; // da duyet
                    db.PHAN_HOI_KHACH_HANGs.InsertOnSubmit(phkh);
                    db.SubmitChanges();

                    // Them PhanHoi
                    PHAN_HOI ph = new PHAN_HOI();
                    ph.MaPhanHoiKhach = phkh.MaPhanHoi;
                    ph.MaChuyen = iMaChuyenXe;
                    db.PHAN_HOIs.InsertOnSubmit(ph);
                    db.SubmitChanges();
                    ((CheckBox)row.FindControl("chkSelect")).Checked = false;
                }
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            KhoiHanh = Calendar1.SelectedDate;
        }
    }
}
