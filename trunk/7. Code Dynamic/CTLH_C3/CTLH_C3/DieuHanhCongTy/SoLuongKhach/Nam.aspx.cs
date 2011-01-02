using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTLH_C3.DieuHanhCongTy.SoLuongKhach
{
    public partial class Nam : System.Web.UI.Page
    {
        TRAVEL_WEBDataContext db = new TRAVEL_WEBDataContext();
        protected static int iSoLuongTuyen;
        protected static int iSoLuongNam;
        protected static int[,] mangSoLuong;
        protected static int iNamMin;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            TableRow row;
            TableCell cell;

            DateTime min = Convert.ToDateTime((from x in db.CHUYEN_XEs where x.TinhTrang == 3 select x.KhoiHanh).Min());
            int namMin = min.Year;
            int namMax;
            var cxMax = (from x in db.CHUYEN_XEs where x.TinhTrang == 3 select x.KhoiHanh).Max();
            namMax = Convert.ToDateTime(cxMax).Year;
            var tuyenxe = (from tx in db.TUYEN_XEs
                           select tx);

            iSoLuongNam = namMax - namMin + 1;
            iSoLuongTuyen = tuyenxe.Count<TUYEN_XE>();
            iNamMin = namMin;
            mangSoLuong = new int[ iSoLuongTuyen,iSoLuongNam];

            int i;
            for (i = 0; i < iSoLuongNam; i++)
            {

                cell = new TableCell();
                cell.Text = (namMin + i).ToString();
                //cell.Visible = false;
                table.Rows[0].Cells.Add(cell);
                DropDownList_Nam.Items.Add((namMin + i).ToString());
            }
            i = 1;
            foreach (TUYEN_XE tx in tuyenxe)
            {
                row = new TableRow();
                table.Rows.Add(row);

                cell = new TableCell();
                cell.Text = tx.TenTuyenXe;
                //cell.Visible = false;
                table.Rows[i].Cells.Add(cell);
                DropDownList_TuyenXe.Items.Add(tx.TenTuyenXe);
                
                i++;
            }
          
            // Tinh so luong khach cho tat ca
            TinhSoLuongKhach();
        }
        protected void DropDownList_Nam_SelectedIndexChanged(object sender, EventArgs e)
        {
            HienThi();
        }
        protected void DropDownList_TuyenXe_SelectedIndexChanged(object sender, EventArgs e)
        {
            HienThi();
        }
        protected void DropDownList_TuyenXe_PreRender(object sender, EventArgs e)
        {
            HienThi();
        }
        protected void DropDownList_Nam_PreRender(object sender, EventArgs e)
        {

            HienThi();
        }
        protected void HienThi()
        {
            int i;
            int j;
            // Cho an het
            for (i = 0; i < iSoLuongTuyen; i++)
            {
                for (j = 0; j < iSoLuongNam; j++)
                {
                    table.Rows[i].Cells[j].Visible = false;
                }
            }

            if (DropDownList_Nam.SelectedIndex == 0)// Chon tat ca cac nam
            {
                if (DropDownList_TuyenXe.SelectedIndex == 0)// Chon tat ca cac tuyen
                {

                    for (i = 0; i <= iSoLuongTuyen; i++)// hien thi tat cac cac dong
                    {
                        table.Rows[i].Visible = true;
                    }
                }
                else
                {
                    table.Rows[DropDownList_TuyenXe.SelectedIndex].Visible = true;
                }
            }
            else
            {
                if (DropDownList_TuyenXe.SelectedIndex == 0)// Chon tat ca cac tuyen
                {
                    for (i = 0; i <= iSoLuongTuyen; i++)// hien thi tat cac cac dong
                    {
                        table.Rows[i].Cells[DropDownList_Nam.SelectedIndex].Visible = true;
                    }
                }
                else
                {
                    table.Rows[DropDownList_TuyenXe.SelectedIndex].Cells[DropDownList_Nam.SelectedIndex].Visible = true;
                }
            }
        }
        public void TinhSoLuongKhach()
        {
            
            int i;
            int j;
            TableCell cell;
            for(i = 0; i < iSoLuongTuyen; i++)
            {
                for (j = 0; j < iSoLuongNam; j++ )
                {
                    cell = new TableCell();
                    cell.Visible = false;
                    table.Rows[i + 1].Cells.Add(cell);
                    mangSoLuong[i,j] = 0;
                    
                }
            }
           
            if(DropDownList_Nam.SelectedIndex == 0)
            {
                return;
            }
            int maTuyen;
            int year;
           
         
            var listChuyenxe = (from x in db.CHUYEN_XEs where x.TinhTrang == 3 select x);
            foreach (CHUYEN_XE cx in listChuyenxe)
            {
                maTuyen = Convert.ToInt32(cx.MaTuyenXe);
                year = Convert.ToDateTime(cx.KhoiHanh).Year;
                mangSoLuong[maTuyen - 1, year - iNamMin] = mangSoLuong[maTuyen - 1, year - iNamMin] + (int)cx.SoLuongMuaVe;
            }

         

           
        }
    }
}
