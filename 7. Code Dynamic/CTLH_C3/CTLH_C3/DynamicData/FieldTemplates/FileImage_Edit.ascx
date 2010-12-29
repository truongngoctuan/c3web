<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FileImage_Edit.ascx.cs" Inherits="CTLH_C3.FileImage_Edit" %>

<asp:RadioButtonList ID="RadioButtonList1" runat="server" 
    RepeatDirection="Horizontal"
    RepeatLayout="Flow">
</asp:RadioButtonList>
<asp:PlaceHolder ID="PlaceHolderImage" runat="server" Visible="false">
    <asp:Image ID="ImageEdit" runat="server" /><br />
</asp:PlaceHolder>
<asp:FileUpload ID="FileUploadEdit" runat="server" Visible="false" />
<asp:CustomValidator ID="CustomValidator1" runat="server" 
    ErrorMessage="">
</asp:CustomValidator>