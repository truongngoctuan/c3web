<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_372_ThongKeDoanhThu.ascx.cs" Inherits="UserControl.User_372_ThongKeDoanhThu" %>
<asp:Panel ID="Panel1" runat="server" Height="299px" Width="673px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="lbThongKeDoanhThu" runat="server" Text="Thống kê doanh thu" 
        Font-Bold="True" Font-Size="Larger"></asp:Label>
    
    <br />
    
    <br />
    <asp:GridView ID="gvDoanhThu" runat="server">
    </asp:GridView>
</asp:Panel>
