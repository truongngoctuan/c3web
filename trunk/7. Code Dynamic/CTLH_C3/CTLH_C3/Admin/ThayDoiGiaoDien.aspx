<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThayDoiGiaoDien.aspx.cs" Inherits="CTLH_C3.Admin.ThayDoiGiaoDien" ValidateRequest="false"%>
<%@ Register Assembly="RichTextEditor" Namespace="AjaxControls" TagPrefix="RichTextEditor" %>
<%@ Register src="~/Guest/user_CustomLogin.ascx" tagname="user_Login" tagprefix="webUC" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function CopyText() {
            editor = top.document.getElementById(editorId);
            editor.value = richeditor.toHtmlString();  
        }
    </script>
<asp:Literal runat="server">Banner :</asp:Literal> 
<asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button runat="server" id="UploadButton" text="Upload" onclick="UploadButton_Click" />
<asp:Image runat="server" ID="image1" />
<br />
<asp:Label runat="server" id="StatusLabel" text=" " />
<asp:Panel ID="pnThayDoiGiaoDien" runat="server" style="padding:10px" >
    <RichTextEditor:RichTextEditor ID="rteGioiThieu" Theme="Blue" runat="server" />
</asp:Panel>
<input type="submit" id="Button1" value="Submit" onclick="javascript:OnTextView();CopyText();" />
</asp:Content>
    
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login" runat="server" />
</asp:Content>