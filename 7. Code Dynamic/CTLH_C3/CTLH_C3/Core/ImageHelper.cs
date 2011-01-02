using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data.Linq;
using System.Web.UI.WebControls;

namespace CTLH_C3
{
    public class ImageHelper
    {
        public static void updateImage(Binary imageData, int id)
        {
            TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
            var img = (from i in context.IMAGE_STOREs where i.Id == id select i).Single();
            img.Image = imageData;
            context.SubmitChanges();
        }
        public static int insertImage(Binary imageData)
        {
            TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
            IMAGE_STORE img = new IMAGE_STORE();
            img.Image = imageData;
            context.IMAGE_STOREs.InsertOnSubmit(img);
            context.SubmitChanges();
            return img.Id;
        }

        public static Binary getUploadImage(FileUpload fileUpload, Label status)
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
                            status.Text = "Upload status: File uploaded!";
                            return binaryObj;
                        }
                        else
                            status.Text = "Upload status: The file has to be less than 100 kb!";
                    }
                    else
                        status.Text = "Upload status: Only JPEG, JPG, PNG, GIF files are accepted!";
                }
                catch (Exception ex)
                {
                    status.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            return null;
        }
    }
}
