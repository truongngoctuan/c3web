<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_c3.Feedback" %>
<%@ Register src="~/Guest/user_Feedback.ascx" tagname="user_Feedback" tagprefix="webUC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Phản hồi
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <webUC:user_Feedback ID="user_Feedback" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    &nbsp;
</asp:Content>
