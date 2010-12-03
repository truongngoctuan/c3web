using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class TinhTrangDatChoBUS
    {
        private TinhTrangDatChoDAO _tinhtrangdatchoDao = new TinhTrangDatChoDAO();

        public TINH_TRANG_DAT_CHO SelectTinhTrangDatChoByMaTinhTrangDatCho(int matinhtrangdatcho)
        {
            return _tinhtrangdatchoDao.SelectTinhTrangDatChoByMaTinhTrangDatCho(matinhtrangdatcho);
        }

        public void InsertTinhTrangDatCho(TINH_TRANG_DAT_CHO tinhtrangdatcho)
        {
            _tinhtrangdatchoDao.InsertTinhTrangDatCho(tinhtrangdatcho);
        }

        public void DeleteTinhTrangDatCho(int matinhtrangdatcho)
        {
            _tinhtrangdatchoDao.DeleteTinhTrangDatCho(matinhtrangdatcho);
        }

        public void UpdateTinhTrangDatCho(TINH_TRANG_DAT_CHO tinhtrangdatcho)
        {
            _tinhtrangdatchoDao.UpdateTinhTrangDatCho(tinhtrangdatcho);
        }
    }
}
