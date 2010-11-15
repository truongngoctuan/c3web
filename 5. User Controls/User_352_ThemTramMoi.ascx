<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_352_ThemTramMoi.ascx.cs" Inherits="UserControl.User_352_ThemTramMoi" %>
<%@ Register src="User_351_ThongTinTram.ascx" tagname="User_351_ThongTinTram" tagprefix="uc1" %>
<asp:Panel ID="Panel1" runat="server" Height="335px" Width="342px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
        ID="lnThemTramMoi" runat="server" 
        Font-Bold="True" Font-Size="Larger" Text="Thêm trạm mới"></asp:Label>
    <br />
    <br />
    <uc1:User_351_ThongTinTram ID="User_351_ThongTinTram1" runat="server" />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnOK" runat="server" Text="OK" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
</asp:Panel>
