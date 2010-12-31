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
    public partial class XemPhanHoi : CTLH_C3.Core.BasePage
    {
        private string _role = "";
        private string _maNhanVien = "";

        // Nếu người dùng chưa đăng nhập với vai trò "Tài Xế" 
        // thì không cho vào trang
        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                _role = Roles.GetRolesForUser(Page.User.Identity.Name)[0];
                _maNhanVien = Roles.GetRolesForUser(Page.User.Identity.Name)[1];
                if (!_role.ToLower().Equals("tài xế"))
                    Response.Redirect("/Default.aspx");
            }
            else
            {
                Response.Redirect("/Default.aspx");
            }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(GridView1, false);
            DynamicDataManager1.RegisterControl(GridView2, false);
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
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PhanHoiDataSource.AutoGenerateWhereClause = false;
            PhanHoiDataSource.Where = "MaChuyen==" + GridView1.SelectedDataKey.Value;
        }

        protected void dlstThang_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void dlstNam_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_DataBinding(object sender, EventArgs e)
        {
            int month = int.Parse(dlstThang.SelectedValue);
            int year = int.Parse(dlstNam.SelectedValue);

            TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
            var query = (from c in dataContext.CHUYEN_XEs
                         join t in dataContext.TUYEN_XEs on c.MaTuyenXe equals t.MaTuyenXe
                         where (c.MaTaiXe.Equals(_maNhanVien)
                                && c.KhoiHanh.Value.Month == month
                                && c.KhoiHanh.Value.Year == year)
                         select new { MaChuyen = c.MaChuyenXe, TramDi = t.TRAM_XE1.TenTramXe, TramDen = t.TRAM_XE.TenTramXe }).Distinct();
            GridView1.DataSource = query;
            GridView1.DataKeyNames = new string[] { "MaChuyen" };// xác định cột khóa chính
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
