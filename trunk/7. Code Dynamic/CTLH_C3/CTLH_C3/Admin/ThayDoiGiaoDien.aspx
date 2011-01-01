<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThayDoiGiaoDien.aspx.cs" Inherits="CTLH_C3.Admin.ThayDoiGiaoDien" ValidateRequest="false"%>

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
    <div style="float:left; clear:both; margin-bottom:75px;">
        Banner: <asp:Label runat="server" id="sttBanner" text=" " style="margin-bottom:15px;"/>
        <div class="fileinputs">
        <asp:FileUpload ID="uploadBanner" runat="server" CssClass="file"/>
	        <div class="fakefile">
		        <input class="fakeinput"/>
		        <img class="fakefileimg" src="../images/uploadfilebutton.png" alt=""/>
	        </div>
        </div>
        
    </div>

    <div style="float:left; clear:both; margin-bottom:75px;">
        Slogan: <asp:Label runat="server" id="sttSlogan" text=" " style="margin-bottom:15px;"/>
        <div class="fileinputs">
        <asp:FileUpload ID="uploadSlogan" runat="server" CssClass="file"/>
	        <div class="fakefile">
		        <input class="fakeinput"/>
		        <img class="fakefileimg" src="../images/uploadfilebutton.png" alt=""/>
	        </div>
        </div>
        
    </div>

    <div style="float:left; clear:both; margin-bottom:75px;">
        Logo: <asp:Label runat="server" id="sttLogo" text=" " style="margin-bottom:15px;"/>
        <div class="fileinputs">
        <asp:FileUpload ID="uploadLogo" runat="server" CssClass="file"/>
	        <div class="fakefile">
		        <input class="fakeinput"/>
		        <img class="fakefileimg" src="../images/uploadfilebutton.png" alt=""/>
	        </div>
        </div>
        
    </div>

<%--<asp:Panel ID="Panel1" runat="server">
    MenuBackgroundColor: 
    <asp:TextBox ID="tbMenuColor" runat="server"></asp:TextBox>
    <asp:ColorPickerExtender ID="cpeMenuColor" runat="server"
    TargetControlID="tbMenuColor" >
    </asp:ColorPickerExtender>
    <br/>
</asp:Panel>--%>

    
<asp:Panel ID="pnThayDoiGiaoDien" runat="server" style="float:left; clear:both;">
    <RichTextEditor:RichTextEditor ID="rteGioiThieu" Theme="Blue" runat="server" />
</asp:Panel>


<%--<input type="submit" id="Button1" value="Submit" onclick="javascript:OnTextView();CopyText();" />--%>
<div style="float:left; clear:both; width:700px; text-align:center;
margin:10px auto;">
<asp:Button ID="Button2" runat="server" Text="Đồng ý cập nhật" 
        onclick="Button2_Click" OnClientClick="javascript:OnTextView();CopyText();"
        />
</div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login" runat="server" />
</asp:Content>