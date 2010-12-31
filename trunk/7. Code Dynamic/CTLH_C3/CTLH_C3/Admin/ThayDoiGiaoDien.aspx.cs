using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.Linq;
using CTLH_C3.Core;

namespace CTLH_C3.Admin
{
    public partial class ThayDoiGiaoDien : BasePage
    {
        protected void getThongTin(out int banner, out int slogan, out int logo, out string gioithieu)
        {
            gioithieu = "";
            banner = slogan = logo = -1;
            TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
            var thongtincongtys = from t in context.THONG_TIN_CONG_Ties select t;
            var thongtincongty = new THONG_TIN_CONG_TY();
            if (thongtincongtys.Count() > 0)            
                thongtincongty = thongtincongtys.First();

            if (thongtincongty.Banner != null)
                banner = (int)thongtincongty.Banner;
            if (thongtincongty.Slogan != null)
                slogan = (int)thongtincongty.Slogan;
            if (thongtincongty.Logo != null)
                logo = (int)thongtincongty.Logo;
            if (thongtincongty.TinTucGioiThieu != null)
                gioithieu = thongtincongty.TinTucGioiThieu;
        }
        protected string getImageURL(int id)
        {
            if (id == -1)
                return "~/images/upload.png";
            return "~/ImageHandler.ashx?Id=" + id;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
            //    // Postback : được hiểu là khi user click vào Upload hoặc Submit
            //    // Vấn đề là button Submit : có handler là javascript (bắt buộc) nên không gọi vào sự kiện Click ở Server được => cần gom lại vào xử lý trong PageLoad luôn
            //    string strGioiThieu = rteGioiThieu.Text;
            //    Binary banner, slogan, logo;
            //    bool bInsertNew = true;
            //    banner = getUploadImage(uploadBanner, sttBanner);
            //    slogan = getUploadImage(uploadSlogan, sttSlogan);
            //    logo = getUploadImage(uploadLogo, sttLogo);
            //    // Tương tự cho các hình khác
            //    TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
            //    var thongtincongtys = from t in context.THONG_TIN_CONG_Ties select t;
            //    var thongtincongty = new THONG_TIN_CONG_TY();
            //    if (thongtincongtys.Count() > 0)
            //    {
            //        bInsertNew = false;
            //        thongtincongty = thongtincongtys.First();
            //    }


            //    if (banner != null)
            //    {
            //        if (thongtincongty.Banner == null)
            //            thongtincongty.Banner = insertImage(banner);
            //        else
            //            updateImage(banner, (int)thongtincongty.Banner);
            //    }
            //    if (slogan != null)
            //    {
            //        if (thongtincongty.Slogan == null)
            //            thongtincongty.Slogan = insertImage(slogan);
            //        else
            //            updateImage(slogan, (int)thongtincongty.Slogan);
            //    }
            //    if (logo != null)
            //    {
            //        if (thongtincongty.Logo == null)
            //            thongtincongty.Logo = insertImage(logo);
            //        else
            //            updateImage(logo, (int)thongtincongty.Logo);
            //    }

            //    if (strGioiThieu != null)
            //        thongtincongty.TinTucGioiThieu = strGioiThieu;

            //    if (bInsertNew == true)
            //        context.THONG_TIN_CONG_Ties.InsertOnSubmit(thongtincongty);

            //    context.SubmitChanges();
            //}

            if (!IsPostBack)
            {
                int bannerId, sloganId, logoId;
                string gioithieuHTML;
                getThongTin(out bannerId, out sloganId, out logoId, out gioithieuHTML);
                //imgBanner.ImageUrl = getImageURL(bannerId);
                //imgSlogan.ImageUrl = getImageURL(sloganId);
                //imgLogo.ImageUrl = getImageURL(logoId);
                rteGioiThieu.Text = gioithieuHTML;
            }
        }
        protected void updateImage(Binary imageData, int id)
        {
            TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
            var img = (from i in context.IMAGE_STOREs where i.Id == id select i).Single();
            img.Image = imageData;
            context.SubmitChanges();
        }
        protected int insertImage(Binary imageData)
        {
            TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
            IMAGE_STORE img = new IMAGE_STORE();
            img.Image = imageData;
            context.IMAGE_STOREs.InsertOnSubmit(img);
            context.SubmitChanges();
            return img.Id;
        }
        protected Binary getUploadImage(FileUpload fileUpload, Label status)
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            //if (IsPostBack)
            {
                // Postback : được hiểu là khi user click vào Upload hoặc Submit
                // Vấn đề là button Submit : có handler là javascript (bắt buộc) nên không gọi vào sự kiện Click ở Server được => cần gom lại vào xử lý trong PageLoad luôn
                string strGioiThieu = rteGioiThieu.Text;
                Binary banner, slogan, logo;
                bool bInsertNew = true;
                banner = getUploadImage(uploadBanner, sttBanner);
                slogan = getUploadImage(uploadSlogan, sttSlogan);
                logo = getUploadImage(uploadLogo, sttLogo);
                // Tương tự cho các hình khác
                TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
                var thongtincongtys = from t in context.THONG_TIN_CONG_Ties select t;
                var thongtincongty = new THONG_TIN_CONG_TY();
                if (thongtincongtys.Count() > 0)
                {
                    bInsertNew = false;
                    thongtincongty = thongtincongtys.First();
                }


                if (banner != null)
                {
                    if (thongtincongty.Banner == null)
                        thongtincongty.Banner = insertImage(banner);
                    else
                        updateImage(banner, (int)thongtincongty.Banner);
                }
                if (slogan != null)
                {
                    if (thongtincongty.Slogan == null)
                        thongtincongty.Slogan = insertImage(slogan);
                    else
                        updateImage(slogan, (int)thongtincongty.Slogan);
                }
                if (logo != null)
                {
                    if (thongtincongty.Logo == null)
                        thongtincongty.Logo = insertImage(logo);
                    else
                        updateImage(logo, (int)thongtincongty.Logo);
                }

                if (strGioiThieu != null)
                    thongtincongty.TinTucGioiThieu = strGioiThieu;

                if (bInsertNew == true)
                    context.THONG_TIN_CONG_Ties.InsertOnSubmit(thongtincongty);

                context.SubmitChanges();
            }


            int bannerId, sloganId, logoId;
            string gioithieuHTML;
            getThongTin(out bannerId, out sloganId, out logoId, out gioithieuHTML);
            //imgBanner.ImageUrl = getImageURL(bannerId);
            //imgSlogan.ImageUrl = getImageURL(sloganId);
            //imgLogo.ImageUrl = getImageURL(logoId);
            rteGioiThieu.Text = gioithieuHTML;
        }
    }
}
