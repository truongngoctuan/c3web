using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class ChucNangBUS
    {
        private ChucNangDAO _chucnangDao = new ChucNangDAO();
        
        public CHUC_NANG SelectChucNangByMaChucNang(int machucnang)
        {
            return _chucnangDao.SelectChucNangByMaChucNang(machucnang);
        }

        public void InsertChucNang(CHUC_NANG chucnang)
        {
            _chucnangDao.InsertChucNang(chucnang);
        }

        public void DeleteChucNang(int machucnang)
        {
            _chucnangDao.DeleteChucNang(machucnang);
        }

        public void UpdateChucNang(CHUC_NANG chucnang)
        {
            _chucnangDao.UpdateChucNang(chucnang);
        }
    }
}
