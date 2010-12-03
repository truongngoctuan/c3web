using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class TuyenXeBUS
    {
        private TuyenXeDAO _tuyenxeDao = new TuyenXeDAO();

        public TUYEN_XE SelectTuyenXeByMaTuyenXe(int matuyenxe)
        {
            return _tuyenxeDao.SelectTuyenXeByMaTuyenXe(matuyenxe);
        }

        public void InsertTuyenXe(TUYEN_XE tuyenxe)
        {
            _tuyenxeDao.InsertTuyenXe(tuyenxe);
        }

        public void DeleteTuyenXe(int matuyenxe)
        {
            _tuyenxeDao.DeleteTuyenXe(matuyenxe);
        }

        public void UpdateTuyenXe(TUYEN_XE tuyenxe)
        {
            _tuyenxeDao.UpdateTuyenXe(tuyenxe);
        }
        public List<TUYEN_XE> SelectTuyenXesByMaTramDi(int matramdi)
        {
            return _tuyenxeDao.SelectTuyenXesByMaTramDi(matramdi);
        }

        public List<TUYEN_XE> SelectTuyenXesByMaTramDen(int matramden)
        {
            return _tuyenxeDao.SelectTuyenXesByMaTramDen(matramden);
        }
    }
}
