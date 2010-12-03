using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class LoaiNhanVienDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public LOAI_NHAN_VIEN SelectLoaiNhanVienByMaLoaiNhanVien(int maloainhanvien)
        {
            var query = (from c in _dataContext.LOAI_NHAN_VIENs
                         where c.MaLoaiNhanVien == maloainhanvien
                         select c).Single();

            return query;
        }

        public void InsertLoaiNhanVien(LOAI_NHAN_VIEN loainhanvien)
        {
            _dataContext.LOAI_NHAN_VIENs.InsertOnSubmit(loainhanvien);
            _dataContext.SubmitChanges();
        }

        public void DeleteLoaiNhanVien(int maloainhanvien)
        {
            var query = (from c in _dataContext.LOAI_NHAN_VIENs
                         where c.MaLoaiNhanVien == maloainhanvien
                         select c).Single();

            _dataContext.LOAI_NHAN_VIENs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateLoaiNhanVien(LOAI_NHAN_VIEN loainhanvien)
        {
            var query = (from c in _dataContext.LOAI_NHAN_VIENs
                         where c.MaLoaiNhanVien == loainhanvien.MaLoaiNhanVien
                         select c).Single();

            query.TenLoai = loainhanvien.TenLoai;

            _dataContext.SubmitChanges();
        }
    }
}
