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
				// Hiện tại chỉ hỗ trợ 1 giao diện -> lấy luôn cái phần tử đầu tiên
                image1.ImageUrl = "~/ImageHandler.ashx?Id=1";
				
				// Lấy thông tin ra
                TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
                var thongtins = from a in context.ImageStores select a;
                if (thongtins.Count() == 0)
                    rteGioiThieu.Text = "";
                else
                {
                    //var thongtin = thongtins.First();
                    //rteGioiThieu.Text = thongtin.Intro;
                }
            }
            else
            {
				// Postback : được hiểu là khi user click vào Upload hoặc Submit
				// Vấn đề là button Submit : có handler là javascript (bắt buộc) nên không gọi vào sự kiện Click ở Server được => cần gom lại vào xử lý trong PageLoad luôn
                string strGioiThieu = rteGioiThieu.Text;
                TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();

                var thongtins = from a in context.ImageStores select a;
                if (thongtins.Count() == 0)
                {

                    //context.ImageStores.InsertOnSubmit(new ImageTable { Intro = strGioiThieu });
                }
                else
                {
                    //var thongtin = thongtins.First();
                    //thongtin.Intro = strGioiThieu;
                }
                context.SubmitChanges();

                UploadImage();
            }
        }

        protected void UploadImage()
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
                            var thongtins = from a in context.ImageStores select a;
							
							// Đưa vào CSDL, chưa có thì add cái mới
                            if (thongtins.Count() == 0)
                            {
                                //context.ImageStores.InsertOnSubmit(new ImageTable { Image = binaryObj });
                            }
                            else
                            {
                                // Đã có thì ghi đè vào
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
