using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class ChucNangDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public CHUC_NANG SelectChucNangByMaChucNang(int machucnang)
        {
            var query = (from c in _dataContext.CHUC_NANGs
                         where c.MaChucNang == machucnang
                         select c).Single();

            return query;
        }

        public void InsertChucNang(CHUC_NANG chucnang)
        {
            _dataContext.CHUC_NANGs.InsertOnSubmit(chucnang);
            _dataContext.SubmitChanges();
        }

        public void DeleteChucNang(int machucnang)
        {
            var query = (from c in _dataContext.CHUC_NANGs
                         where c.MaChucNang == machucnang
                         select c).Single();

            _dataContext.CHUC_NANGs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateChucNang(CHUC_NANG chucnang)
        {
            var query = (from c in _dataContext.CHUC_NANGs
                         where c.MaChucNang == chucnang.MaChucNang
                         select c).Single();

            query.TenChucNang = chucnang.TenChucNang;

            _dataContext.SubmitChanges();
        }
    }
}
