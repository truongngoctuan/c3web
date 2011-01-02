<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Quy.aspx.cs" Inherits="CTLH_C3.DieuHanhCongTy.SoLuongKhach.Quy" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<h2>Thống kê số lượng khách/tuyến theo quý trong năm</h2>
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
    <asp:Table ID="table" runat="server" Width="406px">
        <asp:TableRow ID="TableRow1" runat="server" BorderColor="Black" BorderStyle="Dotted">
            <asp:TableCell ID="TableCell1" runat="server">Tên tuyến</asp:TableCell>
            <asp:TableCell ID="TableCell2" runat="server">Quý I</asp:TableCell>
            <asp:TableCell ID="TableCell3" runat="server">Quý II</asp:TableCell>
            <asp:TableCell ID="TableCell4" runat="server">Quý III</asp:TableCell>
            <asp:TableCell ID="TableCell5" runat="server">Quý IV</asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>

