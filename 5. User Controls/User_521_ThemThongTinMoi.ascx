<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_521_ThemThongTinMoi.ascx.cs" Inherits="UserControl.User_521_ThemThongTinMoi" %>
<%@ Register src="User_520_ThongTinCongTy.ascx" tagname="User_520_ThongTinCongTy" tagprefix="uc1" %>
<asp:Panel ID="Panel1" runat="server" Width="390px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Label 
        ID="lnThemThongTinMoi" runat="server" 
        Font-Bold="True" Font-Size="Larger" Text="Thêm thông tin mới"></asp:Label>
    <br />
    <br />    
    <uc1:User_520_ThongTinCongTy ID="User_520_ThongTinCongTy1" runat="server" />
    
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnOK" runat="server" Text="OK" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
    <br />
</asp:Panel>