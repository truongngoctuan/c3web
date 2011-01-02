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
    public partial class PhatSinhChuyenTuDong : System.Web.UI.Page
    {
        protected MetaTable table;
        TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
 
        public static int iMaTuyenXe;
        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(GridView_TUYENXE, true /*setSelectionFromUrl*/);
            DynamicDataManager1.RegisterControl(GridView_CHUYENXE, true /*setSelectionFromUrl*/);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
          
            // Ẩn những tuyến đã có chuyến ngày hôm sau
            for (int i = 0; i < GridView_TUYENXE.Rows.Count; i++)
            {
                GridViewRow row = GridView_TUYENXE.Rows[i];
                iMaTuyenXe = Convert.ToInt32(row.Cells[1].Text);
                var chuyenxe = (from x in db.CHUYEN_XEs
                                where x.MaTuyenXe == iMaTuyenXe && x.KhoiHanh > DateTime.Now
                                select x);
                if(chuyenxe.Count<CHUYEN_XE>() > 0)
                {
                    GridView_TUYENXE.Rows[i].Visible = false;
                }
               

            }
        }

        protected void GridView_TUYENXE_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Insert nhung chuyen moi dua theo tuyen da chon
            // Ngay mai
            DateTime ngaymai = DateTime.Now;
            ngaymai = ngaymai.AddDays(1);

            GridViewRow row = GridView_TUYENXE.SelectedRow;
            iMaTuyenXe = Convert.ToInt32(row.Cells[1].Text);
            var tuyenxe = (from x in db.TUYEN_XEs
                           where x.MaTuyenXe == iMaTuyenXe
                           select x).Single();
            CHUYEN_XE cx;
            int iMaChuyenXe;
            DAT_CHO dc;
            DateTime KhoiHanh;
            int i;
           
            // Chuyen dau tien
            cx = new CHUYEN_XE();
            // Tinh thoi gian khoi hanh
            KhoiHanh = ngaymai;
            KhoiHanh = KhoiHanh.AddHours((double)tuyenxe.ThoiGianBatDau);
            cx.KhoiHanh = KhoiHanh;
            cx.MaTuyenXe = iMaTuyenXe;
            cx.TinhTrang = 1;// Chua khoi hanh
            cx.DuKienDen = KhoiHanh.AddHours((double)tuyenxe.ThoiGianDi);
            cx.LuongTaiXe = (float)tuyenxe.LuongTaiXe;
            cx.GiaVe = (float)tuyenxe.GiaVe;
            cx.SoLuongMuaVe = 0; // So luong mua ve ban dau
            db.CHUYEN_XEs.InsertOnSubmit(cx);
            db.SubmitChanges();

            // Lay ma chuyen vua insert
            iMaChuyenXe = (from y in db.CHUYEN_XEs
                           select y.MaChuyenXe).Max();
            // Insert DAT_CHO
            // Lay tat ca cho ngoi
            var listChoNgoi = (from cn in db.CHO_NGOIs
                            select cn);
            foreach(CHO_NGOI cn in listChoNgoi)
            {
                dc = new DAT_CHO();
                dc.MaChoNgoi = cn.MaChoiNgoi;
                dc.MaChuyenXe = iMaChuyenXe;
                dc.TinhTrang = 1; // Chua dat cho
                db.DAT_CHOs.InsertOnSubmit(dc);
                db.SubmitChanges();
            }
            // Chuyen tiep theo
            for (i = 1; i < tuyenxe.SoLuongChuyen; i++ )
            {
                cx = new CHUYEN_XE();
                // Tinh thoi gian khoi hanh
                KhoiHanh = KhoiHanh.AddHours((double)tuyenxe.TanSuatChuyen);
                cx.KhoiHanh = KhoiHanh;
                cx.MaTuyenXe = iMaTuyenXe;
                cx.TinhTrang = 1;// Chua khoi hanh
                cx.DuKienDen = KhoiHanh.AddHours((double)tuyenxe.ThoiGianDi);
                
                cx.LuongTaiXe = (float)tuyenxe.LuongTaiXe;
                cx.GiaVe = (float)tuyenxe.GiaVe;
                cx.SoLuongMuaVe = 0; // So luong mua ve ban dau
                db.CHUYEN_XEs.InsertOnSubmit(cx);
                db.SubmitChanges();
                
                // Lay ma chuyen vua insert
                iMaChuyenXe = (from y in db.CHUYEN_XEs
                               select y.MaChuyenXe).Max();
                // Insert DAT_CHO

                foreach (CHO_NGOI cn in listChoNgoi)
                {
                    dc = new DAT_CHO();
                    dc.MaChoNgoi = cn.MaChoiNgoi;
                    dc.MaChuyenXe = iMaChuyenXe;
                    dc.TinhTrang = 1; // Chua dat cho
                    db.DAT_CHOs.InsertOnSubmit(dc);
                    db.SubmitChanges();
                }
               
                
            }
            var chuyenxe = (from x in db.CHUYEN_XEs
                            where x.MaTuyenXe == iMaTuyenXe && x.KhoiHanh > DateTime.Now
                            select x);
            GridView_CHUYENXE.DataSource = chuyenxe;
            GridView_CHUYENXE.DataBind();
            GridView_TUYENXE.SelectedRow.Visible = false;
        }

       
      
    }
}
