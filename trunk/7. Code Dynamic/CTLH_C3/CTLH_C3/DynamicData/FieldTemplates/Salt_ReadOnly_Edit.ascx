<%@ Control Language="C#" CodeBehind="Salt_ReadOnly_Edit.ascx.cs" Inherits="CTLH_C3.Salt_ReadOnly_EditField" %>

<asp:TextBox 
    ID="TextBox1" 
    runat="server" 
    TextMode="Password"
    CssClass="DDTextBox" 
    Enabled = "false"
    BorderStyle ="None" 
    BackColor = "White" 
    Value="<%# FieldValueEditString %>">
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

