using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class LoaiXeDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public LOAI_XE SelectLoaiXeByMaLoaiXe(int maloaixe)
        {
            var query = (from c in _dataContext.LOAI_XEs
                         where c.MaLoaixe == maloaixe
                         select c).Single();

            return query;
        }

        public void InsertLoaiXe(LOAI_XE loaixe)
        {
            _dataContext.LOAI_XEs.InsertOnSubmit(loaixe);
            _dataContext.SubmitChanges();
        }

        public void DeleteLoaiXe(int maloaixe)
        {
            var query = (from c in _dataContext.LOAI_XEs
                         where c.MaLoaixe == maloaixe
                         select c).Single();

            _dataContext.LOAI_XEs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateLoaiXe(LOAI_XE loaixe)
        {
            var query = (from c in _dataContext.LOAI_XEs
                         where c.MaLoaixe == loaixe.MaLoaixe
                         select c).Single();

            query.HangSanXuat = loaixe.HangSanXuat;
            query.HinhAnh = loaixe.HinhAnh;

            _dataContext.SubmitChanges();
        }
    }
}
