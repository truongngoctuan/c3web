using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTLH_C3.DieuHanhCongTy.DoanhThu
{
    public partial class Nam : CTLH_C3.Core.BasePage
    {
        TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           
             TableRow row;
            TableCell cell ;
            row = new TableRow();
            cell = new TableCell();
            cell.Text = "Năm";
            row.Cells.Add(cell);
            cell = new TableCell();
            cell.Text = "Doanh thu";
            row.Cells.Add(cell);
            table.Rows.Add(row);
            DateTime min = Convert.ToDateTime((from x in db.CHUYEN_XEs where x.TinhTrang == 3 select x.KhoiHanh).Min());
            int namMin = min.Year;
            int namMax;
            var cxMax = (from x in db.CHUYEN_XEs where x.TinhTrang == 3 select x.KhoiHanh).Max();
            // Kiem tra nam cuoi co het 1 nam
            if (Convert.ToDateTime(cxMax).Month == 12 && Convert.ToDateTime(cxMax).Day == 31)
            {
                namMax = Convert.ToDateTime(cxMax).Year;
            }
            else
            {
                namMax = Convert.ToDateTime(cxMax).Year - 1;
            }
            int i;
            int year = 0;
            double doanhthuChuyenXe = 0;
           
            
            List<double> listDoanhThu = new List<double>(0);
            for (i = 0; i < (namMax - namMin + 1); i++)
            {
                listDoanhThu.Add(0);
                
       
            }
            var listChuyenxe = (from x in db.CHUYEN_XEs where x.TinhTrang == 3 select x);
            foreach (CHUYEN_XE cx in listChuyenxe)
            {
                year = Convert.ToDateTime(cx.KhoiHanh).Year;
                doanhthuChuyenXe = (double)(cx.SoLuongMuaVe * cx.GiaVe);
                listDoanhThu[year - namMin] = listDoanhThu[year - namMin] + doanhthuChuyenXe;
            }

            for (i = 0; i < listDoanhThu.Count; i++)
            {
                row = new TableRow();
                cell = new TableCell();
                cell.Text = (namMin + i).ToString();
                row.Cells.Add(cell);
               
                cell = new TableCell();
                cell.Text = String.Format("{0:c}", listDoanhThu[i].ToString());
                row.Cells.Add(cell);

                table.Rows.Add(row);
            }


            table.DataBind();
        }
    }
}
