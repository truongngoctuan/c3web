<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThayDoiThongTinCaNhan.aspx.cs" Inherits="CTLH_C3._Default" %>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:DetailsView ID="DetailsView1" runat="server" 
                DataSourceID="DetailsDataSource" DefaultMode="Edit"
                AutoGenerateEditButton="True"
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold" 
                AutoGenerateRows="False">
                <FieldHeaderStyle CssClass="bold" />
                <Fields>
                    <asp:BoundField DataField="HoTen" HeaderText="Họ ten" ReadOnly="True" 
                        SortExpression="HoTen" />
                    <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" ReadOnly="True" 
                        SortExpression="DienThoai" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" ReadOnly="True" 
                        SortExpression="DiaChi" />
                    <asp:BoundField DataField="LuongTrongThang" HeaderText="LuongTrongThang" 
                        ReadOnly="True" SortExpression="LuongTrongThang" />
                    <asp:BoundField DataField="LoaiNhanVien" HeaderText="LoaiNhanVien" 
                        ReadOnly="True" SortExpression="LoaiNhanVien" />
                </Fields>
            </asp:DetailsView>

            <asp:LinqDataSource ID="DetailsDataSource" runat="server" 
                TableName="NHAN_VIENs" ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                Select="new (HoTen, DienThoai, DiaChi, LuongTrongThang, LoaiNhanVien)" 
                Where="MaNhanVien == @MaNhanVien">
                <WhereParameters>
                    <asp:QueryStringParameter Name="MaNhanVien" QueryStringField="MaNhanVien" 
                        Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
