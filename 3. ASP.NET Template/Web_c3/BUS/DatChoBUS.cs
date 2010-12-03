using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class DatChoBUS
    {
        private DatChoDAO _datchoDao = new DatChoDAO();

        public DAT_CHO SelectDatChoByMaDatCho(int madatcho)
        {
            return _datchoDao.SelectDatChoByMaDatCho(madatcho);
        }

        public void InsertDatCho(DAT_CHO datcho)
        {
            _datchoDao.InsertDatCho(datcho);
        }

        public void DeleteDatCho(int madatcho)
        {
            _datchoDao.DeleteDatCho(madatcho);
        }

        public void UpdateDatCho(DAT_CHO datcho)
        {
            _datchoDao.UpdateDatCho(datcho);
        }
    }
}
