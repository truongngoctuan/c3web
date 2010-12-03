using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class DatChoDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public DAT_CHO SelectDatChoByMaDatCho(int madatcho)
        {
            var query = (from c in _dataContext.DAT_CHOs
                         where c.MaDatCho == madatcho
                         select c).Single();

            return query;
        }

        public void InsertDatCho(DAT_CHO datcho)
        {
            _dataContext.DAT_CHOs.InsertOnSubmit(datcho);
            _dataContext.SubmitChanges();
        }

        public void DeleteDatCho(int madatcho)
        {
            var query = (from c in _dataContext.DAT_CHOs
                         where c.MaDatCho == madatcho
                         select c).Single();

            _dataContext.DAT_CHOs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateDatCho(DAT_CHO datcho)
        {
            var query = (from c in _dataContext.DAT_CHOs
                         where c.MaDatCho == datcho.MaDatCho
                         select c).Single();

            query.MaChoNgoi = datcho.MaChoNgoi;
            query.MaChuyenXe = datcho.MaChuyenXe;
            query.TinhTrang = datcho.TinhTrang;

            _dataContext.SubmitChanges();
        }

        public List<DAT_CHO> SelectDatChosByMaChoNgoi(int machongoi)
        {
            var query = from c in _dataContext.DAT_CHOs
                        where c.MaChoNgoi == machongoi
                        select c;
            List<DAT_CHO> kq = new List<DAT_CHO>();
            foreach (var cx in query)
            {
                kq.Add((DAT_CHO)cx);
            }
            return kq;
        }

        public List<DAT_CHO> SelectDatChosByMaChuyenXe(int machuyenxe)
        {
            var query = from c in _dataContext.DAT_CHOs
                        where c.MaChuyenXe == machuyenxe
                        select c;
            List<DAT_CHO> kq = new List<DAT_CHO>();
            foreach (var cx in query)
            {
                kq.Add((DAT_CHO)cx);
            }
            return kq;
        }

        public List<DAT_CHO> SelectDatChosByMaTinhTrang(int matinhtrang)
        {
            var query = from c in _dataContext.DAT_CHOs
                        where c.TinhTrang == matinhtrang
                        select c;
            List<DAT_CHO> kq = new List<DAT_CHO>();
            foreach (var cx in query)
            {
                kq.Add((DAT_CHO)cx);
            }
            return kq;
        }
   }
}
