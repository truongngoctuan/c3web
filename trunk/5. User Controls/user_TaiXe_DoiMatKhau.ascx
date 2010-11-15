<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_TaiXe_DoiMatKhau.ascx.cs" Inherits="Web_c3.user_TaiXe_DoiMatKhau" %>
<asp:Panel ID="pnDoiMatKhau" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="lbDoiMatKhau" runat="server" Font-Bold="True" Font-Size="Larger" 
        Text="Đổi mật khẩu"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="lnMatKhauCu" runat="server" Text="Mật khẩu cũ"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbMatKhauCu" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="lbMatKhauMoi" runat="server" Text="Mật khẩu mới"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbMatKhauMoi" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lnNhapLaiMatKhauMoi" runat="server" Text="Nhập lại mật khẩu mới"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbNhapLaiMatKhauMoi" runat="server"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btDoiMatKhau" runat="server" Text="Đổi mật khẩu" />
</asp:Panel>
