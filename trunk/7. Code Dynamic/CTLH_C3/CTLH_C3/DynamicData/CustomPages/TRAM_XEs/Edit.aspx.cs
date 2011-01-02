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
using System.Data.Linq;

namespace CTLH_C3.TRAM_XEs
{
    public partial class Edit : CTLH_C3.Core.BasePage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            if (e.CommandName == DataControlCommands.CancelCommandName)
            {
                Response.Redirect("~/TRAM_XEs/List.aspx");
            }
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            if (e.Exception == null || e.ExceptionHandled)
            {
                Response.Redirect("~/TRAM_XEs/List.aspx");
            }
        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            FileUpload fileUpload = (FileUpload)((DetailsView)sender).FindControl("fileUpload");
            Label sttUpload = (Label)((DetailsView)sender).FindControl("sttImageUpload");
            Binary imageBinary = ImageHelper.getUploadImage(fileUpload, sttUpload);
            if (imageBinary != null)
            {
                TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
                var hinhanh = (from tx in context.TRAM_XEs where tx.MaTramXe == int.Parse((string)e.Keys["MaTramXe"].ToString()) select tx.HinhAnh).Single();
                if (hinhanh == null || hinhanh < 1)
                    e.NewValues["HinhAnh"] = ImageHelper.insertImage(imageBinary);
                else
                    ImageHelper.updateImage(imageBinary, (int)hinhanh);
            }            

            DetailsView detail = (DetailsView)sender;
            DropDownList ddlNhanViens = (DropDownList)detail.FindControl("ddlNhanViens");
            e.NewValues["MaTruongTram"] = ddlNhanViens.SelectedValue;
        }

        protected void DetailsView1_DataBound(object sender, EventArgs e)
        {
            DetailsView detail = (DetailsView)sender;
            DropDownList ddlNhanViens = (DropDownList)detail.FindControl("ddlNhanViens");
            ddlNhanViens.SelectedValue = ((TRAM_XE)detail.DataItem).MaTruongTram.ToString();
        }
    }
}
