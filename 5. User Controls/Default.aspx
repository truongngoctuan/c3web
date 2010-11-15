<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UserControl._Default" %>

<%@ Register src="User_32_MenuDieuHanhCongTy.ascx" tagname="User_32_MenuDieuHanhCongTy" tagprefix="uc1" %>


<%@ Register src="User_342_ThemChuyenMoi.ascx" tagname="User_342_ThemChuyenMoi" tagprefix="uc2" %>
<%@ Register src="User_362_ThemNhanVienMoi.ascx" tagname="User_362_ThemNhanVienMoi" tagprefix="uc3" %>
<%@ Register src="User_332_ThemXeMoi.ascx" tagname="User_332_ThemXeMoi" tagprefix="uc4" %>
<%@ Register src="User_411_ThongTinChuyen.ascx" tagname="User_411_ThongTinChuyen" tagprefix="uc5" %>


<%@ Register src="User_333_XoaXe.ascx" tagname="User_333_XoaXe" tagprefix="uc6" %>
<%@ Register src="User_334_CapNhatThongTinXe.ascx" tagname="User_334_CapNhatThongTinXe" tagprefix="uc7" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:User_32_MenuDieuHanhCongTy ID="User_32_MenuDieuHanhCongTy1" 
        runat="server" />
    <uc6:User_333_XoaXe ID="User_333_XoaXe1" runat="server" />
    <uc7:User_334_CapNhatThongTinXe ID="User_334_CapNhatThongTinXe1" 
        runat="server" />
    <uc3:User_362_ThemNhanVienMoi ID="User_362_ThemNhanVienMoi1" runat="server" />
    <uc4:User_332_ThemXeMoi ID="User_332_ThemXeMoi1" runat="server" />
    <uc5:User_411_ThongTinChuyen ID="User_411_ThongTinChuyen1" runat="server" />
    <uc2:User_342_ThemChuyenMoi ID="User_342_ThemChuyenMoi1" runat="server" />
    </form>
    </body>
</html>
