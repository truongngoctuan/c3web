using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace CTLH_C3.Core
{   
    [MetadataType(typeof(NHAN_VIEN_METADATA))]
    public partial class NHAN_VIEN
    {

    }

    public class NHAN_VIEN_METADATA
    {
        public object MaNhanVien { get; set; }
        public object HoTen { get; set; }
        public object DienThoai { get; set; }
        public object DiaChi { get; set; }
        public object LoaiNhanVien { get; set; }
        public object LuongTrongThang { get; set; }

        //[DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}")]
        //public object NgaySinh { get; set; }

        [UIHint("MyCustomField")]
        
        public object Picture { get; set; }
    }
}
