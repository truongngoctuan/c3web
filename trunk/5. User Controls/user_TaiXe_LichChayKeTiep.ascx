<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_TaiXe_LichChayKeTiep.ascx.cs" Inherits="Web_c3.user_TaiXe_LichChayKeTiep" %>
<asp:Panel ID="pnLichChayKeTiep" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbLichChayKeTiep" runat="server" 
    Font-Bold="True" Font-Size="Larger" Text="Lịch chạy kế tiếp"></asp:Label>
    <br />
    <br />
    <asp:ListView ID="lvLichChayKeTiep" runat="server">
    </asp:ListView>
</asp:Panel>
