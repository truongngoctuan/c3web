<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Guest_TimKiemTuyenXe.ascx.cs" Inherits="Web_c3.user_Guest_TimKiemTuyenXe" %>
<asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
    <asp:Label ID="lbTimKiemChuyenXe" runat="server" Text="Tìm kiếm Chuyến xe" 
        Font-Bold="True" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="lbNoiKhoiHanh" runat="server" Text="Nơi khởi hành : "></asp:Label>
    &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
    <asp:DropDownList ID="ddlNoiKhoihanh" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lbNoiDen" runat="server" Text="Nơi đến : "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:DropDownList ID="ddlNoiDen" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="btTimKiem" runat="server" Text="Tìm Kiếm" />
    <br />
    <br />
    <asp:ListView ID="lvThongTin" runat="server">
    </asp:ListView>
    <br />
</asp:Panel>
