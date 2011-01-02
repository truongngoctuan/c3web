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

namespace CTLH_C3.NHAN_VIENs
{
    public partial class Insert : CTLH_C3.Core.BasePage
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
                Response.Redirect("~/NHAN_VIENs/List.aspx");
            }
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            if (e.Exception == null || e.ExceptionHandled)
            {
                Response.Redirect("~/NHAN_VIENs/List.aspx");
            }
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload fileUpload = (FileUpload)((DetailsView)sender).FindControl("fileUpload");
            Label sttUpload = (Label)((DetailsView)sender).FindControl("sttImageUpload");
            Binary imageBinary = ImageHelper.getUploadImage(fileUpload, sttUpload);
            if (imageBinary == null)
            {
                e.Cancel = true;
                return;
            }

            e.Values["HinhAnh"] = ImageHelper.insertImage(imageBinary);
        }
    }
}
