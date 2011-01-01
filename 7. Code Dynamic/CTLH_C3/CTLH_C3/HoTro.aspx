<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="HoTro.aspx.cs" Inherits="CTLH_C3.HoTro" %>

<%@ Register Src="~/Guest/user_DanhSachTram.ascx" TagName="user_DanhSachTram" TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="gueststyle.css" />
    <title>Hỗ trợ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <webUC:user_DanhSachTram ID="user_DanhSachTram1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="CanhGiua" style="width:450px;"> 
        <h1>Hỗ trợ</h1>
        <p style="text-align:justify;">
             - Nếu bạn là khách hàng quan tâm đến công ty chúng tôi, xin mời vào trang chủ để xem thông tin chi tiết về các chuyến xe.<br/>
         </p>
         <p style="text-align:justify;">
         - Chỉ có nhân viên công ty mới có tài khoản để đăng nhập và sử dụng các chức năng khác<br/>
         </p>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>