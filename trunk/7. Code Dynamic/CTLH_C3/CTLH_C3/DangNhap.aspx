<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="CTLH_C3.DangNhap" %>

<%@ Register src="~/Guest/user_CustomLogin.ascx" tagname="user_Login" tagprefix="webUC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Đăng Nhập
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <webUC:user_Login ID="user_Login" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    &nbsp;
</asp:Content>
