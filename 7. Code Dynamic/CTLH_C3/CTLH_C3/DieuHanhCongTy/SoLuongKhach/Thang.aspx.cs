using System;
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
        protected static int iSoLuongTuyen;
        protected static int iSoLuongNam;
        protected static int iSoLuongThang = 12;
        protected static int[,] mangSoLuong;
        protected static int iNamMin;
        protected static int iNamSelect;
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
            
        }
        protected void DropDownList_Nam_SelectedIndexChanged(object sender, EventArgs e)
        {
            iNamSelect = Convert.ToInt32(DropDownList_Nam.SelectedValue);
            mangSoLuong = new int[iSoLuongTuyen, iSoLuongThang];
            TinhSoLuongKhach();
            HienThi();
        }
        protected void DropDownList_TuyenXe_SelectedIndexChanged(object sender, EventArgs e)
        {
            //HienThi();
        }
        protected void DropDownList_TuyenXe_PreRender(object sender, EventArgs e)
        {
           
        }
        protected void DropDownList_Nam_PreRender(object sender, EventArgs e)
        {
            iNamSelect = Convert.ToInt32(DropDownList_Nam.Items[0].Text);
            mangSoLuong = new int[iSoLuongTuyen, iSoLuongThang];
            TinhSoLuongKhach();
            HienThi();
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

            for (i = 0; i < iSoLuongThang; i++)
            {

                cell = new TableCell();
                cell.Text = "Tháng " + (i+1).ToString();
                rowHeader.Cells.Add(cell);

            }
            table.Rows.Add(rowHeader);
        }
        protected void HienThi()
        {
            TableCell cell;
            TableRow row;
            table.Rows.Clear();
            RowHeader();
            int i;
            int j;
            int iNam = DropDownList_Nam.SelectedIndex;
            int iTuyen = DropDownList_TuyenXe.SelectedIndex;
            
          
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

                        for (i = 0; i < iSoLuongThang; i++ )
                        {
                            cell = new TableCell();
                            cell.Text = mangSoLuong[j, i].ToString();
                            row.Cells.Add(cell);
                        }
                       
                        table.Rows.Add(row);
                    }
                    
                }
                else
                {
                    j = iTuyen - 1;
                    row = new TableRow();
                    // ten tuyen xe
                    cell = new TableCell();
                    cell.Text = DropDownList_TuyenXe.Items[iTuyen].Text;
                    row.Cells.Add(cell);

                    for (i = 0; i < iSoLuongThang; i++)
                    {
                        cell = new TableCell();
                        cell.Text = mangSoLuong[j, i].ToString();
                        row.Cells.Add(cell);
                    }

                    table.Rows.Add(row);
                }
            
        }
    
        
        public void TinhSoLuongKhach()
        {
            
            int i;
            int j;
            TableCell cell;
            for(i = 0; i < iSoLuongTuyen; i++)
            {
                for (j = 0; j < iSoLuongThang; j++ )
                {
                    cell = new TableCell();
                    
                    table.Rows[i + 1].Cells.Add(cell);
                    mangSoLuong[i,j] = 0;
                    
                }
            }
 
            int maTuyen;
            int year;
           int month;
         
            var listChuyenxe = (from x in db.CHUYEN_XEs where x.TinhTrang == 3 select x);
            foreach (CHUYEN_XE cx in listChuyenxe)
            {
                maTuyen = Convert.ToInt32(cx.MaTuyenXe);
                year = Convert.ToDateTime(cx.KhoiHanh).Year;
                if (year == iNamSelect)
                {
                    month = Convert.ToDateTime(cx.KhoiHanh).Month;
                    mangSoLuong[maTuyen - 1, month - 1] = mangSoLuong[maTuyen - 1, month - 1] + (int)cx.SoLuongMuaVe;
                  
                    
                }
                
            }

            for (i = 0; i < iSoLuongTuyen; i++)
            {
                for (j = 0; j < iSoLuongThang; j++)
                {
                    cell = new TableCell();

                    table.Rows[i + 1].Cells[j + 1].Text = mangSoLuong[i, j].ToString(); ;
                    

                }
            }
            table.DataBind();
           
        }
    }
}
