using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTLH_C3.DieuHanhCongTy.SoLuongKhach
{
    public partial class Nam : CTLH_C3.Core.BasePage
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
            //HienThi();
        }
        protected void DropDownList_Nam_PreRender(object sender, EventArgs e)
        {
            //HienThi();
        }
        protected void RowHeader()
        {
            TableCell cell;
            TableRow rowHeader;
            int i;
            // Row tieu de
            rowHeader = new TableRow();
            cell = new TableCell();
            cell.Text = "Tên tuyến xe";
            rowHeader.Cells.Add(cell);

            for (i = 0; i < iSoLuongNam; i++)
            {

                cell = new TableCell();
                cell.Text = "Năm " + (iNamMin + i).ToString();
                rowHeader.Cells.Add(cell);

            }
            table.Rows.Add(rowHeader);
        }
        protected void HienThi()
        {
            TableCell cell;
            TableRow row;
            TableRow rowHeader;
            table.Rows.Clear();
            RowHeader();
            int i;
            int j;
            int iNam = DropDownList_Nam.SelectedIndex;
            int iTuyen = DropDownList_TuyenXe.SelectedIndex;
            // Row tieu de
            rowHeader = new TableRow();
            cell = new TableCell();
            cell.Text = "Tên tuyến xe";
            rowHeader.Cells.Add(cell);
            if(iNam == 0)// tat ca cac nam
            {
                iNam = iSoLuongNam;
                if (iTuyen != 0)// 1 tuyen cu the
                {
                    row = new TableRow();
                    // ten tuyen xe
                    cell = new TableCell();
                    cell.Text = DropDownList_TuyenXe.Items[iTuyen].Text;
                    row.Cells.Add(cell);
                    for (i = 0; i < iNam; i++)
                    {
                        

                        cell = new TableCell();
                        cell.Text = mangSoLuong[ iTuyen -1 ,i].ToString();
                        row.Cells.Add(cell);

                    }
                    
                    table.Rows.Add(row);
                    return;
                }
                else// tat ca cac tuyen xe
                {
                    iTuyen = iSoLuongTuyen;
                    for (j = 0; j < iTuyen; j++ )
                    {
                        row = new TableRow();
                        // ten tuyen xe
                        cell = new TableCell();
                        cell.Text = DropDownList_TuyenXe.Items[j + 1].Text;
                        row.Cells.Add(cell);
                        for (i = 0; i < iNam; i++)
                        {
                         
                            cell = new TableCell();
                            cell.Text = mangSoLuong[j, i].ToString();
                            row.Cells.Add(cell);
                        }
                        table.Rows.Add(row);
                    }
                    return;
                }
            }
            else
            {
                if(iTuyen == 0)
                {
                    iTuyen = iSoLuongTuyen;
                    for (j = 0; j < iTuyen; j++)
                    {
                        row = new TableRow();
                        // ten tuyen xe
                        cell = new TableCell();
                        cell.Text = DropDownList_TuyenXe.Items[j + 1].Text;
                        row.Cells.Add(cell);

                        cell = new TableCell();
                        cell.Text = mangSoLuong[j, iNam - 1].ToString();
                        row.Cells.Add(cell);

                        table.Rows.Add(row);
                    }
                    
                }
                else
                {
                    row = new TableRow();
                    // ten tuyen xe
                    cell = new TableCell();
                    cell.Text = DropDownList_TuyenXe.Items[iTuyen].Text;
                    row.Cells.Add(cell);

                    cell = new TableCell();
                    cell.Text = mangSoLuong[iTuyen - 1, iNam - 1].ToString();
                    row.Cells.Add(cell);

                    table.Rows.Add(row);
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
                    
                    table.Rows[i + 1].Cells.Add(cell);
                    mangSoLuong[i,j] = 0;
                    
                }
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

            for (i = 0; i < iSoLuongTuyen; i++)
            {
                for (j = 0; j < iSoLuongNam; j++)
                {
                    cell = new TableCell();

                    table.Rows[i + 1].Cells[j + 1].Text = mangSoLuong[i, j].ToString(); ;
                    

                }
            }
            table.DataBind();
           
        }
    }
}
