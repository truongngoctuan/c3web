<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_332_ThemXeMoi.ascx.cs" Inherits="UserControl.User_332_ThemXeMoi" %>
<%@ Register src="User_331_ThongTinXe.ascx" tagname="User_331_ThongTinXe" tagprefix="uc1" %>
<asp:Panel ID="Panel1" runat="server" Height="382px" Width="455px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
        ID="lnThemXeMoi" runat="server" 
        Font-Bold="True" Font-Size="Larger" Text="Thêm xe mới"></asp:Label>
    <br />
    <br />
    <uc1:User_331_ThongTinXe ID="User_331_ThongTinXe1" runat="server" />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnOK" runat="server" Text="OK" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
    <br />
</asp:Panel>
