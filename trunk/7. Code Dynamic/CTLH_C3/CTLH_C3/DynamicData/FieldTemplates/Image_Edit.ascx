<%@ Control Language="C#" CodeBehind="Image_Edit.ascx.cs" Inherits="CTLH_C3.Image_EditField" %>

<asp:FileUpload ID="fileUpload" runat="server" />
<asp:CustomValidator runat="server" id="cusCustom" controltovalidate="fileUpload" onservervalidate="cusCustom_ServerValidate" errormessage="Không hợp lệ" />
