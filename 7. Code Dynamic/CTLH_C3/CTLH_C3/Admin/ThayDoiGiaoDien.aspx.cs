using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.Linq;

namespace CTLH_C3.Admin
{
    public partial class ThayDoiGiaoDien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                image1.ImageUrl = "~/ImageHandler.ashx?Id=1";
                TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
                var thongtins = from a in context.ImageTables select a;
                if (thongtins.Count() == 0)
                    rteGioiThieu.Text = "";
                else
                {
                    var thongtin = thongtins.First();
                    rteGioiThieu.Text = thongtin.Intro;
                }
            }
            else
            {
                string strGioiThieu = rteGioiThieu.Text;
                TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();

                var thongtins = from a in context.ImageTables select a;
                if (thongtins.Count() == 0)
                    context.ImageTables.InsertOnSubmit(new ImageTable { Intro = strGioiThieu });
                else
                {
                    var thongtin = thongtins.First();
                    thongtin.Intro = strGioiThieu;
                }
                context.SubmitChanges(); 
            }
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                    {
                        if (FileUpload1.PostedFile.ContentLength < 102400)
                        {
                            string filename = Path.GetFileName(FileUpload1.FileName);        

                            byte[] fileByte = FileUpload1.FileBytes;
                            Binary binaryObj = new Binary(fileByte);
                            
                            TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();

                            var thongtins = from a in context.ImageTables select a;
                            if (thongtins.Count() == 0)
                                context.ImageTables.InsertOnSubmit(new ImageTable { Image = binaryObj});
                            else
                            {
                                var thongtin = thongtins.First();
                                thongtin.Image = binaryObj;
                            }                               
                            
                            context.SubmitChanges(); 

                            //FileUpload1.SaveAs(Server.MapPath("~/") + filename);
                            StatusLabel.Text = "Upload status: File uploaded!";
                        }
                        else
                            StatusLabel.Text = "Upload status: The file has to be less than 100 kb!";
                    }
                    else
                        StatusLabel.Text = "Upload status: Only JPEG files are accepted!";
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
    }
}
