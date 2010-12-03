﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class XeDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public XE SelectXeByMaXe(int maxe)
        {
            var query = (from c in _dataContext.XEs
                         where c.MaXe == maxe
                         select c).Single();

            return query;
        }

        public void InsertXe(XE xe)
        {
            _dataContext.XEs.InsertOnSubmit(xe);
            _dataContext.SubmitChanges();
        }

        public void DeleteXe(int maxe)
        {
            var query = (from c in _dataContext.XEs
                         where c.MaXe == maxe
                         select c).Single();

            _dataContext.XEs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateXe(XE xe)
        {
            var query = (from c in _dataContext.XEs
                         where c.MaXe == xe.MaXe
                         select c).Single();

            query.BienSoXe = xe.BienSoXe;
            query.MaLoaiXe = xe.MaLoaiXe;
            query.MaTaiXe = xe.MaTaiXe;
            query.NgayNhap = xe.NgayNhap;
            query.TinhTrang = xe.TinhTrang;

            _dataContext.SubmitChanges();
        }

        public List<XE> SelectXesByMaLoaiXe(int maloaixe)
        {
            var query = from c in _dataContext.XEs
                        where c.MaLoaiXe == maloaixe
                        select c;
            List<XE> kq = new List<XE>();
            foreach (var cx in query)
            {
                kq.Add((XE)cx);
            }
            return kq;
        }

        public List<XE> SelectXesByMaTinhTrang(int matinhtrang)
        {
            var query = from c in _dataContext.XEs
                        where c.TinhTrang == matinhtrang
                        select c;
            List<XE> kq = new List<XE>();
            foreach (var cx in query)
            {
                kq.Add((XE)cx);
            }
            return kq;
        }
    }
}
