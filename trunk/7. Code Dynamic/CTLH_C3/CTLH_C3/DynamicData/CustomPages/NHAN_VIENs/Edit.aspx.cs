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
using System.IO;
using System.Data.Linq;

namespace CTLH_C3.NHAN_VIENs
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
                Response.Redirect("~/NHAN_VIENs/List.aspx");
            }
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            if (e.Exception == null || e.ExceptionHandled)
            {
                Response.Redirect("~/NHAN_VIENs/List.aspx");
            }
        }

        /*protected void cusCustom_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            CustomValidator cusCustom = (CustomValidator)sender;
            FileUpload fileUpload = (FileUpload)e.Value;
            if (fileUpload.HasFile)
            {
                try
                {
                    if (fileUpload.PostedFile.ContentType == "image/jpeg"
                            || fileUpload.PostedFile.ContentType == "image/jpg"
                            || fileUpload.PostedFile.ContentType == "image/png"
                            || fileUpload.PostedFile.ContentType == "image/gif")
                    {
                        if (fileUpload.PostedFile.ContentLength < 102400)
                        {
                            string filename = Path.GetFileName(fileUpload.FileName);
                            byte[] fileByte = fileUpload.FileBytes;
                            Binary binaryObj = new Binary(fileByte);

                            //FileUpload1.SaveAs(Server.MapPath("~/") + filename);
                            //cusCustom.ErrorMessage = "Upload status: File uploaded!";
                            e.IsValid = true;
                            return;
                        }
                        //else
                        //    cusCustom.ErrorMessage = "Upload status: The file has to be less than 100 kb!";
                    }
                    //else
                    //    cusCustom.ErrorMessage = "Upload status: Only JPEG, JPG, PNG, GIF files are accepted!";
                }
                catch (Exception ex)
                {
                    //cusCustom.ErrorMessage = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            e.IsValid = false;
        }*/

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
        }
    }
}
