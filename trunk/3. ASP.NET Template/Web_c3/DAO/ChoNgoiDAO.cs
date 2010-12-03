using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class ChoNgoiDAO
    {
        private CTLHDataContext _dataContext = new CTLHDataContext();

        public CHO_NGOI SelectChoNgoiByMaChoNgoi(int machongoi)
        {
            var query = (from c in _dataContext.CHO_NGOIs
                         where c.MaChoNgoi == machongoi
                         select c).Single();

            return query;
        }

        public void InsertChoNgoi(CHO_NGOI chongoi)
        {
            _dataContext.CHO_NGOIs.InsertOnSubmit(chongoi);
            _dataContext.SubmitChanges();
        }

        public void DeleteChoNgoi(int machongoi)
        {
            var query = (from c in _dataContext.CHO_NGOIs
                         where c.MaChoNgoi == machongoi
                         select c).Single();

            _dataContext.CHO_NGOIs.DeleteOnSubmit(query);
            _dataContext.SubmitChanges();
        }

        public void UpdateChoNgoi(CHO_NGOI chongoi)
        {
            var query = (from c in _dataContext.CHO_NGOIs
                         where c.MaChoNgoi == chongoi.MaChoNgoi
                         select c).Single();

            query.ViTri = chongoi.ViTri;

            _dataContext.SubmitChanges();
        }
    }
}
