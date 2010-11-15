<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_TaiXe_QuenMatKhau.ascx.cs" Inherits="Web_c3.user_TaiXe_QuenMatKhau" %>
<asp:Panel ID="pnQuenMatKhau" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbQuenmatKhau" runat="server" 
    Font-Bold="True" Font-Size="Larger" Text="Quên mật khẩu"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="lbUsername" runat="server" Text="User name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btNhanMatKhau" runat="server" Text="Nhận mật khẩu" />
</asp:Panel>
