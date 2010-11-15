<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Login.ascx.cs" Inherits="Web_c3.user_Login" %>
<asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/login_form.png" 
    Width="243px" Height="251px">
    <asp:TextBox ID="txtUsername" runat="server" 
        style="LEFT: 24px; POSITION: relative; TOP: 78px; width: 165px; height: 20px;">
    </asp:TextBox>
    <asp:TextBox ID="txtPassword" runat="server" 
        style="LEFT: 23px; POSITION: relative; TOP: 100px; width: 165px; height: 20px;" 
        TextMode="Password">
    </asp:TextBox>
     
    <asp:Button ID="btnLogin" 
        style=" LEFT: 79px; POSITION: relative; TOP: 135px; width: 82px; height: 26px; margin-bottom: 0px; background-color : Transparent;"
        runat="server" Text="Đăng Nhập" BackColor="Blue" onclick="btnLogin_Click" 
        BorderColor="Silver" BorderStyle="Solid" BorderWidth="1" 
        ForeColor="Black" />

    <asp:CheckBox ID="CheckBox1" Text="Ghi nhớ mật khẩu" runat="server" 
        style="LEFT:-65px; position: relative; top: 103px; width: 165px; height: 26px; "  />     
   
</asp:Panel>



   


   
    




   

