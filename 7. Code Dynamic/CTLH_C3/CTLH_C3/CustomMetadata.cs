using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel; 

namespace CTLH_C3
{ 
    public class TUYEN_XE_Metadata
    {
        [DisplayName("Giá vé")]
        public object GiaVe { get; set; }

        [DisplayName("Trạm đi")]
        public object TRAM_XE { get; set; }

        [DisplayName("Trạm đến")]
        public object TRAM_XE1 { get; set; }

        [DisplayName("Khoảng thời gian đi")]
        public object KhoangThoiGianDi { get; set; }

        [DisplayName("Tần suất chuyến")]
        public object TanSuatChuyen { get; set; }

        [DisplayName("Lương tài xế")]
        public object LuongTaiXe { get; set; }
    }

    [MetadataType(typeof(TUYEN_XE_Metadata))]
    [DisplayName("Tuyến xe")]
    public partial class TUYEN_XE
    {

    } 
}
