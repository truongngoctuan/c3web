using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class XeBUS
    {
        private XeDAO _xeDao = new XeDAO();

        public XE SelectXeByMaXe(int maxe)
        {
            return _xeDao.SelectXeByMaXe(maxe);
        }

        public void InsertXe(XE xe)
        {
            _xeDao.InsertXe(xe);
        }

        public void DeleteXe(int maxe)
        {
            _xeDao.DeleteXe(maxe);
        }

        public void UpdateXe(XE xe)
        {
            _xeDao.UpdateXe(xe);
        }

        public List<XE> SelectXesByMaLoaiXe(int maloaixe)
        {
            return _xeDao.SelectXesByMaLoaiXe(maloaixe);
        }

        public List<XE> SelectXesByMaTinhTrang(int matinhtrang)
        {
            return _xeDao.SelectXesByMaTinhTrang(matinhtrang);
        }
    }
}
