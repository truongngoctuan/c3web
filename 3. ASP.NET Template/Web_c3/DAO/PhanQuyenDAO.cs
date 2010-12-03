using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class PhanQuyenDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public PHAN_QUYEN SelectPhanQuyenByMaPhanQuyen(int maphanquyen)
        {
            var query = (from c in _dataContext.PHAN_QUYENs
                         where c.MaPhanQuyen == maphanquyen
                         select c).Single();

            return query;
        }

        public void InsertPhanQuyen(PHAN_QUYEN phanquyen)
        {
            _dataContext.PHAN_QUYENs.InsertOnSubmit(phanquyen);
            _dataContext.SubmitChanges();
        }

        public void DeletePhanQuyen(int maphanquyen)
        {
            var query = (from c in _dataContext.PHAN_QUYENs
                         where c.MaPhanQuyen == maphanquyen
                         select c).Single();

            _dataContext.PHAN_QUYENs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdatePhanQuyen(PHAN_QUYEN phanquyen)
        {
            var query = (from c in _dataContext.PHAN_QUYENs
                         where c.MaPhanQuyen == phanquyen.MaPhanQuyen
                         select c).Single();

            query.MaChucNang = phanquyen.MaChucNang;
            query.MaLoaiNhanVien = phanquyen.MaLoaiNhanVien;

            _dataContext.SubmitChanges();
        }

        public List<PHAN_QUYEN> SelectPhanQuyensByMaChucNang(int machucnang)
        {
            var query = from c in _dataContext.PHAN_QUYENs
                        where c.MaChucNang == machucnang
                        select c;
            List<PHAN_QUYEN> kq = new List<PHAN_QUYEN>();
            foreach (var cx in query)
            {
                kq.Add((PHAN_QUYEN)cx);
            }
            return kq;
        }

        public List<PHAN_QUYEN> SelectPhanQuyensByMaLoaiNhanVien(int maloainhanvien)
        {
            var query = from c in _dataContext.PHAN_QUYENs
                        where c.MaLoaiNhanVien == maloainhanvien
                        select c;
            List<PHAN_QUYEN> kq = new List<PHAN_QUYEN>();
            foreach (var cx in query)
            {
                kq.Add((PHAN_QUYEN)cx);
            }
            return kq;
        }
    }
}
