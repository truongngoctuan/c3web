using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
using System.Web.Services;
using System.Net;
using System.IO;

namespace Web_c3
{
    public partial class Default : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!user_Guest_TimKiemTuyenXe1.haveData())
            {
                TramXeBUS tramxeBus = new TramXeBUS();
                List<TRAM_XE> lstTram = tramxeBus.SelectAllTramXes();
                for (int i = 0; i < lstTram.Count; i++)
                {
                    user_Guest_TimKiemTuyenXe1.addNoiDi(lstTram[i].TenTramXe);
                    user_Guest_TimKiemTuyenXe1.addNoiDen(lstTram[i].TenTramXe);
                }
            }*/
        }

        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
            //AddScript(new string[] { "InitCheckBox();","initDropDownList();"});
        }
    }
}
