using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class PhanHoiKhachHangDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public PHAN_HOI_KHACH_HANG SelectPhanHoiKhachHangByMaPhanHoiKhachHang(int maphanhoi)
        {
            var query = (from c in _dataContext.PHAN_HOI_KHACH_HANGs
                         where c.MaPhanHoi == maphanhoi
                         select c).Single();

            return query;
        }

        public void InsertPhanHoiKhachHang(PHAN_HOI_KHACH_HANG phanhoikhachhang)
        {
            _dataContext.PHAN_HOI_KHACH_HANGs.InsertOnSubmit(phanhoikhachhang);
            _dataContext.SubmitChanges();
        }

        public void DeletePhanHoiKhachHang(int maphanhoi)
        {
            var query = (from c in _dataContext.PHAN_HOI_KHACH_HANGs
                         where c.MaPhanHoi == maphanhoi
                         select c).Single();

            _dataContext.PHAN_HOI_KHACH_HANGs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdatePhanHoiKhachHang(PHAN_HOI_KHACH_HANG phanhoikhachhang)
        {
            var query = (from c in _dataContext.PHAN_HOI_KHACH_HANGs
                         where c.MaPhanHoi == phanhoikhachhang.MaPhanHoi
                         select c).Single();

            query.NoiDung = phanhoikhachhang.NoiDung;
            query.NgayDang = phanhoikhachhang.NgayDang;

            _dataContext.SubmitChanges();
        }
    }
}
