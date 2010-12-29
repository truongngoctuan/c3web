using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;
using CTLH_C3.Core;

namespace CTLH_C3
{
    public partial class TimKiemChuyen : BasePage
    {
        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
            if (Session["AdvanceSearch"] == null)
            {
                Session.Add("AdvanceSearch", false);
            }
        }
        protected void Page_Init(object sender, EventArgs e)
        {
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["MaTramDi"] != null)
                ddlTramDi.SelectedValue = Request.QueryString["MaTramDi"];
            if (Request.QueryString["MaTramDen"] != null)
                ddlTramDen.SelectedValue = Request.QueryString["MaTramDen"];
        }

        protected DateTime getTimeToday(string str)
        {
            string[] part = str.Split(new char[] { ':' }, StringSplitOptions.RemoveEmptyEntries);
            if (part.Length != 2)
                return DateTime.MinValue;
            int hour, minute;
            try
            {
                hour = int.Parse(part[0]);
                minute = int.Parse(part[2]);
            }
            catch (FormatException ex)
            {
                return DateTime.MinValue;
            }
            if (hour < 0 || hour >= 24 || minute < 0 || minute >= 60)
                return DateTime.MinValue;
            return DateTime.Today.AddHours(hour).AddMinutes(minute);
        }

        protected void LinqDataSource2_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            TRAVEL_WEBDataContext dataContext = new TRAVEL_WEBDataContext();
            IQueryable<CHUYEN_XE> chuyenXeQuery = dataContext.CHUYEN_XEs;
            /*chuyenXeQuery = chuyenXeQuery.Where(
                    c => c.KhoiHanh >= DateTime.Today && c.KhoiHanh <= DateTime.Today.AddDays(1)
                );*/
            if(ddlTramDi.SelectedItem.Text != "All")
            {
			    chuyenXeQuery = chuyenXeQuery.Where(
                                c => c.TUYEN_XE.MaTramDi.ToString() == ddlTramDi.SelectedValue);
            }
			if(ddlTramDen.SelectedItem.Text != "All")
			{
				chuyenXeQuery = chuyenXeQuery.Where(
                                c => c.TUYEN_XE.MaTramDen.ToString() == ddlTramDen.SelectedValue);
			}
            /*bool bAdvanceSearch = (bool)Session["AdvanceSearch"];
            if (bAdvanceSearch)
            {
                DateTime khoiHanhMin = getTimeToday(tbKhoiHanhMin.Text);
                DateTime khoiHanhMax = getTimeToday(tbKhoiHanhMax.Text);
                int soChoTrongMin = int.MinValue;
                try
                {
                    soChoTrongMin = int.Parse(tbSoChoTrongMin.Text);
                }
                catch(FormatException ex)
                {
                    soChoTrongMin = int.MinValue;
                }
                if (khoiHanhMin != DateTime.MinValue && khoiHanhMax != DateTime.MinValue && soChoTrongMin >= 0)
                {
                    
                    chuyenXeQuery = chuyenXeQuery.Where(
                        c => c.KhoiHanh >= khoiHanhMin && c.KhoiHanh <= khoiHanhMax
                            && c.DAT_CHOs.Count > soChoTrongMin);
                }
            }*/
            var chuyenXes = from chuyenXe in chuyenXeQuery
                            select new
                            {
                                chuyenXe.MaChuyenXe,
                                chuyenXe.KhoiHanh,
                                chuyenXe.GiaVe,
                                SoChoTrong = chuyenXe.DAT_CHOs.Count
                            };
            e.Result = chuyenXes;
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            gvChuyenXe.DataBind();
        }

        protected void btAdvanceSearch_Click(object sender, EventArgs e)
        {
            bool bAdvanceSearch = (bool)Session["AdvanceSearch"];
            bAdvanceSearch = !bAdvanceSearch;
            AdvanceSearchRegion.Visible = bAdvanceSearch;
            Session["AdvanceSearch"] = bAdvanceSearch;
        }
    }
}
