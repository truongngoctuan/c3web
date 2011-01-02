<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="CTLH_C3.TimKiem" %>

<%@ Register Src="~/Guest/user_DanhSachTram.ascx" TagName="user_DanhSachTram" TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="gueststyle.css" />
    <title>Tìm Kiếm Chuyến</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <webUC:user_DanhSachTram ID="user_DanhSachTram1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="CanhGiua" style="width:500px;"> 
    <h1>Danh Sách Các Chuyến Trong Ngày</h1>
    <div>
    Trạm đầu : 
    <asp:DropDownList ID="ddlTramDi" runat="server" DataSourceID="ldsTramXe" 
            DataTextField="TenTramXe" DataValueField="MaTramXe"
            AutoPostBack="false">
    </asp:DropDownList>
    Trạm cuối :
    <asp:DropDownList ID="ddlTramDen" runat="server" DataSourceID="ldsTramXe" 
            DataTextField="TenTramXe" DataValueField="MaTramXe"
            AutoPostBack="false">
    </asp:DropDownList>   
    <asp:LinqDataSource ID="ldsTramXe" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
        Select="new (TenTramXe, MaTramXe)" TableName="TRAM_XEs">
    </asp:LinqDataSource>
    </div>
    
    <div id ="AdvanceSearchRegion" runat="server" visible="false"
    style="margin-top:5px; margin-bottom:5px;  
        padding-bottom:10px; padding-left:10px; padding-right:10px;
        border-style:dashed; border-color:Maroon; border-width:1px;
        -webkit-border-radius: 4px; -moz-border-radius: 4px;">
        <p>
        Giờ đi: Từ <asp:TextBox ID="tbKhoiHanhMin" runat="server">10:00</asp:TextBox>
        Đến <asp:TextBox ID="tbKhoiHanhMax" runat="server">16:00</asp:TextBox>
        </p>
        Số chỗ trống:
        <asp:TextBox ID="tbSoChoTrongMin" runat="server">0</asp:TextBox>
    </div>
    <div style="text-align:center; margin-top:10px; margin-bottom:10px;">
    <asp:Button ID="btSearch" runat="server" Text="Cập nhật danh sách" onclick="btSearch_Click" 
         />
    <asp:Button ID="btAdvanceSearch" runat="server" Text="Nâng cao" 
        onclick="btAdvanceSearch_Click" />
        </div>
    <asp:GridView ID="gvChuyenXe" DataSourceID="ldsChuyenXe" runat="server" 
        AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" >
        <Columns>
            <%--<asp:HyperLinkField DataTextField="GiaVe" DataNavigateUrlFields="MaChuyenXe" DataNavigateUrlFormatString="~/ThongTinChiTietChuyenXe.aspx?MaChuyenXe={0}"/>--%>
            <asp:HyperLinkField Text="Chi tiết" DataNavigateUrlFields="MaChuyenXe" DataNavigateUrlFormatString="~/ThongTinChiTietChuyenXe.aspx?MaChuyenXe={0}"/>
            <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" ReadOnly="True" 
                SortExpression="MaChuyenXe" />
            <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành" ReadOnly="True" 
                SortExpression="KhoiHanh" />
            <asp:BoundField DataField="DuKienDen" HeaderText="Dự kiến đến" ReadOnly="True" 
                SortExpression="DuKienDen" />
            <asp:BoundField DataField="GiaVe" HeaderText="Giá vé" ReadOnly="True" 
                SortExpression="GiaVe" />
            <asp:BoundField DataField="SoChoTrong" HeaderText="Số chỗ trống" ReadOnly="True" 
                SortExpression="SoChoTrong" />
        </Columns>
    </asp:GridView>
    <br />
    </div>
    <asp:LinqDataSource ID="ldsChuyenXe" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" TableName="CHUYEN_XEs"         
        onselecting="LinqDataSource2_Selecting" >
    </asp:LinqDataSource>    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
     <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>

