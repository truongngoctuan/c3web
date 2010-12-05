﻿using System;
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

        public List<DAT_CHO> SelectDatChosByMaChoNgoi(int machongoi)
        {
            return _datchoDao.SelectDatChosByMaChoNgoi(machongoi);
        }

        public List<DAT_CHO> SelectDatChosByMaChuyenXe(int machuyenxe)
        {
            return _datchoDao.SelectDatChosByMaChuyenXe(machuyenxe);
        }

        public List<DAT_CHO> SelectDatChosByMaTinhTrang(int matinhtrang)
        {
            return _datchoDao.SelectDatChosByMaTinhTrang(matinhtrang);
        }
    }
}