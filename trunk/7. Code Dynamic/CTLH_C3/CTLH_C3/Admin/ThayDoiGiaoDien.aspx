<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThayDoiGiaoDien.aspx.cs" Inherits="CTLH_C3.Admin.ThayDoiGiaoDien" ValidateRequest="false"%>

<%@ Register Assembly="RichTextEditor" Namespace="AjaxControls" TagPrefix="RichTextEditor" %>
<%@ Register src="~/Guest/user_CustomLogin.ascx" tagname="user_Login" tagprefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/adminstyle.css" />
    <title>Thay Đổi Giao Diện</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function CopyText() {
            editor = top.document.getElementById(editorId);
            editor.value = richeditor.toHtmlString();
        }
    </script>
    
    <h1>Thay Đổi Giao Diện</h1>
    <%--upload file--%>
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
    
<asp:Panel ID="pnThayDoiGiaoDien" runat="server" style="float:left; clear:both;">
    <RichTextEditor:RichTextEditor ID="rteGioiThieu" Theme="Blue" runat="server" />
</asp:Panel>
<div class="CanhGiua" style="float:left; clear:both; width:740px; text-align:center;">
<asp:Button ID="Button2" runat="server" Text="Đồng ý cập nhật" 
        onclick="Button2_Click" OnClientClick="javascript:OnTextView();CopyText();"
        style="margin:10px 0px;"
        />
        </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login" runat="server" />
</asp:Content>