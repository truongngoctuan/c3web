<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_371_ThongKeTheoTuyen.ascx.cs" Inherits="UserControl.User_371_ThongKeTheoTuyen" %>
<asp:Panel ID="Panel1" runat="server" Height="299px" Width="673px">
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="lbThongKeTanSuatKhach" runat="server" 
        Text="Thống kê tần suất khách" Font-Bold="True" Font-Size="Larger"></asp:Label>
    
    <br />
    
    <br />
    <asp:GridView ID="gvTanSuatKhach" runat="server">
    </asp:GridView>
</asp:Panel>