using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Specialized;
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

namespace CTLH_C3
{
    public partial class Image_EditField : FieldTemplateUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected override void ExtractValues(IOrderedDictionary dictionary)
        {
            if(fileUpload.HasFile)
                dictionary[Column.Name] = ConvertEditedValue(fileUpload.FileBytes.ToString());
        }

        protected void cusCustom_ServerValidate(object sender, ServerValidateEventArgs e)
        {
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
                            cusCustom.ErrorMessage = "Upload status: File uploaded!";
                            e.IsValid = true;
                            return;
                        }
                        else
                            cusCustom.ErrorMessage = "Upload status: The file has to be less than 100 kb!";
                    }
                    else
                        cusCustom.ErrorMessage = "Upload status: Only JPEG, JPG, PNG, GIF files are accepted!";
                }
                catch (Exception ex)
                {
                    cusCustom.ErrorMessage = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            e.IsValid = false;
        }

        public override Control DataControl
        {
            get
            {
                return fileUpload;
            }
        }

    }

}
