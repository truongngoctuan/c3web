<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThongTinChiTietChuyenXe.aspx.cs" Inherits="CTLH_C3.ThongTinChiTietChuyenXe" %>

<%@ Register Src="~/Guest/user_DanhSachTram.ascx" TagName="user_DanhSachTram" TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thông Tin Chi Tiết Chuyến Xe</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <webUC:user_DanhSachTram ID="user_DanhSachTram1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div style="float:left; width:550px; padding-left:5px; display:block;"> 
    <h1>Thông Tin Chi Tiết Chuyến Xe</h1>    
    <asp:DetailsView ID="dtvChuyenXe" runat="server" DataSourceID="ldsChuyenXe"
        AutoGenerateRows="false" FieldHeaderStyle-CssClass="bold" >
        <Fields>
            <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" ReadOnly="True" 
                SortExpression="MaChuyenXe" />
            <asp:BoundField DataField="HinhAnhXe" HeaderText="Hình ảnh xe" ReadOnly="True" 
                SortExpression="HinhAnhXe" />
            <asp:BoundField DataField="MaTaiXe" HeaderText="Mã tài xế" ReadOnly="True" 
                SortExpression="MaTaiXe" />
            <asp:BoundField DataField="TenTaiXe" HeaderText="Tên tài xế" ReadOnly="True" 
                SortExpression="TenTaiXe" />
            <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành" ReadOnly="True" 
                SortExpression="KhoiHanh" />
            <asp:BoundField DataField="DuKienDen" HeaderText="Dự kiến đến" ReadOnly="True" 
                SortExpression="DuKienDen" />
            <asp:BoundField DataField="GiaVe" HeaderText="Giá vé" ReadOnly="True" 
                SortExpression="GiaVe" />
            <asp:BoundField DataField="SoChoTrong" HeaderText="Số chỗ trống" ReadOnly="True" 
                SortExpression="SoChoTrong" />
        </Fields>
    </asp:DetailsView>
    <br />
    </div>
    <asp:LinqDataSource ID="ldsChuyenXe" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" TableName="CHUYEN_XEs"
        onselecting="ldsChuyenXe_Selecting" >
    </asp:LinqDataSource>    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <div style="width: 245px; float: right;">
        <%--<webUC:user_HotLine ID="user_HotLine1" runat="server" />--%>
        <div style="height: 256px">
            <webUC:user_Login ID="user_Login1" runat="server" />
        </div>
    </div>
</asp:Content>

