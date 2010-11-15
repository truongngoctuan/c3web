<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_511_ThemTaiKhoanMoi.ascx.cs" Inherits="UserControl.User_511_ThemTaiKhoanMoi" %>
<%@ Register src="User_510_ThongTinTaiKhoan.ascx" tagname="User_510_ThongTinTaiKhoan" tagprefix="uc1" %>
<asp:Panel ID="Panel1" runat="server" Width="390px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
        ID="lnThemTaiKhoanMoi" runat="server" 
        Font-Bold="True" Font-Size="Larger" Text="Thêm tài khoản mới"></asp:Label>
    <br />
    <br />
    <uc1:User_510_ThongTinTaiKhoan ID="User_510_ThongTinTaiKhoan1" runat="server" />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnOK" runat="server" Text="OK" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
    <br />
</asp:Panel>
