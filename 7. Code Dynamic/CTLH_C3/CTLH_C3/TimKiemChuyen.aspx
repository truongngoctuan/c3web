<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TimKiemChuyen.aspx.cs" Inherits="CTLH_C3.TimKiemChuyen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Tìm Kiếm Chuyến
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
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
    
    <div id ="AdvanceSearchRegion" runat="server" visible="false">
        <p>
        Giờ đi : <br />
        Từ <asp:TextBox ID="tbKhoiHanhMin" runat="server">10:00</asp:TextBox>
        Đến <asp:TextBox ID="tbKhoiHanhMax" runat="server">16:00</asp:TextBox>
        </p>
        Số chỗ trống :
        <asp:TextBox ID="tbSoChoTrongMin" runat="server">0</asp:TextBox>
    </div>
    <asp:Button ID="btSearch" runat="server" Text="Cập nhật danh sách" onclick="btSearch_Click" 
         />
    <asp:Button ID="btAdvanceSearch" runat="server" Text="Nâng cao" 
        onclick="btAdvanceSearch_Click" />
        
    <asp:GridView ID="gvChuyenXe" DataSourceID="ldsChuyenXe" runat="server" 
        AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="MaChuyenXe" HeaderText="MaChuyenXe" ReadOnly="True" 
                SortExpression="MaChuyenXe" />
            <asp:BoundField DataField="KhoiHanh" HeaderText="KhoiHanh" ReadOnly="True" 
                SortExpression="KhoiHanh" />
            <asp:BoundField DataField="DuKienDen" HeaderText="DuKienDen" ReadOnly="True" 
                SortExpression="DuKienDen" />
            <asp:BoundField DataField="GiaVe" HeaderText="GiaVe" ReadOnly="True" 
                SortExpression="GiaVe" />
            <asp:BoundField DataField="SoChoTrong" HeaderText="SoChoTrong" ReadOnly="True" 
                SortExpression="SoChoTrong" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="ldsChuyenXe" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" TableName="CHUYEN_XEs"         
        onselecting="LinqDataSource2_Selecting" >
    </asp:LinqDataSource>    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    &nbsp;
</asp:Content>

