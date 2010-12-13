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

namespace CTLH_C3.Guest
{
    public partial class user_Guest_TimKiemTuyenXe : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void addNoiDi(string arg)
        {
            ddlNoiKhoihanh.Items.Add(arg);
        }

        public void addNoiDen(string arg)
        {
            ddlNoiDen.Items.Add(arg);
        }

        public string getNoiDi()
        {
            return ddlNoiKhoihanh.SelectedItem.Text;
        }

        public string getNoiDen()
        {
            return ddlNoiDen.SelectedItem.Text;
        }

        // Hàm này để kiểm tra xem trong 
        //  control có dữ liệu chưa
        //
        public Boolean haveData()
        {
            if (ddlNoiDen.Items.Count > 0)
            {
                return true;
            }
            return false;
        }
    }
}