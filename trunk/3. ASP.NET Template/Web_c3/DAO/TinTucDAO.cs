using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class TinTucDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public TIN_TUC SelectTinTucByMaTinTuc(int matintuc)
        {
            var query = (from c in _dataContext.TIN_TUCs
                         where c.MaTinTuc == matintuc
                         select c).Single();

            return query;
        }

        public void InsertTinTuc(TIN_TUC tintuc)
        {
            _dataContext.TIN_TUCs.InsertOnSubmit(tintuc);
            _dataContext.SubmitChanges();
        }

        public void DeleteTinTuc(int matintuc)
        {
            var query = (from c in _dataContext.TIN_TUCs
                         where c.MaTinTuc == matintuc
                         select c).Single();

            _dataContext.TIN_TUCs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateTinTuc(TIN_TUC tintuc)
        {
            var query = (from c in _dataContext.TIN_TUCs
                         where c.MaTinTuc == tintuc.MaTinTuc
                         select c).Single();

            query.HinhAnh = tintuc.HinhAnh;
            query.MaAdminDuyet = tintuc.MaAdminDuyet;
            query.NoiDung = tintuc.NoiDung;
            query.NgayDang = tintuc.NgayDang;
            query.TieuDe = tintuc.TieuDe;
            query.TomTat = tintuc.TomTat;

            _dataContext.SubmitChanges();
        }
    }
}
