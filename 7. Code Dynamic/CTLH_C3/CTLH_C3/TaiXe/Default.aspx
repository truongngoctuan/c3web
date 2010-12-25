<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CTLH_C3.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Trang Chủ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <%-- 
    <asp:LoginView ID="LoginView1" runat="server">
    </asp:LoginView> 
    %>
    Hình đại diện <br />
    Tên nhân viên <br />
    <h2>Lương tháng : 5000000 VNĐ</h2> <br />
    <asp:HyperLink NavigateUrl="~/GUI/TaiXe/Default.aspx" runat="server">Xem chuyến kế tiếp</asp:HyperLink><br />
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/GUI/TaiXe/Default.aspx" runat="server">Xem phan hoi</asp:HyperLink> : 5 phản hồi mới<br />
    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/GUI/TaiXe/Default.aspx" runat="server">Xem nhat ki</asp:HyperLink><br />
</asp:Content>
