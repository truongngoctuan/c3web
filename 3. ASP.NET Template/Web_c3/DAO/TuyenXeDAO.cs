using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class TuyenXeDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();
       
        public TUYEN_XE SelectTuyenXeByMaTuyenXe(int matuyenxe)
        {
            var query = (from c in _dataContext.TUYEN_XEs
                         where c.MaTuyenXe == matuyenxe
                         select c).Single();

            return query;
        }

        public void InsertTuyenXe(TUYEN_XE tuyenxe)
        {
            _dataContext.TUYEN_XEs.InsertOnSubmit(tuyenxe);
            _dataContext.SubmitChanges();
        }

        public void DeleteTuyenXe(int matuyenxe)
        {
            var query = (from c in _dataContext.TUYEN_XEs
                         where c.MaTuyenXe == matuyenxe
                         select c).Single();

            _dataContext.TUYEN_XEs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateTuyenXe(TUYEN_XE tuyenxe)
        {
            var query = (from c in _dataContext.TUYEN_XEs
                         where c.MaTuyenXe == tuyenxe.MaTuyenXe
                         select c).Single();

            query.GiaVe = tuyenxe.GiaVe;
            query.KhoangThoiGianDi = tuyenxe.KhoangThoiGianDi;
            query.LuongTaiXe = tuyenxe.LuongTaiXe;
            query.MaTramDen = tuyenxe.MaTramDen;
            query.MaTramDi = tuyenxe.MaTramDi;
            query.TanSuatChuyen = tuyenxe.TanSuatChuyen;

            _dataContext.SubmitChanges();
        }
    }
}
