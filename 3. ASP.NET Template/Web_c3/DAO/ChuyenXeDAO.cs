using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

using System.Data.SqlClient;

namespace DAO
{
    public class ChuyenXeDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public CHUYEN_XE SelectChuyenXeByMaChuyenXe(int machuyen)
        {
            try
            {
                var query = (from c in _dataContext.CHUYEN_XEs
                             where c.MaChuyenXe == machuyen
                             select c).Single();

                return query;
            }
            catch (SqlException e)
            {
                return new CHUYEN_XE();
            }
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

        public List<CHUYEN_XE> SelectChuyenXesByMaTaiXe(int mataixe)
        {
            var query = from c in _dataContext.CHUYEN_XEs
                        where c.MaTaiXe == mataixe
                        select c;
            List<CHUYEN_XE> kq = new List<CHUYEN_XE>();
            foreach (var cx in query)
            {
                kq.Add((CHUYEN_XE)cx);                    
            }
            return kq;
        }

        public List<CHUYEN_XE> SelectChuyenXesByMaTuyenXe(int matuyenxe)
        {
            var query = from c in _dataContext.CHUYEN_XEs
                        where c.MaTuyenXe == matuyenxe
                        select c;
            List<CHUYEN_XE> kq = new List<CHUYEN_XE>();
            foreach (var cx in query)
            {
                kq.Add((CHUYEN_XE)cx);
            }
            return kq;
        }
    }
}
