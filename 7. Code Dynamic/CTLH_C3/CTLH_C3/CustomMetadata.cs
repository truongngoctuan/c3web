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
        [ScaffoldColumn(false)]
        public object MaTuyenXe { get; set; }

        [DisplayName("Tên tuyến xe")]
        public object TenTuyenXe { get; set; }


        [DisplayName("Trạm đến")]
        public object TRAM_XE { get; set; }

        [DisplayName("Trạm đi")]
        public object TRAM_XE1 { get; set; }

        [DisplayName("Số lượng chuyến")]
        public object SoLuongChuyen { get; set; }

        [DisplayName("Tần suất chuyến")]
        public object TanSuatChuyen { get; set; }

        [DisplayName("Thời gian bắt đầu")]
        public object ThoiGianBatDau { get; set; }

        [DisplayName("Khoảng thời gian đi")]
        public object ThoiGianDi { get; set; }

        [DisplayName("Giá vé")]
        public object GiaVe { get; set; }

        [DisplayName("Lương tài xế")]
        public object LuongTaiXe { get; set; }

        [ScaffoldColumn(false)]
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

        [ScaffoldColumn(false)]
        public object XEs { set; get; }
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

#region Phan hoi khach hang
    public class PHAN_HOI_KHACH_HANG_Metadata
    {
        [DisplayName("Nội dung")]
        public object NoiDung { set; get; }

        [DisplayName("Ngày đăng")]
        public object NgayDang { set; get; }

        [DisplayName("Nằm trong")]
        public object PHAN_HOIs { set; get; }
    }

    [MetadataType(typeof(PHAN_HOI_KHACH_HANG_Metadata))]
    [DisplayName("Phản hồi của khách")]
    public partial class PHAN_HOI_KHACH_HANG
    {

    }
#endregion

#region Phan hoi
    public class PHAN_HOI_Metadata
    {
        [DisplayName("Chuyến xe")]
        public object CHUYEN_XE { set; get; }

        [DisplayName("Nhân viên")]
        public object NHAN_VIEN { set; get; }

        [DisplayName("Phản hồi của khách")]
        public object PHAN_HOI_KHACH_HANG { set; get; }
    }

    [MetadataType(typeof(PHAN_HOI_Metadata))]
    [DisplayName("Phản hồi")]
    public partial class PHAN_HOI
    {

    }
#endregion

#region Tin tuc
    public class TIN_TUC_Metadata
    {
        [DisplayName("Tiêu đề")]
        public object TieuDe { set; get; }

        [DisplayName("Hình ảnh")]
        public object HinhAnh { set; get; }

        [DisplayName("Tóm tắt")]
        public object TomTat { set; get; }

        [DisplayName("Nội dung")]
        public object NoiDung { set; get; }

        [DisplayName("Ngày đăng")]
        public object NgayDang { set; get; }

        [DisplayName("Người duyệt")]
        public object NHAN_VIEN { set; get; }
    }

    [MetadataType(typeof(TIN_TUC_Metadata))]
    [DisplayName("Tin tức")]
    public partial class TIN_TUC
    {

    }
#endregion

#region Nhan vien
    public class NHAN_VIEN_Metadata
    {
        [DisplayName("Họ tên")]
        public object HoTen { set; get; }

        [DisplayName("Điện thoại")]
        public object DienThoai { set; get; }

        [DisplayName("Địa chỉ")]
        public object DiaChi { set; get; }

        [ScaffoldColumn(false)]
        [DisplayName("Lương trong tháng")]
        public object LuongTrongThang { set; get; }

        //[ScaffoldColumn(false)]
        [DisplayName("Tài khoản")]
        public object TAI_KHOANs { set; get; }

        [ScaffoldColumn(false)]
        [DisplayName("Xe")]
        public object XEs { set; get; }

        [ScaffoldColumn(false)]
        [DisplayName("Trạm")]
        public object TRAM_XEs { set; get; }

        [ScaffoldColumn(false)]
        [DisplayName("Chuyến")]
        public object CHUYEN_XEs { set; get; }

        [ScaffoldColumn(false)]
        [DisplayName("Phản hồi")]
        public object PHAN_HOIs { set; get; }


        [ScaffoldColumn(false)]
        [DisplayName("Thông tin công ty")]
        public object THONG_TIN_CONG_Ties { set; get; }
    }

    [MetadataType(typeof(NHAN_VIEN_Metadata))]
    [DisplayName("Nhân viên")]
    public partial class NHAN_VIEN
    {

    }
#endregion
    
#region Loai nhan vien
    public class LOAI_NHAN_VIEN_Metadata
    {
        [DisplayName("Loại")]
        public object TenLoai { set; get; }

        [DisplayName("Nhân viên")]
        public object NHAN_VIENs { set; get; }

        [DisplayName("Quyền")]
        public object PHAN_QUYENs { set; get; }
    }

    [MetadataType(typeof(LOAI_NHAN_VIEN_Metadata))]
    [DisplayName("Loại nhân viên")]
    public partial class LOAI_NHAN_VIEN
    {

    }
#endregion

#region Phan quyen
    public class PHAN_QUYEN_Metadata
    {
        [DisplayName("Loại")]
        public object LOAI_NHAN_VIEN { set; get; }

        [DisplayName("Chức năng")]
        public object CHUC_NANG { set; get; }
    }

    [MetadataType(typeof(PHAN_QUYEN_Metadata))]
    [DisplayName("Phân quyền")]
    public partial class PHAN_QUYEN
    {

    }
#endregion

#region Chuc nang
    public class CHUC_NANG_Metadata
    {
        [DisplayName("Chức năng")]
        public object TenChucNang { set; get; }

        [DisplayName("Phân quyền")]
        public object PHAN_QUYENs { set; get; }
    }

    [MetadataType(typeof(CHUC_NANG_Metadata))]
    [DisplayName("Chức năng")]
    public partial class CHUC_NANG
    {

    }
#endregion

#region Tai khoan
    public class TAI_KHOAN_Metadata
    {
        [DisplayName("Username")]
        public object Username { set; get; }

        [DisplayName("Password")]
        public object Password { set; get; }

        [DisplayName("Email")]
        public object Email { set; get; }

        [DisplayName("Ngày kích hoạt")]
        public object NgayKichHoat { set; get; }

        [DisplayName("Nhân viên")]
        public object NHAN_VIEN { set; get; }
    }

    [MetadataType(typeof(TAI_KHOAN_Metadata))]
    [DisplayName("Tài khoản")]
    public partial class TAI_KHOAN
    {

    }
#endregion

#region Xe
    public class XE_Metadata
    {
        [DisplayName("Biển số")]
        public object BienSoXe { set; get; }

        [DisplayName("Tài xế")]
        public object NHAN_VIEN { set; get; }

        [DisplayName("Trạm xe xe đang lưu trú")]
        public object TRAM_XE { set; get; }


        [DisplayName("Loại")]
        
        public object LOAI_XE { set; get; }

        [DisplayName("Tình trạng xe")]
        public object TINH_TRANG_XE { set; get; }
    }

    [MetadataType(typeof(XE_Metadata))]
    [DisplayName("Xe")]
    public partial class XE
    {

    }
#endregion

#region Tinh trang xe
    public class TINH_TRANG_XE_Metadata
    {
        [DisplayName("Tình trạng")]
        public object TenTinhTrangXe { set; get; }

        [DisplayName("Xe")]
        public object XEs { set; get; }
    }

    [MetadataType(typeof(TINH_TRANG_XE_Metadata))]
    [DisplayName("Tình trạng xe")]
    public partial class TINH_TRANG_XE
    {

    }
#endregion

#region Loai xe
    public class LOAI_XE_Metadata
    {
        [DisplayName("Hình ảnh")]
        public object HinhAnh { set; get; }

        [DisplayName("Hãng sản xuất")]
        public object HangSanXuat { set; get; }

        [DisplayName("Xe")]
        public object XEs { set; get; }
    }

    [MetadataType(typeof(LOAI_XE_Metadata))]
    [DisplayName("Loại xe")]
    public partial class LOAI_XE
    {

    }
#endregion

}
