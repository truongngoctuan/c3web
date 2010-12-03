using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class TinTucBUS
    {
        private TinTucDAO _tintucDao = new TinTucDAO();
        
        public TIN_TUC SelectTinTucByMaTinTuc(int matintuc)
        {
            return _tintucDao.SelectTinTucByMaTinTuc(matintuc);
        }

        public void InsertTinTuc(TIN_TUC tintuc)
        {
            _tintucDao.InsertTinTuc(tintuc);
        }

        public void DeleteTinTuc(int matintuc)
        {
            _tintucDao.DeleteTinTuc(matintuc);
        }

        public void UpdateTinTuc(TIN_TUC tintuc)
        {
            _tintucDao.UpdateTinTuc(tintuc);
        }
    }
}
