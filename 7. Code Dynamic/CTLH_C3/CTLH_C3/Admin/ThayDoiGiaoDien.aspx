<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThayDoiGiaoDien.aspx.cs" Inherits="CTLH_C3.Admin.ThayDoiGiaoDien" ValidateRequest="false"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="RichTextEditor" Namespace="AjaxControls" TagPrefix="RichTextEditor" %>
<%@ Register src="~/Guest/user_CustomLogin.ascx" tagname="user_Login" tagprefix="webUC" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function CopyText() {
            editor = top.document.getElementById(editorId);
            editor.value = richeditor.toHtmlString();
        }
//       $("document").ready(function()
//	{
//		$(".fakefileimg").each(function() {
//		this.attr("src", "images/logout-button.png");
//		});
//	};
    </script>
Banner: 
<div class="fileinputs">
<asp:FileUpload ID="uploadBanner" runat="server" CssClass="file"/>
<%--	<input type="file" class="file" />--%>
	<div class="fakefile">
		<input />
		<img class="fakefileimg" src="../images/logout-button.png" alt=""/>
	</div>
</div>
<%--<asp:FileUpload ID="uploadBanner" runat="server" />--%>
<asp:Label runat="server" id="sttBanner" text=" " />
<br/>

Slogan: 
<asp:FileUpload ID="uploadSlogan" runat="server" />
<asp:Label runat="server" id="sttSlogan" text=" " />
<br/>

Logo: 
<asp:FileUpload ID="uploadLogo" runat="server" />
<asp:Label runat="server" id="sttLogo" text=" " />
<br/>
<asp:Panel ID="Panel1" runat="server">
    MenuBackgroundColor: 
    <asp:TextBox ID="tbMenuColor" runat="server"></asp:TextBox>
    <asp:ColorPickerExtender ID="cpeMenuColor" runat="server"
    TargetControlID="tbMenuColor" >
    </asp:ColorPickerExtender>
    <br/>
</asp:Panel>

    
<asp:Panel ID="pnThayDoiGiaoDien" runat="server">
    <RichTextEditor:RichTextEditor ID="rteGioiThieu" Theme="Blue" runat="server" />
</asp:Panel>


<%--<input type="submit" id="Button1" value="Submit" onclick="javascript:OnTextView();CopyText();" />--%>
    <asp:Button ID="Button2" runat="server" Text="Đồng ý cập nhật" 
onclick="Button2_Click" OnClientClick="javascript:OnTextView();CopyText();"/>
</asp:Content>
    
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login" runat="server" />
</asp:Content>