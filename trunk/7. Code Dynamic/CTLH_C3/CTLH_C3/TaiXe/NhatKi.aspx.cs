﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;
using System.Web.Security;

namespace CTLH_C3
{
    public partial class NhatKi : CTLH_C3.Core.BasePage
    {
        private string _role = "";
        private string _maNhanVien = "";
        private TRAVEL_WEBDataContext _dataContext = new TRAVEL_WEBDataContext();

        // Nếu người dùng chưa đăng nhập với vai trò "Tài Xế" 
        // thì không cho vào trang
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                _role = Roles.GetRolesForUser(Page.User.Identity.Name)[0];
                _maNhanVien = Roles.GetRolesForUser(Page.User.Identity.Name)[1];

                if (!_role.ToLower().Equals("tài xế"))
                {
                    Response.Redirect("/Default.aspx");
                }
                if (_maNhanVien == null)
                {
                    Response.Redirect("/Default.aspx");
                }
                    
            }
            else
            {
                Response.Redirect("/Default.aspx");
            }            
		}

        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(GridView1, false);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int thisMonth = DateTime.Now.Month;
                int thisYear = DateTime.Now.Year;

                // Khởi tạo 2 droplist tháng và năm
                ListItem item = new ListItem();
                item.Text = thisYear.ToString();
                item.Value = thisYear.ToString();
                dlstNam.Items.Add(item);
                ListItem item2 = new ListItem();
                item2.Text = (thisYear - 1).ToString();
                item2.Value = (thisYear - 1).ToString();
                dlstNam.Items.Add(item2);

                dlstThang.SelectedValue = thisMonth.ToString();
                dlstNam.SelectedValue = thisYear.ToString();

                GridView1.DataBind();
            }         
        }

        protected void dlstThang_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void dlstNam_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();          
        }

        //*** DataSource nằm trong DataBind là để dùng Dynamicdata Gridviewpager ***//
        // -nếu không Gridviewpager không nhận được datasource

        // Chọn các chuyến mà tài xế này đã từng phục vụ
        // (Các chuyến đã đến nơi)
        // Lấy thời điểm khởi hành của chuyến làm căn cứ chuyến thuộc tháng năm nào
        protected void GridView1_DataBinding(object sender, EventArgs e)
        {
            int month = int.Parse(dlstThang.SelectedValue);
            int year = int.Parse(dlstNam.SelectedValue);

            var query = (from c in _dataContext.CHUYEN_XEs
                         join t in _dataContext.TUYEN_XEs on c.MaTuyenXe equals t.MaTuyenXe
                         where (c.MaTaiXe.Equals(_maNhanVien)
                                && c.TINH_TRANG_CHUYEN_XE.TenTinhTrangChuyen.ToLower().Equals("đã về trạm")
                                && c.KhoiHanh.Value.Month == month
                                && c.KhoiHanh.Value.Year == year)
                         select new
                         {
                             MaChuyen = c.MaChuyenXe,
                             TramDi = t.TRAM_XE1.TenTramXe,
                             TramDen = t.TRAM_XE.TenTramXe,
                             KhoiHanh = c.KhoiHanh,
                             ThoiDiemDenTram = c.ThoiGianDenTram,
                             Luong = c.LuongTaiXe
                         }).Distinct();
            GridView1.DataSource = query;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                GridView1.PageIndex = e.NewPageIndex;
                GridView1.DataBind();
            }
            catch
            {

            }
        }
    }
}