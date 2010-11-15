<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_TaiXe_SuaThongTinCaNhan.ascx.cs" Inherits="Web_c3.user_TaiXe_SuaThongTinCaNhan" %>
<asp:Panel ID="pnSuaThongTinCaNhan" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbSuaThongTinCaNhan" runat="server" Font-Bold="True" 
        Font-Size="Larger" Text="Sửa thông tin cá nhân"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lbHoTen" runat="server" Text="Họ tên"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="HoTen" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lbDienThoai" runat="server" Text="Điện thoại"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbDienThoai" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbDiaChi" runat="server" Text="Địa chỉ"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbDiaChi" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Email" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btSua" runat="server" Text="Sửa" Width="82px" />
</asp:Panel>
