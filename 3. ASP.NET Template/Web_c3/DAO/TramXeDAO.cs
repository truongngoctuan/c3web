using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class TramXeDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public TRAM_XE SelectTramXeByMaTramXe(int matramxe)
        {
            var query = (from c in _dataContext.TRAM_XEs
                         where c.MaTramXe == matramxe
                         select c).Single();

            return query;
        }

        public void InsertTramXe(TRAM_XE tramxe)
        {
            _dataContext.TRAM_XEs.InsertOnSubmit(tramxe);
            _dataContext.SubmitChanges();
        }

        public void DeleteTramXe(int matramxe)
        {
            var query = (from c in _dataContext.TRAM_XEs
                         where c.MaTramXe == matramxe
                         select c).Single();

            _dataContext.TRAM_XEs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateTramXe(TRAM_XE tramxe)
        {
            var query = (from c in _dataContext.TRAM_XEs
                         where c.MaTramXe == tramxe.MaTramXe
                         select c).Single();

            query.DiaChi = tramxe.DiaChi;
            query.HinhAnh = tramxe.HinhAnh;
            query.MaTruongTram = tramxe.MaTruongTram;
            query.TenTramXe = tramxe.TenTramXe;

            _dataContext.SubmitChanges();
        }

        public List<TRAM_XE> SelectTramXesByMaTruongTram(int matruongtram)
        {
            var query = from c in _dataContext.TRAM_XEs
                        where c.MaTruongTram == matruongtram
                        select c;
            List<TRAM_XE> kq = new List<TRAM_XE>();
            foreach (var cx in query)
            {
                kq.Add((TRAM_XE)cx);
            }
            return kq;
        }
    }
}
