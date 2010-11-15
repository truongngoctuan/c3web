<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_524_ThayDoiGiaoDienKhachHang.ascx.cs" Inherits="UserControl.User_524_ThayDoiGiaoDienKhachHang" %>
<asp:Panel ID="Panel1" runat="server" Height="248px" Width="544px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="lbThayDoiGiaoDien" runat="server" Text="Thay đổi giao diện" 
        Font-Bold="True" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="gvGiaoDien" runat="server">
    </asp:GridView>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnOK" runat="server" Text="OK" Width="58px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
    <br />
</asp:Panel>
