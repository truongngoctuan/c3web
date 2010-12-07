<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="Web_c3.LienHe" %>
<%@ Register src="~/Guest/user_Login.ascx" tagname="user_Login" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_HotLine.ascx" tagname="user_HotLine" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_LienHe.ascx" tagname="user_LienHe" tagprefix="webUC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <webUC:user_LienHe ID="user_LienHe1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <div >
       <webUC:user_HotLine ID="user_HotLine1"  runat="server" />
       <div >
            <webUC:user_Login ID="user_Login1"  runat="server" />
       </div>
    </div>
</asp:Content>
