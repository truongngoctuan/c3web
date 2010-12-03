using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class TramXeBUS
    {
        private TramXeDAO _tramxeDao = new TramXeDAO();
        
        public TRAM_XE SelectTramXeByMaTramXe(int matramxe)
        {
            return _tramxeDao.SelectTramXeByMaTramXe(matramxe);
        }

        public void InsertTramXe(TRAM_XE tramxe)
        {
            _tramxeDao.InsertTramXe(tramxe);
        }

        public void DeleteTramXe(int matramxe)
        {
            _tramxeDao.DeleteTramXe(matramxe);
        }

        public void UpdateTramXe(TRAM_XE tramxe)
        {
            _tramxeDao.UpdateTramXe(tramxe);
        }

        public List<TRAM_XE> SelectTramXesByMaTruongTram(int matruongtram)
        {
            return _tramxeDao.SelectTramXesByMaTruongTram(matruongtram);
        }
    }
}
