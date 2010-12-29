using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CTLH_C3
{
    public class ImageFormatAttribute : Attribute
    {
        public ImageFormatAttribute(int displayHeight, int displayWidth){}

        public int DisplayHeight { get; set; }
        public int DisplayWidth { get; set; }
        public bool DisplayInEdit { get; set; }
    }
}
