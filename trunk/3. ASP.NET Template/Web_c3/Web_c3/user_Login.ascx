<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Login.ascx.cs" Inherits="Web_c3.user_Login" %>
<asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/login_form.png" 
    Height="243px" Width="251px">
    <asp:TextBox ID="txtUsername" runat="server" 
        
        
        style="LEFT: 23px; POSITION: relative; TOP: 56px; width: 163px; height: 22px;"></asp:TextBox>
     <asp:TextBox ID="txtPassword" runat="server" 
        
        
        style="LEFT: 23px; POSITION: relative; TOP: 81px; width: 165px; height: 20px;" 
        TextMode="Password"></asp:TextBox>
     <asp:Button ID="btnLogin" 
        style=" LEFT: 80px; POSITION: relative; TOP: 134px; width: 82px; height: 26px; margin-bottom: 0px; background-color : Transparent;"
        runat="server" Text="Login" BackColor="White" onclick="btnLogin_Click" />
     
   
    <asp:CheckBox ID="CheckBox1" runat="server" 
         style="LEFT:-57px; position: relative; top: 82px; width: 26px; height: 26px; "  />
     
   
</asp:Panel>



   


   
    




   

