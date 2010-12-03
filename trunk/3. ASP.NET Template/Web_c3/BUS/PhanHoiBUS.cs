using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class PhanHoiBUS
    {
        private PhanHoiDAO _phanhoiDao = new PhanHoiDAO();

        public PHAN_HOI SelectPhanHoiByMaPhanHoi(int maphanhoi)
        {
            return _phanhoiDao.SelectPhanHoiByMaPhanHoi(maphanhoi);
        }

        public void InsertPhanHoi(PHAN_HOI phanhoi)
        {
            _phanhoiDao.InsertPhanHoi(phanhoi);
        }

        public void DeletePhanHoi(int maphanhoi)
        {
            _phanhoiDao.DeletePhanHoi(maphanhoi);
        }

        public void UpdatePhanHoi(PHAN_HOI phanhoi)
        {
            _phanhoiDao.UpdatePhanHoi(phanhoi);
        }

        public List<PHAN_HOI> SelectPhanHoisByMaNhanVien(int manhanvien)
        {
            return _phanhoiDao.SelectPhanHoisByMaNhanVien(manhanvien);
        }

        public List<PHAN_HOI> SelectPhanHoisByMaPhanHoiKhach(int maphanhoikhach)
        {
            return _phanhoiDao.SelectPhanHoisByMaPhanHoiKhach(maphanhoikhach);
        }

        public List<PHAN_HOI> SelectPhanHoisByMaChuyen(int machuyen)
        {
            return _phanhoiDao.SelectPhanHoisByMaChuyen(machuyen);
        }
    }
}
