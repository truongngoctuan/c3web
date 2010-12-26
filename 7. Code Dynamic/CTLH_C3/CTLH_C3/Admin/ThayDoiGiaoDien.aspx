<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThayDoiGiaoDien.aspx.cs" Inherits="CTLH_C3.Admin.ThayDoiGiaoDien" %>
<%@ Register Assembly="RichTextEditor" Namespace="AjaxControls" TagPrefix="RichTextEditor" %>
<%@ Register src="~/Guest/user_CustomLogin.ascx" tagname="user_Login" tagprefix="webUC" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function onSubmit() {
            var hdRTEContent = document.getElementById("hdRTEContent");
            hdRTEContent.value = richeditor.toHtmlString();
        }
    </script>
<asp:Panel ID="pnThayDoiGiaoDien" runat="server" style="padding:10px" >
    <asp:HiddenField ID="hdRTEContent" runat="server" />
    <RichTextEditor:RichTextEditor ID="rteGioiThieu" Theme="Blue" runat="server" />
</asp:Panel>
</asp:Content>
    
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login" runat="server" />
</asp:Content>