<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_c3.Default" %>
<%@ Register src="user_Login.ascx" tagname="user_Login" tagprefix="uc1" %>
<%@ Register src="user_HotLine.ascx" tagname="user_HotLine" tagprefix="uc3" %>
<%@ Register src="user_GioiThieu.ascx" tagname="user_GioiThieu" tagprefix="uc4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    Nội dung cột trái ở đây
    <br />
    Không được xóa đánh dấu ContentPlaceHolder
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>
       <uc4:user_GioiThieu ID="user_GioiThieu1" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <div >
       <uc3:user_HotLine ID="user_HotLine1"  runat="server" />
       <div >
            <uc1:user_Login ID="user_Login1"  runat="server" />
       </div>
    </div>
</asp:Content>
