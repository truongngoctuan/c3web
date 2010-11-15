<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_TaiXe_XemLuong.ascx.cs" Inherits="Web_c3.user_TaiXe_XemLuong" %>
<asp:Panel ID="pnXemLuong" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbXemLuong" runat="server" Text="Lương" Font-Bold="True" 
        Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:ListView ID="lvXemLuong" runat="server">
    </asp:ListView>
</asp:Panel>
