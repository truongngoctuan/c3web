using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class ChoNgoiBUS
    {
        private ChoNgoiDAO _chongoiDao = new ChoNgoiDAO();

        public CHO_NGOI SelectChoNgoiByMaChoNgoi(int machongoi)
        {
            return _chongoiDao.SelectChoNgoiByMaChoNgoi(machongoi);
        }

        public void InsertChoNgoi(CHO_NGOI chongoi)
        {
            _chongoiDao.InsertChoNgoi(chongoi);
        }

        public void DeleteChoNgoi(int machongoi)
        {
            _chongoiDao.DeleteChoNgoi(machongoi);
        }

        public void UpdateChoNgoi(CHO_NGOI chongoi)
        {
            _chongoiDao.UpdateChoNgoi(chongoi);
        }
    }
}
