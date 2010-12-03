using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class NhanVienDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public NHAN_VIEN SelectNhanVienByMaNhanVien(int manhanvien)
        {
            var query = (from c in _dataContext.NHAN_VIENs
                         where c.MaNhanVien == manhanvien
                         select c).Single();

            return query;
        }

        public void InsertNhanVien(NHAN_VIEN nhanvien)
        {
            _dataContext.NHAN_VIENs.InsertOnSubmit(nhanvien);
            _dataContext.SubmitChanges();
        }

        public void DeleteNhanVien(int manhanvien)
        {
            var query = (from c in _dataContext.NHAN_VIENs
                         where c.MaNhanVien == manhanvien
                         select c).Single();

            _dataContext.NHAN_VIENs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateNhanVien(NHAN_VIEN nhanvien)
        {
            var query = (from c in _dataContext.NHAN_VIENs
                         where c.MaNhanVien == nhanvien.MaNhanVien
                         select c).Single();

            query.DiaChi = nhanvien.DiaChi;
            query.DienThoai = nhanvien.DienThoai;
            query.HoTen = nhanvien.HoTen;
            query.LoaiNhanVien = nhanvien.LoaiNhanVien;
            query.LuongTrongThang = nhanvien.LuongTrongThang;

            _dataContext.SubmitChanges();
        }
    }
}
