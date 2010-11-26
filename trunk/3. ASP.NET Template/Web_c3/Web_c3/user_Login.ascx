<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Login.ascx.cs" Inherits="Web_c3.user_Login" %>
<asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/login_form.png" 
    Width="243px" Height="251px">
    <asp:TextBox ID="txtUsername" runat="server" 
        style="LEFT: 24px; POSITION: relative; TOP: 78px; width: 165px;">
    </asp:TextBox>
    <asp:TextBox ID="txtPassword" runat="server" 
        style="LEFT: 23px; POSITION: relative; TOP: 100px; width: 165px;" 
        TextMode="Password">
    </asp:TextBox>
     
    <asp:Button ID="btnLogin" 
        style=" LEFT: 79px; POSITION: relative; TOP: 135px; margin-bottom: 0px;"
        runat="server" Text="Đăng Nhập" onclick="btnLogin_Click" 
        Font-Bold="true"/>

    <asp:CheckBox ID="CheckBox1" Text="Ghi nhớ mật khẩu" runat="server" 
        
        style="LEFT:-65px; position: relative; top: 103px; width: 165px; height: 26px; " />     
   
</asp:Panel>



   


   
    




   

