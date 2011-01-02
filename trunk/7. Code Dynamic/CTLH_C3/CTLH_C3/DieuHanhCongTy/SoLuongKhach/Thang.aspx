<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Thang.aspx.cs" Inherits="CTLH_C3.DieuHanhCongTy.SoLuongKhach.Thang" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent"  runat="server">
    <h2>Thống kê số lượng khách/tuyến theo tháng trong năm</h2>
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
    <asp:Table ID="table" runat="server" >
        <asp:TableRow ID="TableRow1" runat="server" BorderColor="Black" BorderStyle="Dotted">
            <asp:TableCell ID="TableCell1" runat="server">Tên tuyến</asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>

