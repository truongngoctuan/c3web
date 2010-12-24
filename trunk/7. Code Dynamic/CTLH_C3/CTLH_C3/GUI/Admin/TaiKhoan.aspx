<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TaiKhoan.aspx.cs" Inherits="CTLH_C3.GUI.Admin.TaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Quản Lý Tài Khoản
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Quản Lý Tài Khoản</h1>
    Dùng table mặc định của Dynamic Data, bảng Tài Khoản. Liên kết với các bảng liên quan
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <%-- 
    <asp:LoginView ID="LoginView1" runat="server">
    </asp:LoginView> 
    %>
    Hình đại diện <br />
    Tên nhân viên <br />
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/GUI/Admin/TaiKhoan.aspx" runat="server">Quản lý tài khoản</asp:HyperLink><br />
    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/GUI/Admin/TaiKhoan.aspx" runat="server">Thông tin công ty</asp:HyperLink> : 5 phản hồi mới<br />
    
</asp:Content>
