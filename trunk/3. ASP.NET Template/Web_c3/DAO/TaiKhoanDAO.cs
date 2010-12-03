using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class TaiKhoanDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public TAI_KHOAN SelectTaiKhoanByMaTaiKhoan(int mataikhoan)
        {
            var query = (from c in _dataContext.TAI_KHOANs
                         where c.MaTaiKhoan == mataikhoan
                         select c).Single();

            return query;
        }

        public void InsertTaiKhoan(TAI_KHOAN taikhoan)
        {
            _dataContext.TAI_KHOANs.InsertOnSubmit(taikhoan);
            _dataContext.SubmitChanges();
        }

        public void DeleteTaiKhoan(int mataikhoan)
        {
            var query = (from c in _dataContext.TAI_KHOANs
                         where c.MaTaiKhoan == mataikhoan
                         select c).Single();

            _dataContext.TAI_KHOANs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateTaiKhoan(TAI_KHOAN taikhoan)
        {
            var query = (from c in _dataContext.TAI_KHOANs
                         where c.MaTaiKhoan == taikhoan.MaTaiKhoan
                         select c).Single();

            query.Email = taikhoan.Email;
            query.MaNhanVien = taikhoan.MaNhanVien;
            query.NgayKichHoat = taikhoan.NgayKichHoat;
            query.Password = taikhoan.Password;
            query.Username = taikhoan.Username;

            _dataContext.SubmitChanges();
        }

        public List<TAI_KHOAN> SelectTaiKhoansByMaNhanVien(int manhanvien)
        {
            var query = from c in _dataContext.TAI_KHOANs
                        where c.MaNhanVien == manhanvien
                        select c;
            List<TAI_KHOAN> kq = new List<TAI_KHOAN>();
            foreach (var cx in query)
            {
                kq.Add((TAI_KHOAN)cx);
            }
            return kq;
        }
    }
}
