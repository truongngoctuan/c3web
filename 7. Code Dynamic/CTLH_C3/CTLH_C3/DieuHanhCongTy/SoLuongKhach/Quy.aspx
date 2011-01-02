<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Quy.aspx.cs" Inherits="CTLH_C3.DieuHanhCongTy.SoLuongKhach.Quy" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Thống Kê Số Lượng Khách Theo Quý</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Thống Kê Số Lượng Khách Theo Quý</h1>
    <div class="CanhGiua" style="width:400px;">
    <asp:Label ID="Label1" runat="server" Text="Chọn năm"></asp:Label>
    <asp:DropDownList ID="DropDownList_Nam" runat="server" AutoPostBack="True" 
        onprerender="DropDownList_Nam_PreRender" 
        onselectedindexchanged="DropDownList_Nam_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" Text="Chọn tuyến"></asp:Label>
    <asp:DropDownList ID="DropDownList_TuyenXe" runat="server" AutoPostBack="True" 
        onprerender="DropDownList_TuyenXe_PreRender" 
        onselectedindexchanged="DropDownList_TuyenXe_SelectedIndexChanged">
        <asp:ListItem Value="0">Tất cả</asp:ListItem>
    </asp:DropDownList>
    <asp:Table ID="table" runat="server" Width="406px" CssClass="gridview">
        <asp:TableRow ID="TableRow1" runat="server"  Font-Bold="true">
            <asp:TableCell ID="TableCell1" runat="server">Tên tuyến</asp:TableCell>
            <asp:TableCell ID="TableCell2" runat="server">Quý I</asp:TableCell>
            <asp:TableCell ID="TableCell3" runat="server">Quý II</asp:TableCell>
            <asp:TableCell ID="TableCell4" runat="server">Quý III</asp:TableCell>
            <asp:TableCell ID="TableCell5" runat="server">Quý IV</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>
