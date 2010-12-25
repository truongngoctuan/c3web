<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master"AutoEventWireup="true" CodeBehind="ThongTinNhanVien.aspx.cs" Inherits="CTLH_C3.ThongTinNhanVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Thông Tin Nhân Viên
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Thông Tin Nhân Viên</h1>
    Hình ảnh : <asp:Image ID="Image1" runat="server"/><br />
    Tên : <asp:Literal ID="Literal1" runat="server">Nhân Viên 1</asp:Literal><br />
    Chức vụ : <asp:Literal ID="Literal2" runat="server">Tài xế</asp:Literal><br />
    Email : <asp:Literal ID="Literal3" runat="server">nv@gmail.com</asp:Literal><br />
    Số điện thoại : <asp:Literal ID="Literal4" runat="server">01234564879</asp:Literal><br />
    Địa chỉ : <asp:Literal ID="Literal5" runat="server">Hàng 1, Dãy 10, Tầng 2, Trại hòm Công Thọ</asp:Literal><br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <%-- 
    <asp:LoginView ID="LoginView1" runat="server">
    </asp:LoginView> 
    %>
    Hình đại diện <br />
    Tên nhân viên <br />
    <h2>Lương tháng : 5000000 VNĐ</h2> <br />
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/GUI/TaiXe/Default.aspx" runat="server">Xem chuyến kế tiếp</asp:HyperLink><br />
    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/GUI/TaiXe/Default.aspx" runat="server">Xem phan hoi</asp:HyperLink> : 5 phản hồi mới<br />
    <asp:HyperLink ID="HyperLink3" NavigateUrl="~/GUI/TaiXe/Default.aspx" runat="server">Xem nhat ki</asp:HyperLink><br />
</asp:Content>