<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="CTLH_C3.LienHe" %>

<%@ Register src="~/Guest/user_HotLine.ascx" tagname="user_HotLine" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_LienHe.ascx" tagname="user_LienHe" tagprefix="webUC" %>

<%@ Register Src="~/Guest/user_DanhSachTram.ascx" TagName="user_DanhSachTram" TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <webUC:user_DanhSachTram ID="user_DanhSachTram1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div style="width: 550px; float: right; margin-left:5px;">
<h1>Gửi Nội Dung Liên Hệ</h1>
    <webUC:user_LienHe ID="user_LienHe1" runat="server" />
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
