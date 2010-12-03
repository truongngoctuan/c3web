using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class TinhTrangXeDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public TINH_TRANG_XE SelectTinhTrangXeByMaTinhTrangXe(int matinhtrangxe)
        {
            var query = (from c in _dataContext.TINH_TRANG_XEs
                         where c.MaTinhTrangXe == matinhtrangxe
                         select c).Single();

            return query;
        }

        public void InsertTinhTrangXe(TINH_TRANG_XE tinhtrangxe)
        {
            _dataContext.TINH_TRANG_XEs.InsertOnSubmit(tinhtrangxe);
            _dataContext.SubmitChanges();
        }

        public void DeleteTinhTrangXe(int matinhtrangxe)
        {
            var query = (from c in _dataContext.TINH_TRANG_XEs
                         where c.MaTinhTrangXe == matinhtrangxe
                         select c).Single();

            _dataContext.TINH_TRANG_XEs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateTinhTrangXe(TINH_TRANG_XE tinhtrangxe)
        {
            var query = (from c in _dataContext.TINH_TRANG_XEs
                         where c.MaTinhTrangXe == tinhtrangxe.MaTinhTrangXe
                         select c).Single();

            query.TenTinhTrangXe = tinhtrangxe.TenTinhTrangXe;

            _dataContext.SubmitChanges();
        }
    }
}
