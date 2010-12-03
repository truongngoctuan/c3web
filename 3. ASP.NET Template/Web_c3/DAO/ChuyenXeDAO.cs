using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class ChuyenXeDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public CHUYEN_XE SelectChuyenXeByMaChuyenXe(int machuyen)
        {
            var query = (from c in _dataContext.CHUYEN_XEs
                         where c.MaChuyenXe == machuyen
                         select c).Single();

            return query;
        }

        public void InsertChuyenXe(CHUYEN_XE chuyenxe)
        {
            _dataContext.CHUYEN_XEs.InsertOnSubmit(chuyenxe);
            _dataContext.SubmitChanges();
        }
    }
}
