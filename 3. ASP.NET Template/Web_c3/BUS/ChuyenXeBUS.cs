using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class ChuyenXeBUS
    {
        private ChuyenXeDAO _chuyenxeDao = new ChuyenXeDAO();

        public CHUYEN_XE SelectChuyenXeByMaChuyenXe(int machuyen)
        {
            return _chuyenxeDao.SelectChuyenXeByMaChuyenXe(machuyen);
        }

        public void InsertChuyenXe(CHUYEN_XE chuyenxe)
        {
            _chuyenxeDao.InsertChuyenXe(chuyenxe);
        }
    }
}
