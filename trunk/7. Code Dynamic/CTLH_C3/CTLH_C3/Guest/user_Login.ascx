<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Login.ascx.cs" Inherits="CTLH_C3.Guest.user_Login" %>
<asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/login_form.png" 
    Width="245px" Height="256px">
    <asp:Label ID="lbTenTaiKhoan" Text="Tên tài khoản" runat="server" 
    style="position:relative; float:left; clear:both; margin-top:55px; margin-left:25px"/>
    <asp:TextBox ID="txtUsername" runat="server"
    style="position:relative; float:left; clear:both; margin-top:5px; margin-left:25px; width:185px">
    </asp:TextBox>
    <asp:Label ID="lbMatKhau" Text="Mật khẩu" runat="server" 
    style="position:relative; float:left; clear:both; margin-top:5px; margin-left:25px"/>
    <asp:TextBox ID="txtPassword" runat="server" 
        TextMode="Password"
        style="position:relative; float:left; clear:both; margin-top:5px; margin-left:25px; width:185px">
    </asp:TextBox>
    <asp:CheckBox CssClass="custom-checkbox" ID="cbLuuMatKhau" Text="Ghi nhớ mật khẩu" runat="server" 
     style="position:relative; float:left; clear:both; margin-top:5px; margin-left:25px"/>
    <asp:Button ID="btnLogin" 
        runat="server" Text="Đăng Nhập" onclick="btnLogin_Click" 
        style="position:relative; float:left; clear:both; margin-top:5px; margin-left:65px; width:100px"/>
</asp:Panel>



   


   
    




   

