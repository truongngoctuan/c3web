using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace Web_c3
{
    public partial class Default : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Test
            //CHUYEN_XE chuyenxe = new CHUYEN_XE();
            //chuyenxe.KhoiHanh = DateTime.Now;
            //chuyenxe.DuKienDen = DateTime.Now;
            //chuyenxe.ThoiGianDenTram=DateTime.Now;
            //chuyenxe.LuongTaiXe = 500000;
            //chuyenxe.GiaVe = 50000;
            //ChuyenXeBUS cxb = new ChuyenXeBUS();
            //cxb.InsertChuyenXe(chuyenxe);            

        }
        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
            AddScript(new string[] { "InitCheckBox();","initDropDownList();"});
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ChuyenXeBUS cxb = new ChuyenXeBUS();
            CHUYEN_XE cx = new CHUYEN_XE();
            cx = cxb.SelectChuyenXeByMaChuyenXe(1);
            tbxTest.Text = cx.GiaVe.ToString();
        }
    }
}
