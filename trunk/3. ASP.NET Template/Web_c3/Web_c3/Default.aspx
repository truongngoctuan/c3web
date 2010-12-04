<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_c3.Default" %>
<%@ Register src="~/Guest/user_Login.ascx" tagname="user_Login" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_HotLine.ascx" tagname="user_HotLine" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_GioiThieu.ascx" tagname="user_GioiThieu" tagprefix="webUC" %>

<%@ Register src="~/Guest/user_Guest_TimKiemTuyenXe.ascx" tagname="user_Guest_TimKiemTuyenXe" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_Guest_XemThongTinChuyenXe.ascx" tagname="user_Guest_XemThongTinChuyenXe" tagprefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <div style="width:225px;float:left">
    <webUC:user_Guest_TimKiemTuyenXe ID="user_Guest_TimKiemTuyenXe1" runat="server" />
    &nbsp;  
     </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width:520px;float:left">
        <asp:TextBox ID="tbxTest" runat="server">Test</asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <webUC:user_GioiThieu ID="user_GioiThieu1" runat="server" />
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <div style="width:245px;float:right">
       <webUC:user_HotLine ID="user_HotLine1"  runat="server" />
       <div >
            <webUC:user_Login ID="user_Login1"  runat="server" />
       </div>
    </div>
</asp:Content>