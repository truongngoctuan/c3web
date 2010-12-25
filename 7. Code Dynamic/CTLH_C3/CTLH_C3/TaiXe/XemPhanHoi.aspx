<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="XemPhanHoi.aspx.cs" Inherits="CTLH_C3.XemPhanHoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Xem Phản Hồi
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Danh sách phản hồi</h1>    
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div>
            <p>
            Tuyến : Hà Nội - TPHCM <br />
            Ngày : 20/12/2010 <br />
            Nội dung :  
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
            </p>
            </div>
        </ItemTemplate>
    </asp:Repeater>
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