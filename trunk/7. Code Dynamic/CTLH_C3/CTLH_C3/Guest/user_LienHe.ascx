<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_LienHe.ascx.cs" Inherits="CTLH_C3.Guest.user_LienHe" %>
<asp:Panel ID="pnLienHe" runat="server">
<div style="width:475px; margin-left:auto; margin-right:auto;">
    Thông tin cá nhân<br />
    Họ tên của bạn (*)<br />
        <asp:TextBox ID="txtHoTen" runat="server"
        style="width: 448px;"></asp:TextBox>
    <br />
    Điện thoại  (*)<br />
        <asp:TextBox ID="txtDienThoai" runat="server" BackColor="White" 
        style="width: 448px;"></asp:TextBox>
    <br/>
    Email  (*)<br />
        <asp:TextBox ID="txtEmail" runat="server" BackColor="White" 
        style="width: 448px;"></asp:TextBox>
    <br />
    Địa chỉ (*)<br />
        <asp:TextBox ID="txtDiaChi" runat="server" BackColor="White" 
        style="width: 448px;"></asp:TextBox>
    <br />
    Nội dung (*)<br />
    
    <asp:TextBox ID="txtNoiDung" runat="server" BackColor="White" 
    style="width: 445px; height: 300px;
    background-image:none;
    background-color:#F0F7FD;"
    TextMode="MultiLine"></asp:TextBox>
    <br />
    <em style="color:Red; font-size:90%;">* - Thông tin bắt buộc</em><br />
    <asp:Button ID="btnGuiThongTin" runat="server" 
        style="margin-left:auto; margin-right:auto; width:120px; display:block;" 
        Text="Gửi thông tin" />
        </div>
</asp:Panel>

