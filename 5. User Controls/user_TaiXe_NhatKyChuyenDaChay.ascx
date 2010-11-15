<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_TaiXe_NhatKyChuyenDaChay.ascx.cs" Inherits="Web_c3.user_TaiXe_NhatKyChuyenDaChay" %>
<asp:Panel ID="NhatKyChuyenDaChay" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lnNhatKyChuyenDaChay" runat="server" Font-Bold="True" 
        Font-Size="Larger" Text="Nhật ký chuyến đã chạy"></asp:Label>
    <br />
    <br />
    <br />
    <asp:ListView ID="lvChuyenDaChay" runat="server">
    </asp:ListView>
    <br />
</asp:Panel>
