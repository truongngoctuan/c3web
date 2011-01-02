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
    public partial class DuyetPhanHoi : System.Web.UI.Page
    {
        protected MetaTable table;
        TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
        public static int iMaPhanHoiKhach;
        protected void Page_Init(object sender, EventArgs e)
        {


            DynamicDataManager1.RegisterControl(GridView_PHANHOI, true /*setSelectionFromUrl*/);
            DynamicDataManager1.RegisterControl(GridView_CHUYENXE, true /*setSelectionFromUrl*/);
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            GridView_PHANHOI.DataBind();
           

            DropDownList_TAIXE.DataSource = (from nv in db.NHAN_VIENs
                                             join tk in db.TAI_KHOANs on nv.MaNhanVien equals tk.MaNhanVien
                                             where tk.LoaiTaiKhoan == 1
                                             select nv);
            DropDownList_TAIXE.DataBind();
           


        }

        protected void GridView_PHANHOI_SelectedIndexChanged(object sender, EventArgs e)
        {
           


            iMaPhanHoiKhach = Convert.ToInt32(GridView_PHANHOI.SelectedRow.Cells[3].Text);
           
        }

        protected void GridView_CHUYENXE_SelectedIndexChanged(object sender, EventArgs e)
        {
            // cap nhat da duyet
            var phanhoi = (from phkh in db.PHAN_HOI_KHACH_HANGs
                           where phkh.MaPhanHoi == iMaPhanHoiKhach
                           select phkh).Single();
            phanhoi.Duyet = 2; // Da duyet xong
            db.SubmitChanges();
            int iMaChuyenXe = Convert.ToInt32(GridView_CHUYENXE.SelectedRow.Cells[1].Text);
            PHAN_HOI ph = new PHAN_HOI();
            ph.MaPhanHoiKhach = iMaPhanHoiKhach;
            ph.MaChuyen = iMaChuyenXe;
            //  Lay ma nhan vien dang thao tac????
            db.PHAN_HOIs.InsertOnSubmit(ph);
            db.SubmitChanges();
            
        }

     
    }
}
