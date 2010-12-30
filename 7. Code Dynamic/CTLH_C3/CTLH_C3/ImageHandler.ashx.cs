﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.IO;
using System.Drawing;

namespace CTLH_C3
{
    /// <summary>
    /// Summary description for $codebehindclassname$
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class ImageHandler : IHttpHandler
    {
		// Tự động được gọi
        public void ProcessRequest(HttpContext context)
        {
            int id = int.Parse(context.Request.QueryString["Id"]);
            context.Response.ContentType = "image/jpeg";
            Stream strm = ShowEmpImage(id);
            byte[] buffer = new byte[4096];
            int byteSeq = strm.Read(buffer, 0, 4096);
            while (byteSeq > 0)
            {
				// Ghi dữ liệu của Image vào responce
                context.Response.OutputStream.Write(buffer, 0, byteSeq);
                byteSeq = strm.Read(buffer, 0, 4096);
            }
        }

        public Stream ShowEmpImage(int id)
        {
            MemoryStream stream = null;
            TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
            var imageList = (from img in context.ImageStores where img.Id == id select img);
            
			// Lấy image từ CSDL ra, nếu chưa có thì dùng ảnh mặc định
            if (imageList.Count() == 0)
                stream = GetDefaultImageStream();
            else
            {
                var image = imageList.Single();
                if(image.Image == null)
                    stream = GetDefaultImageStream();
                else
                    stream = new MemoryStream(image.Image.ToArray());
            }            
            return stream;
        }
        public MemoryStream GetDefaultImageStream()
        {
            // Nên thay bằng một hình đại diện cho Empty
            Image image = Image.FromFile(Path.Combine(HttpContext.Current.Request.PhysicalApplicationPath, "images\\Logo.png"));
            MemoryStream stream = new MemoryStream();
            image.Save(stream, System.Drawing.Imaging.ImageFormat.Gif);
            return new MemoryStream(stream.ToArray());
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}