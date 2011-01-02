<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Thang.aspx.cs" Inherits="CTLH_C3.DieuHanhCongTy.DoanhThu.Thang" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Thống kê doanh thu các tháng theo năm</h2>
    <asp:Label ID="Label1" runat="server" Text="Chọn năm"></asp:Label>
    <asp:DropDownList ID="DropDownList_Nam" runat="server" AutoPostBack="True" 
        onprerender="DropDownList_Nam_PreRender" 
        onselectedindexchanged="DropDownList_Nam_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Table ID="table" runat="server" Width="406px">
        <asp:TableRow runat="server" BorderColor="Black" BorderStyle="Dotted">
            <asp:TableCell runat="server">Tháng</asp:TableCell>
            <asp:TableCell runat="server">Doanh thu</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </asp:Content>

