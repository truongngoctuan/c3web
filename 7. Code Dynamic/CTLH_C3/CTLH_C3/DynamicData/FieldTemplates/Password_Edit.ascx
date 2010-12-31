<%@ Control Language="C#" CodeBehind="Password_Edit.ascx.cs" Inherits="CTLH_C3.Password_EditField" %>

<asp:TextBox 
    ID="TextBox1" 
    runat="server" 
    TextMode="Password"
    CssClass="DDTextBox" >
</asp:TextBox>

<asp:RequiredFieldValidator 
    runat="server" 
    ID="RequiredFieldValidator1"
    CssClass="DDControl" 
    ControlToValidate="TextBox1" 
    Display="Dynamic" 
    Enabled="false" />
<asp:RegularExpressionValidator 
    runat="server" 
    ID="RegularExpressionValidator1" 
    CssClass="DDControl" 
    ControlToValidate="TextBox1" 
    Display="Dynamic" 
    Enabled="false" />
<asp:DynamicValidator 
    runat="server" 
    ID="DynamicValidator1" 
    CssClass="DDControl" 
    ControlToValidate="TextBox1" 
    Display="Dynamic" />

