using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class TaiKhoanBUS
    {
        private TaiKhoanDAO _taikhoanDao = new TaiKhoanDAO();
        
        public TAI_KHOAN SelectTaiKhoanByMaTaiKhoan(int mataikhoan)
        {
            return _taikhoanDao.SelectTaiKhoanByMaTaiKhoan(mataikhoan);
        }

        public void InsertTaiKhoan(TAI_KHOAN taikhoan)
        {
            _taikhoanDao.InsertTaiKhoan(taikhoan);
        }

        public void DeleteTaiKhoan(int mataikhoan)
        {
            _taikhoanDao.DeleteTaiKhoan(mataikhoan);
        }

        public void UpdateTaiKhoan(TAI_KHOAN taikhoan)
        {
            _taikhoanDao.UpdateTaiKhoan(taikhoan);
        }
    }
}
