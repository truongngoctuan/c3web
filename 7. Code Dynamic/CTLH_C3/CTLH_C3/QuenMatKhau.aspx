<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuenMatKhau.aspx.cs" Inherits="CTLH_C3.QuenMatKhau" %>

<%@ Register src="~/Guest/QuenMatKhau.ascx" tagname="QuenMatKhau" tagprefix="webUC" %>
<%@ Register Src="~/Guest/user_DanhSachTram.ascx" TagName="user_DanhSachTram" TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="gueststyle.css" />
    <title>Quên Mật Khẩu</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <webUC:user_DanhSachTram ID="user_DanhSachTram1" runat="server" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="CanhGiua" style="width:450px;">
    <h1>Quên Mật Khẩu</h1>
        <webUC:QuenMatKhau ID="QuenMatKhau1" runat="server" />
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>