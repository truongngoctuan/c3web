using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class ChuyenXeDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public CHUYEN_XE SelectChuyenXeByMaChuyenXe(int machuyen)
        {
            var query = (from c in _dataContext.CHUYEN_XEs
                         where c.MaChuyenXe == machuyen
                         select c).Single();

            return query;
        }

        public void InsertChuyenXe(CHUYEN_XE chuyenxe)
        {
            _dataContext.CHUYEN_XEs.InsertOnSubmit(chuyenxe);
            _dataContext.SubmitChanges();
        }

        public void DeleteChuyenXe(int machuyenxe)
        {
            var query = (from c in _dataContext.CHUYEN_XEs
                         where c.MaChuyenXe== machuyenxe
                         select c).Single();

            _dataContext.CHUYEN_XEs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateChuyenXe(CHUYEN_XE chuyenxe)
        {
            var query = (from c in _dataContext.CHUYEN_XEs
                         where c.MaChuyenXe == chuyenxe.MaChuyenXe
                         select c).Single();

            query.DuKienDen = chuyenxe.DuKienDen;
            query.GiaVe = chuyenxe.GiaVe;
            query.KhoiHanh = chuyenxe.KhoiHanh;
            query.LuongTaiXe = chuyenxe.LuongTaiXe;
            query.MaTaiXe = chuyenxe.MaTaiXe;
            query.MaTuyenXe = chuyenxe.MaTuyenXe;
            query.TinhTrang = chuyenxe.TinhTrang;
            query.ThoiGianDenTram = chuyenxe.ThoiGianDenTram;

            _dataContext.SubmitChanges();
        }
    }
}
