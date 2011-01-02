﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTLH_C3.DieuHanhCongTy.SoLuongKhach
{
    public partial class Thang : System.Web.UI.Page
    {
        TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
            
            DateTime min = Convert.ToDateTime((from x in db.CHUYEN_XEs where x.TinhTrang == 3 select x.KhoiHanh).Min());
            int namMin = min.Year;
            int namMax;
            var cxMax = (from x in db.CHUYEN_XEs where x.TinhTrang == 3 select x.KhoiHanh).Max();
            namMax = Convert.ToDateTime(cxMax).Year;

            int i;
            for (i = 0; i < (namMax - namMin + 1); i++)
            {
                
                DropDownList_Nam.Items.Add((namMin+i).ToString());
            }

           
        }

        protected void DropDownList_Nam_SelectedIndexChanged(object sender, EventArgs e)
        {
            TinhDoanhSo();
        }

        protected void DropDownList_Nam_PreRender(object sender, EventArgs e)
        {
            TinhDoanhSo();
        }
        public void TinhDoanhSo()
        {
            TableRow row;
            TableCell cell;
            int i;
            int year = 0;
            int month = 0;
            int yearSelected = Convert.ToInt32(DropDownList_Nam.SelectedItem.Text);
            double doanhthuChuyenXe = 0;
            List<double> listDoanhThu = new List<double>(0);
            for (i = 0; i < 12; i++)
            {
                listDoanhThu.Add(0);
            }
            var listChuyenxe = (from x in db.CHUYEN_XEs where x.TinhTrang == 3 select x);
            foreach (CHUYEN_XE cx in listChuyenxe)
            {
                year = Convert.ToDateTime(cx.KhoiHanh).Year;
                if (year == yearSelected)
                {
                    month = Convert.ToDateTime(cx.KhoiHanh).Month;
                    doanhthuChuyenXe = (double)(cx.SoLuongMuaVe * cx.GiaVe);
                    listDoanhThu[month - 1] = listDoanhThu[month - 1] + doanhthuChuyenXe;
                }
            }

            for (i = 0; i < listDoanhThu.Count; i++)
            {
                row = new TableRow();
                cell = new TableCell();
                cell.Text = (i + 1).ToString();
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
