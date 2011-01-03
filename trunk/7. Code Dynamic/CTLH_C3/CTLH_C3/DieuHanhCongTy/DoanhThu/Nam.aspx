<%@ Page Language="C#" MasterPageFile="~/DieuHanhCongTy/MasterPage.Master" AutoEventWireup="true" CodeBehind="Nam.aspx.cs" Inherits="CTLH_C3.DieuHanhCongTy.DoanhThu.Nam" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Thống Kê Doanh Thu Theo Các Năm</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<h1>Thống Kê Doanh Thu Theo Các Năm</h1>
<div class="CanhGiua" style="width:275px;">
 <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" 
        AllowSorting="True" CssClass="gridview">
     <Columns>
         <asp:BoundField HeaderText="Năm" />
         <asp:BoundField HeaderText="Doanh số" />
     </Columns>
     
           
 </asp:GridView>
    <asp:Table ID="table" runat="server">
    </asp:Table>
</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>
