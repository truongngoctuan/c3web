using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.ComponentModel.DataAnnotations;

namespace CTLH_C3
{
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    public partial class TUYEN_XE
    {
    }

    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    [Security(Role = "Điều hành trạm", Action = "List")]
    [Security(Role = "Điều hành trạm", Action = "Details")]
    [Security(Role = "Điều hành trạm", Action = "Edit")]
    [Security(Role = "Điều hành trạm", Action = "Insert")]    
    public partial class CHUYEN_XE
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]    
    public partial class TRAM_XE
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    public partial class CHO_NGOI
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    public partial class TINH_TRANG_DAT_CHO
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    [Security(Role = "Điều hành trạm", Action = "All")]
    public partial class DAT_CHO
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    [Security(Role = "Điều hành trạm", Action = "List")]
    [Security(Role = "Điều hành trạm", Action = "Edit")]
    [Security(Role = "Điều hành trạm", Action = "Details")]
    public partial class PHAN_HOI_KHACH_HANG
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    public partial class PHAN_HOI
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    public partial class NHAN_VIEN
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    [Security(Role = "Admin", Action = "All")]
    public partial class LOAI_TAI_KHOAN
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Admin", Action = "All")]
    public partial class TAI_KHOAN
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    public partial class XE
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    public partial class TINH_TRANG_XE
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    public partial class THONG_TIN_CONG_TY
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "List")]
    public partial class IMAGE_STORE
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    public partial class LOAI_XE
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    public partial class TINH_TRANG_CHUYEN_XE
    {
    }
    [Security(Role = "Anonymous", Action = "AnonymousList")]
    [Security(Role = "Điều hành công ty", Action = "All")]
    public partial class TINH_TRANG_DUYET
    {
    }
}

