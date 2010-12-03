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
    }
}
