using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;
using CTLH_C3.Core;

namespace CTLH_C3
{
    public partial class ThongTinChiTietChuyenXe : BasePage
    {
        int maChuyenXe = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["MaChuyenXe"] != null)
                maChuyenXe = int.Parse(Request.QueryString["MaChuyenXe"]);
        }

        protected void ldsChuyenXe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            if (maChuyenXe < 0)
            {
                e.Cancel = true;
                return;
            }
            TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
            IQueryable<CHUYEN_XE> chuyenXeQuery = dataContext.CHUYEN_XEs;
            var chuyenXes = from chuyenXe in chuyenXeQuery
                            where chuyenXe.MaChuyenXe == maChuyenXe
                            select new
                            {
                                MaChuyenXe = chuyenXe.MaChuyenXe,
                                HinhAnhXe = chuyenXe.NHAN_VIEN.XEs.Single().LOAI_XE.IMAGE_STORE.Image,
                                MaTaiXe = chuyenXe.MaTaiXe,
                                TenTaiXe = chuyenXe.NHAN_VIEN.HoTen,
                                KhoiHanh = chuyenXe.KhoiHanh,
                                DuKienDen = ((DateTime)chuyenXe.KhoiHanh).AddHours((double)chuyenXe.TUYEN_XE.ThoiGianDi),
                                GiaVe = chuyenXe.GiaVe,
                                SoChoTrong = chuyenXe.DAT_CHOs.Count(dt => dt.TINH_TRANG_DAT_CHO.TenTinhTrangDatCho == "Chưa đặt")
                            };
            if (chuyenXes.Count() == 1)
                e.Result = chuyenXes;
            else
                e.Cancel = true;
        }       
    }
}
