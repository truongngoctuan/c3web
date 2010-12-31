<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_GioiThieu.ascx.cs" Inherits="CTLH_C3.Guest.user_GioiThieu" %>
<asp:Panel ID="pnGioiThieu" runat="server" style="padding:10px" >

    <asp:Label ID="lbCTLuHanh" runat="server" Font-Size="Larger" 
        Text="Công Ty Lữ Hành C3HCMUS"></asp:Label>
    <br />
    <asp:Image ID="imGioiThieu" runat="server" ImageUrl="~/images/Logo.png" 
        Width="150px" style="clear:both; text-align:center" />
        <br />
    <div runat="server" id="divNoiDungGioiThieu">
    </div>
</asp:Panel>
