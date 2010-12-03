using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class LoaiNhanVienBUS
    {
        private LoaiNhanVienDAO _loainhanvienDao = new LoaiNhanVienDAO();

        public LOAI_NHAN_VIEN SelectLoaiNhanVienByMaLoaiNhanVien(int maloainhanvien)
        {
            return _loainhanvienDao.SelectLoaiNhanVienByMaLoaiNhanVien(maloainhanvien);
        }

        public void InsertLoaiNhanVien(LOAI_NHAN_VIEN loainhanvien)
        {
            _loainhanvienDao.InsertLoaiNhanVien(loainhanvien);
        }

        public void DeleteLoaiNhanVien(int maloainhanvien)
        {
            _loainhanvienDao.DeleteLoaiNhanVien(maloainhanvien);
        }

        public void UpdateLoaiNhanVien(LOAI_NHAN_VIEN loainhanvien)
        {
            _loainhanvienDao.UpdateLoaiNhanVien(loainhanvien);
        }
    }
}
