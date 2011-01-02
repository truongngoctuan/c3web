using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.DynamicData;

namespace CTLH_C3.PHAN_HOI_KHACH_HANGs
{
    public partial class Details : CTLH_C3.Core.BasePage
    {
        protected MetaTable table;
        private TRAVEL_WEBDataContext db;

        protected void Page_Init(object sender, EventArgs e)
        {
            DynamicDataManager1.RegisterControl(DetailsView1);
            db = new TRAVEL_WEBDataContext();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            table = DetailsDataSource.GetTable();
            Title = table.DisplayName;

            ListHyperLink.NavigateUrl = table.ListActionPath;

        }

        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            if (e.Exception == null || e.ExceptionHandled)
            {
                Response.Redirect(table.ListActionPath);
            }
        }

        protected void OnFilterSelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.PageIndex = 0;
        }

        protected void GridDataSource_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
           

        }

        protected void LinqDataSource1_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            var results = (from c in db.CHUYEN_XEs
                             select new { c.KhoiHanh }).Distinct();
            e.Result = results;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectItem")
            {
                GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];

                int iMaChuyenXe = Convert.ToInt32(row.Cells[4].Text);

                var x = (from y in db.PHAN_HOI_KHACH_HANGs where y.MaPhanHoi == DetailsView1.PageIndex select y).Single();
                //x.Duyet = 2;
                db.SubmitChanges();

                PHAN_HOI ph = new PHAN_HOI();
                ph.MaChuyen = iMaChuyenXe;
                ph.MaPhanHoiKhach = DetailsView1.PageIndex;
                db.PHAN_HOIs.InsertOnSubmit(ph);
                db.SubmitChanges();

            }
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

      
    }
}
