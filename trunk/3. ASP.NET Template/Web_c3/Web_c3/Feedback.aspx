<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_c3.Feedback" %>
<%@ Register src="~/Guest/user_Login.ascx" tagname="user_Login" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_HotLine.ascx" tagname="user_HotLine" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_LienHe.ascx" tagname="user_LienHe" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_Feedback.ascx" tagname="user_Feedback" tagprefix="webUC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <img alt="" src="images/Left_1.jpg" style="width:195px; height: 146px" />
    <img alt="" src="images/Left_2.png" style="width:195px; height: 94px" /> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <webUC:user_Feedback ID="user_Feedback" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <div >
       <webUC:user_HotLine ID="user_HotLine1"  runat="server" />
       <div >
            <webUC:user_Login ID="user_Login1"  runat="server" />
       </div>
    </div>
</asp:Content>
