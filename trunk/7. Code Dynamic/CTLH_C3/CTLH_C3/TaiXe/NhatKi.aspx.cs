using System;
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

        // Nếu người dùng chưa đăng nhập với vai trò "Tài Xế" 
        // thì không cho vào trang
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Page.User.Identity.IsAuthenticated)
                {
                    _role = Roles.GetRolesForUser(Page.User.Identity.Name)[0];
                    _maNhanVien = Roles.GetRolesForUser(Page.User.Identity.Name)[1];
                    if (!_role.Equals("Tài Xế"))
                        Response.Redirect("/Default.aspx");
                }
                else
                {
                    Response.Redirect("/Default.aspx");
                }
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
                // Khởi tạo 2 dropdownlist chọn tháng và năm
                ListItem i = new ListItem(DateTime.Now.Year.ToString(), DateTime.Now.Year.ToString());
                lstNam.Items.Add(i);
                i=new ListItem((DateTime.Now.Year-1).ToString(), (DateTime.Now.Year-1).ToString());
                lstNam.Items.Add(i);
                lstNam.SelectedIndex=0;
                lstThang.SelectedValue = DateTime.Now.Month.ToString();
              
                getData();
            }
        }

        // Chọn các chuyến mà tài xế này đã từng phục vụ
        // (Các chuyến đã đến nơi)
        // Lấy thời điểm khởi hành của chuyến làm căn cứ chuyến thuộc tháng năm nào
        private void getData()
        {
            int month = int.Parse(lstThang.SelectedValue);
            int year = int.Parse(lstNam.SelectedValue);
            try
            {
                // Tại đây có một lỗi liên quan chuyển đổi chuỗi và ngày tháng
                // Lỗi không xảy ra lúc load nhưng xảy ra lúc chọn tháng năm
                TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
                var query = (from c in dataContext.CHUYEN_XEs
                             join t in dataContext.TUYEN_XEs on c.MaTuyenXe equals t.MaTuyenXe
                             where (c.MaTaiXe.Equals(_maNhanVien)
                                    && c.ThoiGianDenTram != null
                                    && c.KhoiHanh.Value.Month == month
                                    && c.KhoiHanh.Value.Year == year)
                             select new { MaChuyen = c.MaChuyenXe, 
                                         TramDi = t.TRAM_XE1.TenTramXe, 
                                         TramDen = t.TRAM_XE.TenTramXe, 
                                         KhoiHanh = c.KhoiHanh, 
                                         DuKienDen = c.DuKienDen, 
                                         ThoiDiemDenTram = c.ThoiGianDenTram, 
                                         Luong = c.LuongTaiXe }).Distinct();

                GridView1.DataSource = query;
                GridView1.DataBind();
            }
            catch
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
            
        }

        protected void lstThang_SelectedIndexChanged(object sender, EventArgs e)
        {
            getData();
        }

        protected void lstNam_SelectedIndexChanged(object sender, EventArgs e)
        {
            getData();
        }

    }
}
