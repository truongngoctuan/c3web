using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel; 

namespace CTLH_C3
{ 
#region Tuyen xe
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
#endregion

#region Chuyen xe
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
#endregion

#region Tram xe
    public class TRAM_XE_Metadata
    {
        [DisplayName("Tên trạm")]
        public object TenTramXe { set; get; }

        [DisplayName("Địa chỉ")]
        public object DiaChi { set; get; }

        [DisplayName("Hình ảnh")]
        public object HinhAnh { set; get; }

        [DisplayName("Trưởng trạm")]
        public object NHAN_VIEN { set; get; }

        [DisplayName("Là trạm đến của")]
        public object TUYEN_XEs { set; get; }

        [DisplayName("Là trạm đi của")]
        public object TUYEN_XEs1 { set; get; }
    }

    [MetadataType(typeof(TRAM_XE_Metadata))]
    [DisplayName("Trạm xe")]
    public partial class TRAM_XE
    {

    }
#endregion

#region Vi tri cho ngoi
    public class CHO_NGOI_Metadata
    {
        [DisplayName("Vị trí")]
        public object ViTri { set; get; }

        [DisplayName("Các chỗ")]
        public object DAT_CHOs { set; get; }
    }

    [MetadataType(typeof(CHO_NGOI_Metadata))]
    [DisplayName("Vị trí chỗ ngồi")]
    public partial class CHO_NGOI
    {

    }
#endregion

#region Tinh trang dat cho
    public class TINH_TRANG_DAT_CHO_Metadata
    {
        [DisplayName("Tình trạng")]
        public object TenTinhTrangDatCho { set; get; }

        [DisplayName("Các chỗ")]
        public object DAT_CHOs { set; get; }
    }

    [MetadataType(typeof(TINH_TRANG_DAT_CHO_Metadata))]
    [DisplayName("Tình trạng đặt chỗ")]
    public partial class TINH_TRANG_DAT_CHO
    {

    }   
#endregion

#region Dat cho
    public class DAT_CHO_Metadata
    {
        [DisplayName("Chỗ ngồi")]
        public object MaChoNgoi { set; get; }

        [DisplayName("Chuyến xe")]
        public object CHUYEN_XE { set; get; }

        [DisplayName("Tình trạng")]
        public object TINH_TRANG_DAT_CHO { set; get; }
    }

    [MetadataType(typeof(DAT_CHO_Metadata))]
    [DisplayName("Chỗ ngồi")]
    public partial class DAT_CHO
    {

    }
#endregion
}
