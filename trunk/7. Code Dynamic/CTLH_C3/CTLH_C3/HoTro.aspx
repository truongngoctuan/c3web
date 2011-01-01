<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="HoTro.aspx.cs" Inherits="CTLH_C3.HoTro" %>

<%@ Register Src="~/Guest/user_DanhSachTram.ascx" TagName="user_DanhSachTram" TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Hỗ trợ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <webUC:user_DanhSachTram ID="user_DanhSachTram1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div style="float:left; width:550px; padding-left:5px; display:block;"> 
    <h1>Hỗ trợ</h1>
    <p style="width:400px; margin: 0px auto; text-align:justify;">
         - Nếu bạn là khách hàng quan tâm đến công ty chúng tôi, xin mời vào trang chủ để xem thông tin chi tiết về các chuyến xe.<br/>
     - Chỉ có nhân viên công ty mới có tài khoản để đăng nhập và sử dụng các chức năng khác<br/>
     </p>

    
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <div style="width: 245px; float: right;">
        <%--<webUC:user_HotLine ID="user_HotLine1" runat="server" />--%>
        <div style="height: 256px">
            <webUC:user_Login ID="user_Login1" runat="server" />
        </div>
    </div>
</asp:Content>