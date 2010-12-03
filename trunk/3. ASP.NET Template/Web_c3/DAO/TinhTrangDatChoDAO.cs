using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class TinhTrangDatChoDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public TINH_TRANG_DAT_CHO SelectTinhTrangDatChoByMaTinhTrangDatCho(int matinhtrangdatcho)
        {
            var query = (from c in _dataContext.TINH_TRANG_DAT_CHOs
                         where c.MaTinhTrangDatCho == matinhtrangdatcho
                         select c).Single();

            return query;
        }

        public void InsertTinhTrangDatCho(TINH_TRANG_DAT_CHO tinhtrangdatcho)
        {
            _dataContext.TINH_TRANG_DAT_CHOs.InsertOnSubmit(tinhtrangdatcho);
            _dataContext.SubmitChanges();
        }

        public void DeleteTinhTrangDatCho(int matinhtrangdatcho)
        {
            var query = (from c in _dataContext.TINH_TRANG_DAT_CHOs
                         where c.MaTinhTrangDatCho == matinhtrangdatcho
                         select c).Single();

            _dataContext.TINH_TRANG_DAT_CHOs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateTinhTrangDatCho(TINH_TRANG_DAT_CHO tinhtrangdatcho)
        {
            var query = (from c in _dataContext.TINH_TRANG_DAT_CHOs
                         where c.MaTinhTrangDatCho == tinhtrangdatcho.MaTinhTrangDatCho
                         select c).Single();

            query.TenTinhTrangDatCho = tinhtrangdatcho.TenTinhTrangDatCho;

            _dataContext.SubmitChanges();
        }
    }
}
