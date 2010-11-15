<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_362_ThemNhanVienMoi.ascx.cs" Inherits="UserControl.User_362_ThemNhanVienMoi" %>
<%@ Register src="User_361_ThongTinNhanVien.ascx" tagname="User_361_ThongTinNhanVien" tagprefix="uc1" %>
<asp:Panel ID="Panel1" runat="server" Height="424px" Width="394px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
        ID="lnThemNhanVienMoi" runat="server" 
        Font-Bold="True" Font-Size="Larger" Text="Thêm nhân viên mới"></asp:Label>
    <br />
    <br />
    <uc1:User_361_ThongTinNhanVien ID="User_361_ThongTinNhanVien1" runat="server" />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnOK" runat="server" Text="OK" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
</asp:Panel>
