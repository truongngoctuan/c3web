<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_421_GhiNhanPhanHoi.ascx.cs" Inherits="UserControl.User_421_GhiNhanPhanHoi" %>
<asp:Panel ID="Panel1" runat="server" Height="252px" Width="554px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="lnGhiNhanPhanHoi" runat="server" 
        Font-Bold="True" Font-Size="Larger" Text="Ghi nhận phản hồi"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="lbTuyenXe" runat="server" Text="Tuyến xe"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlTuyenXe" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lbChuyenXe" runat="server" Text="Chuyến xe"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlChuyenXe" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lbPhanHoi" runat="server" Text="Phản hồi"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPhanHoi" runat="server" Height="155px" Width="414px" 
        TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnGui" runat="server" Text="Gửi" Width="77px" />
    
    <br />
    
</asp:Panel>
