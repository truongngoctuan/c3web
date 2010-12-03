using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class NhanVienBUS
    {
        private NhanVienDAO _nhanvienDao = new NhanVienDAO();
        
        public NHAN_VIEN SelectNhanVienByMaNhanVien(int manhanvien)
        {
            return _nhanvienDao.SelectNhanVienByMaNhanVien(manhanvien);
        }

        public void InsertNhanVien(NHAN_VIEN nhanvien)
        {
            _nhanvienDao.InsertNhanVien(nhanvien);
        }

        public void DeleteNhanVien(int manhanvien)
        {
            _nhanvienDao.DeleteNhanVien(manhanvien);
        }

        public void UpdateNhanVien(NHAN_VIEN nhanvien)
        {
            _nhanvienDao.UpdateNhanVien(nhanvien);
        }

        public List<NHAN_VIEN> SelectNhanViensByLoaiNhanVien(int loainhanvien)
        {
            return _nhanvienDao.SelectNhanViensByLoaiNhanVien(loainhanvien);
        }
    }
}
