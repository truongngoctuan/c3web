using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class PhanHoiDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public PHAN_HOI SelectPhanHoiByMaPhanHoi(int maphanhoi)
        {
            var query = (from c in _dataContext.PHAN_HOIs
                         where c.MaPhanHoi == maphanhoi
                         select c).Single();

            return query;
        }

        public void InsertPhanHoi(PHAN_HOI phanhoi)
        {
            _dataContext.PHAN_HOIs.InsertOnSubmit(phanhoi);
            _dataContext.SubmitChanges();
        }

        public void DeletePhanHoi(int maphanhoi)
        {
            var query = (from c in _dataContext.PHAN_HOIs
                         where c.MaPhanHoi == maphanhoi
                         select c).Single();

            _dataContext.PHAN_HOIs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdatePhanHoi(PHAN_HOI phanhoi)
        {
            var query = (from c in _dataContext.PHAN_HOIs
                         where c.MaPhanHoi == phanhoi.MaPhanHoi
                         select c).Single();

            query.MaChuyen = phanhoi.MaChuyen;
            query.MaNhanVien = phanhoi.MaNhanVien;
            query.MaPhanHoiKhach = phanhoi.MaPhanHoiKhach;

            _dataContext.SubmitChanges();
        }
    }
}
