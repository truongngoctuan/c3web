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
<asp:FileUpload ID="uploadBanner" runat="server" />
<asp:Image runat="server" ID="imgBanner" />
<asp:Label runat="server" id="sttBanner" text=" " />

<asp:FileUpload ID="uploadSlogan" runat="server" />
<asp:Image runat="server" ID="imgSlogan" />
<asp:Label runat="server" id="sttSlogan" text=" " />

<asp:FileUpload ID="uploadLogo" runat="server" />
<asp:Image runat="server" ID="imgLogo" />
<asp:Label runat="server" id="sttLogo" text=" " />

<asp:Panel ID="pnThayDoiGiaoDien" runat="server" style="padding:10px" >
    <RichTextEditor:RichTextEditor ID="rteGioiThieu" Theme="Blue" runat="server" />
</asp:Panel>
<input type="submit" id="Button1" value="Submit" onclick="javascript:OnTextView();CopyText();" />
</asp:Content>
    
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login" runat="server" />
</asp:Content>