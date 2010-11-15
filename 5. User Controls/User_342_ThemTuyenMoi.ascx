<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_342_ThemTuyenMoi.ascx.cs" Inherits="UserControl.User_342_ThemChuyenMoi" %>
<%@ Register src="User_341_ThongTinTuyen.ascx" tagname="User_341_ThongTinTuyen" tagprefix="uc1" %>
<asp:Panel ID="Panel1" runat="server" Height="378px" Width="396px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
        ID="lnThemTuyenMoi" runat="server" 
        Font-Bold="True" Font-Size="Larger" Text="Thêm tuyến mới"></asp:Label>
    <br />
    <br />
    <uc1:User_341_ThongTinTuyen ID="User_341_ThongTinTuyen1" runat="server" />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnOK" runat="server" Text="OK" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
</asp:Panel>
