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

        [DisplayName("Các chuyến")]
        public object CHUYEN_XEs { set; get; }
    }

    [MetadataType(typeof(TUYEN_XE_Metadata))]
    [DisplayName("Tuyến xe")]
    public partial class TUYEN_XE
    {

    }

    public class CHUYEN_XE_Metadata
    {
        [DisplayName("Giờ khởi hành")]
        public object KhoiHanh { set; get; }

        [DisplayName("Giờ đến dự kiến")]
        public object DuKienDen { set; get; }

        [DisplayName("Tuyến xe")]
        public object TUYEN_XE { set; get; }

        [DisplayName("Tài xế")]
        public object NHAN_VIEN { set; get; }

        [DisplayName("Tình trạng")]
        public object TinhTrang { set; get; }

        [DisplayName("Thời điểm đến trạm")]
        public object ThoiGianDenTram { set; get; }

        [DisplayName("Lương tài xế")]
        public object LuongTaiXe { set; get; }

        [DisplayName("Giá Vé")]
        public object GiaVe { set; get; }

        [DisplayName("Chỗ ngồi")]
        public object DAT_CHOs { set; get; }

        [DisplayName("Phản hồi")]
        public object PHAN_HOIs { set; get; }
    }

    [MetadataType(typeof(CHUYEN_XE_Metadata))]
    [DisplayName("Chuyến xe")]
    public partial class CHUYEN_XE
    {

    }
}
