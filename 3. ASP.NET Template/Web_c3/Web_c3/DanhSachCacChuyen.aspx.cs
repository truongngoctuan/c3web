using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using BUS;
using DTO;
using System.Collections.Generic;

namespace Web_c3
{
    public partial class DanhSachCacChuyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ChuyenXeBUS chuyenxeBus  =new ChuyenXeBUS();
            List<CHUYEN_XE> lst= chuyenxeBus.SelectAllChuyenXes();
            //
        }
    }
}
