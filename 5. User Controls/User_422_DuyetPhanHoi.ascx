<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_422_DuyetPhanHoi.ascx.cs" Inherits="UserControl.User_422_DuyetPhanHoi" %>
<%@ Register src="User_421_GhiNhanPhanHoi.ascx" tagname="User_421_GhiNhanPhanHoi" tagprefix="uc1" %>
<asp:Panel ID="Panel1" runat="server" Height="252px" Width="554px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="lnDuyetPhanHoi" runat="server" 
        Font-Bold="True" Font-Size="Larger" Text="Duyệt phản hồi"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lbDanhSachPhanHoi" runat="server" Text="Danh sách phản hồi"></asp:Label>
    <br />
    <asp:GridView ID="gvPhanHoi" runat="server">
    </asp:GridView>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <uc1:User_421_GhiNhanPhanHoi ID="User_421_GhiNhanPhanHoi1" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    
    <br />
    
</asp:Panel>
