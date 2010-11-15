<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_412_ThemChuyenMoi.ascx.cs" Inherits="UserControl.User_412_ThemChuyenMoi" %>
<%@ Register src="User_411_ThongTinChuyen.ascx" tagname="User_411_ThongTinChuyen" tagprefix="uc1" %>
<asp:Panel ID="Panel1" runat="server" Height="385px" Width="414px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
        ID="lnThemChuyenMoi" runat="server" 
        Font-Bold="True" Font-Size="Larger" Text="Thêm chuyến mới"></asp:Label>
    <br />
    <br />
    <uc1:User_411_ThongTinChuyen ID="User_411_ThongTinChuyen1" runat="server" />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnOK" runat="server" Text="OK" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
</asp:Panel>
