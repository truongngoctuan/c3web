<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_c3.Default" %>
<%@ Register src="user_Login.ascx" tagname="user_Login" tagprefix="uc1" %>
<%@ Register src="user_HotLine.ascx" tagname="user_HotLine" tagprefix="uc3" %>
<%@ Register src="user_LienHe.ascx" tagname="user_LienHe" tagprefix="uc3" %>
<%@ Register src="user_Feedback.ascx" tagname="user_Feedback" tagprefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <img alt="" src="images/Left_1.jpg" style="width:195px; height: 146px" />
    <img alt="" src="images/Left_2.png" style="width:195px; height: 94px" /> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <uc3:user_Feedback ID="user_Feedback" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <div >
       <uc3:user_HotLine ID="user_HotLine1"  runat="server" />
       <div >
            <uc1:user_Login ID="user_Login1"  runat="server" />
       </div>
    </div>
</asp:Content>
