<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="CTLH_C3.Authenticated.DoiMatKhau" %>

<%@ Register src="~/Authenticated/Controls/ucDoiMatKhau.ascx" tagname="ucDoiMatKhau" tagprefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal runat="server">Quên Mật Khẩu</asp:Literal> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;  
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width:520px;float:left">
        <webUC:ucDoiMatKhau ID="DoiMatKhau1" runat="server" />
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    &nbsp; 
</asp:Content>
