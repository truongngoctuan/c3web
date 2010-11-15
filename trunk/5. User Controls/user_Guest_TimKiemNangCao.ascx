<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Guest_TimKiemNangCao.ascx.cs" Inherits="Web_c3.user_Guest_TimKiemNangCao" %>
<asp:Panel ID="pnTimKiemNangCao" runat="server">
    <asp:Label ID="lbTimKiemNangCao" runat="server" Text="Tìm kiếm Chuyến xe" 
        Font-Bold="True" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lnNoiKhoiHanh" runat="server" Text="Nơi khởi hành"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlNoiDi" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lbNoiDen" runat="server" Text="Nơi đến"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlNoiDen" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lnThoiGian" runat="server" Text="Thời gian khởi hành"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlThoiGian" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lbBienSoXe" runat="server" Text="Biển số xe"></asp:Label>
    &nbsp;&nbsp;
    <asp:DropDownList ID="ddlBienSoXe" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lbTaiXe" runat="server" Text="Tên tài xế"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlTaiXe" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btTimKiem" runat="server" Text="Tìm kiếm" />
    <br />
    <br />
    <asp:ListView ID="lvThongTin" runat="server">
    </asp:ListView>
</asp:Panel>
