using System;
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
        public void ProcessRequest(HttpContext context)
        {
            int id = int.Parse(context.Request.QueryString["Id"]);
            context.Response.ContentType = "image/jpeg";
            Stream strm = ShowEmpImage(id);
            byte[] buffer = new byte[4096];
            int byteSeq = strm.Read(buffer, 0, 4096);
            while (byteSeq > 0)
            {
                context.Response.OutputStream.Write(buffer, 0, byteSeq);
                byteSeq = strm.Read(buffer, 0, 4096);
            }
        }

        public Stream ShowEmpImage(int id)
        {
            MemoryStream stream = null;
            TRAVEL_WEBDataContext context = new TRAVEL_WEBDataContext();
            var imageTable = from a in context.ImageTables
                       select a;
            if (imageTable.Count() == 0 || imageTable.First().Image == null)
            {
                Image image = Image.FromFile(Path.Combine(HttpContext.Current.Request.PhysicalApplicationPath, "images\\Logo.png"));
                stream = new MemoryStream();
                image.Save(stream, System.Drawing.Imaging.ImageFormat.Gif);
                stream = new MemoryStream(stream.ToArray());
            }
            else
            {
                var image = imageTable.First();
                stream = new MemoryStream(image.Image.ToArray());
            }                       

            return stream;
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
