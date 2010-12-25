<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NhatKi.aspx.cs" Inherits="CTLH_C3.TaiXe.NhatKi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Nhật kí
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Nhật Kí</h1>
    <div>
        Từ : 
        <asp:TextBox ID="TextBox1" runat="server">1/1/2010</asp:TextBox>
        Đến :
        <asp:TextBox ID="TextBox2" runat="server">24/12/2010</asp:TextBox>
    </div>
    <table>
        <thead>
        <tr>
            <td>STT</td>
            <td>Trạm đầu</td>
            <td>Trạm cuối</td>
            <td>Giờ đi</td>
            <td>Giờ đến</td>
            <td>Lương</td>
            <td>Phản hồi</td>
        </tr>
        </thead>
        <tr>
            <td>1</td>
            <td>HCM</td>
            <td>HaNoi</td>
            <td>01:00</td>
            <td>23:59</td>
            <td>100000</td>
            <td><asp:HyperLink ID="HyperLink6" NavigateUrl="~/GUI/TaiXe/NhatKi.aspx" runat="server">5 phản hồi (chưa đọc)</asp:HyperLink></td>
        </tr>
        <tr>
            <td>2</td>
            <td>HCM</td>
            <td>HaNoi</td>
            <td>01:00</td>
            <td>23:59</td>
            <td>100000</td>
            <td><asp:HyperLink ID="HyperLink5" NavigateUrl="~/GUI/TaiXe/NhatKi.aspx" runat="server">5 phản hồi (chưa đọc)</asp:HyperLink></td>
        </tr>
        <tr>
            <td>3</td>
            <td>HCM</td>
            <td>HaNoi</td>
            <td>01:00</td>
            <td>23:59</td>
            <td>100000</td>
            <td><asp:HyperLink ID="HyperLink4" NavigateUrl="~/GUI/TaiXe/NhatKi.aspx" runat="server">5 phản hồi</asp:HyperLink></td>
        </tr>
    </table>
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