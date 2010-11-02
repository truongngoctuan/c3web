<%@ Page Title="" Language="C#" MasterPageFile="~/AnotherMasterPage.Master" AutoEventWireup="true" CodeBehind="NewPage.aspx.cs" Inherits="Web_c3.NewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    Nội dung cột trái ở đây
    <br />
    Không được xóa đánh dấu ContentPlaceHolder
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    Nội dung chính đặt ở đây
    <br />
    Không được xóa đánh dấu ContentPlaceHolder
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    Nội dung cột phải đặt ở đây
    <br />
    Không được xóa đánh dấu ContentPlaceHolder
</asp:Content>
