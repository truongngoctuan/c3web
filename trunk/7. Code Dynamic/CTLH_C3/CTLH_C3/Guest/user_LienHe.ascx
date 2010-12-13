<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_LienHe.ascx.cs" Inherits="CTLH_C3.Guest.user_LienHe" %>
<asp:Panel ID="pnLienHe" runat="server" BorderStyle="None" Height="610px" 
    Width="250px" style="padding:10px">
    <asp:Label ID="lbGuiNDLH" 
        style=" LEFT: 0px; POSITION: relative; TOP: -2px; width: 503px; height: 21px; margin-bottom: 0px; background-color : Transparent;"
        runat="server" Text="GỬI NỘI DUNG LIÊN HỆ" 
        BorderStyle="None" Font-Size="Larger"></asp:Label>
    <asp:Label ID="lbTTCaNhan" runat="server" BorderStyle="None" 
        style=" LEFT: 1px; POSITION: relative; TOP: 10px; width: 447px; height: 22px; margin-bottom: 0px; background-color : Transparent;" 
        Text="Thông tin cá nhân"></asp:Label>
    <asp:Label ID="lbHoTen" runat="server" BorderStyle="None" 
        style=" LEFT: 1px; POSITION: relative; TOP: 19px; width: 414px; height: 22px; margin-bottom: 0px; background-color : Transparent;" 
        Text="Họ tên của bạn (*)"></asp:Label>
    <asp:Label ID="lbDienThoai" runat="server" BorderStyle="None" 
        style=" LEFT: 1px; POSITION: relative; TOP: 64px; width: 182px; height: 22px; margin-bottom: 0px; background-color : Transparent;" 
        Text="Điện thoại  (*)"></asp:Label>
    <asp:Label ID="lbEmail" runat="server" BorderStyle="None" 
        style=" LEFT: 1px; POSITION: relative; TOP: 109px; width: 451px; height: 22px; margin-bottom: 0px; background-color : Transparent;" 
        Text="Email  (*)"></asp:Label>
    <asp:TextBox ID="txtHoTen" runat="server" BackColor="White" 
        
        
        style=" LEFT: 1px; POSITION: relative; TOP: -22px; width: 448px; height: 22px; margin-bottom: 0px; background-color : Transparent;"></asp:TextBox>
    <asp:Label ID="lbDiaChi" runat="server" BorderStyle="None" 
        style=" LEFT: 1px; POSITION: relative; TOP: 125px; width: 457px; height: 22px; margin-bottom: 0px; background-color : Transparent;" 
        Text="Địa chỉ (*)"></asp:Label>
    <asp:Label ID="lbTTBatBuoc" runat="server" BorderStyle="None" 
        style=" LEFT: -1px; POSITION: relative; TOP: 385px; width: 506px; height: 22px; margin-bottom: 0px; background-color : Transparent;" 
        Text="* - Thông tin bắt buộc"></asp:Label>
    <asp:Label ID="lbNoiDung" runat="server" BorderStyle="None" 
        style=" LEFT: 0px; POSITION: relative; TOP: 149px; width: 486px; height: 22px; margin-bottom: 0px; background-color : Transparent;" 
        Text="Nội dung (*)"></asp:Label>
    <asp:TextBox ID="txtDienThoai" runat="server" BackColor="White" 
        
        
        style=" LEFT: 1px; POSITION: relative; TOP: -49px; width: 448px; height: 22px; margin-bottom: 0px; background-color : Transparent;"></asp:TextBox>
    <asp:TextBox ID="txtEmail" runat="server" BackColor="White" 
        
        
        style=" LEFT: 1px; POSITION: relative; TOP: -10px; width: 448px; height: 22px; margin-bottom: 0px; background-color : Transparent;"></asp:TextBox>
    <asp:TextBox ID="txtDiaChi" runat="server" BackColor="White" 
        
        style=" LEFT: 0px; POSITION: relative; TOP: 29px; width: 448px; height: 22px; margin-bottom: 0px; background-color : Transparent;"></asp:TextBox>
    <asp:TextBox ID="txtNoiDung" runat="server" BackColor="White" 
        style=" LEFT: 1px; POSITION: relative; TOP: 67px; width: 485px; height: 183px; margin-bottom: 0px; background-color : Transparent;" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="btnGuiThongTin" runat="server" 
        style=" LEFT: 213px; POSITION: relative; TOP: 94px; width: 101px; height: 29px; margin-bottom: 0px; background-color : Transparent;" 
        Text="Gửi thông tin" />
</asp:Panel>

