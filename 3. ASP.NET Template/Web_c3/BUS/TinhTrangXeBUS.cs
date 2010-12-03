using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class TinhTrangXeBUS
    {
        private TinhTrangXeDAO _tinhtrangxeDao = new TinhTrangXeDAO();
        
        public TINH_TRANG_XE SelectTinhTrangXeByMaTinhTrangXe(int matinhtrangxe)
        {
            return _tinhtrangxeDao.SelectTinhTrangXeByMaTinhTrangXe(matinhtrangxe);
        }

        public void InsertTinhTrangXe(TINH_TRANG_XE tinhtrangxe)
        {
            _tinhtrangxeDao.InsertTinhTrangXe(tinhtrangxe);
        }

        public void DeleteTinhTrangXe(int matinhtrangxe)
        {
            _tinhtrangxeDao.DeleteTinhTrangXe(matinhtrangxe);
        }

        public void UpdateTinhTrangXe(TINH_TRANG_XE tinhtrangxe)
        {
            _tinhtrangxeDao.UpdateTinhTrangXe(tinhtrangxe);
        }
    }
}
