using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class LoaiXeBUS
    {
        private LoaiXeDAO _loaixeDao = new LoaiXeDAO();
       
        public LOAI_XE SelectLoaiXeByMaLoaiXe(int maloaixe)
        {
            return _loaixeDao.SelectLoaiXeByMaLoaiXe(maloaixe);
        }

        public void InsertLoaiXe(LOAI_XE loaixe)
        {
            _loaixeDao.InsertLoaiXe(loaixe);
        }

        public void DeleteLoaiXe(int maloaixe)
        {
            _loaixeDao.DeleteLoaiXe(maloaixe);
        }

        public void UpdateLoaiXe(LOAI_XE loaixe)
        {
            _loaixeDao.UpdateLoaiXe(loaixe);
        }
    }
}
