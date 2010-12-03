using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class PhanQuyenBUS
    {
        private PhanQuyenDAO _phanquyenDao = new PhanQuyenDAO();

        public PHAN_QUYEN SelectPhanQuyenByMaPhanQuyen(int maphanquyen)
        {
            return _phanquyenDao.SelectPhanQuyenByMaPhanQuyen(maphanquyen);
        }

        public void InsertPhanQuyen(PHAN_QUYEN phanquyen)
        {
            _phanquyenDao.InsertPhanQuyen(phanquyen);
        }

        public void DeletePhanQuyen(int maphanquyen)
        {
            _phanquyenDao.DeletePhanQuyen(maphanquyen);
        }

        public void UpdatePhanQuyen(PHAN_QUYEN phanquyen)
        {
            _phanquyenDao.UpdatePhanQuyen(phanquyen);
        }

        public List<PHAN_QUYEN> SelectPhanQuyensByMaChucNang(int machucnang)
        {
            return _phanquyenDao.SelectPhanQuyensByMaChucNang(machucnang);
        }

        public List<PHAN_QUYEN> SelectNhanViensByMaLoaiNhanVien(int maloainhanvien)
        {
            return _phanquyenDao.SelectPhanQuyensByMaLoaiNhanVien(maloainhanvien);
        }
    }
}
