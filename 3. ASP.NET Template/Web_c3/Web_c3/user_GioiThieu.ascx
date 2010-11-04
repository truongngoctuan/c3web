<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_GioiThieu.ascx.cs" Inherits="Web_c3.user_GioiThieu" %>
<asp:Panel ID="pnGioiThieu" runat="server" style="padding:10px" >

    <asp:Label ID="lbCTLuHanh" runat="server" Font-Size="Larger" 
        Text="Công Ty Lữ Hành C3HCMUS"></asp:Label>
    <br />
    <asp:Image ID="imGioiThieu" runat="server" ImageUrl="~/images/content_img.jpg" 
        Width="280px" />
        <br />        
    <asp:LinkButton ID="lbtnXemThem" runat="server">Xem thêm</asp:LinkButton>
</asp:Panel>
