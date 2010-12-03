using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class PhanHoiKhachHangBUS
    {
        private PhanHoiKhachHangDAO _phanhoikhachhangDao = new PhanHoiKhachHangDAO();

        public PHAN_HOI_KHACH_HANG SelectPhanHoiKhachHangByMaPhanHoiKhachHang(int maphanhoi)
        {
            return _phanhoikhachhangDao.SelectPhanHoiKhachHangByMaPhanHoiKhachHang(maphanhoi);
        }

        public void InsertPhanHoiKhachHang(PHAN_HOI_KHACH_HANG phanhoikhachhang)
        {
            _phanhoikhachhangDao.InsertPhanHoiKhachHang(phanhoikhachhang);
        }

        public void DeletePhanHoiKhachHang(int maphanhoi)
        {
            _phanhoikhachhangDao.DeletePhanHoiKhachHang(maphanhoi);
        }

        public void UpdatePhanHoiKhachHang(PHAN_HOI_KHACH_HANG phanhoikhachhang)
        {
            _phanhoikhachhangDao.UpdatePhanHoiKhachHang(phanhoikhachhang);
        }
    }
}
