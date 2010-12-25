<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ThayDoiThongTinCaNhan.aspx.cs" Inherits="CTLH_C3.ThayDoiThongTinCaNhan" %>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true"/>
    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
            <h1><asp:Label runat="server" ID="lblLoaiNhanVien"></asp:Label></h1>
        
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1"
                Display="None" />
            
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="DetailsDataSource"
                DefaultMode="Edit" AutoGenerateEditButton="True" CssClass="detailstable" FieldHeaderStyle-CssClass="bold"
                AutoGenerateRows="False">
                <FieldHeaderStyle CssClass="bold" />
                <Fields>
                    <asp:DynamicField DataField="HoTen" />
                    <asp:DynamicField DataField="DienThoai" />
                    <asp:DynamicField DataField="DiaChi" />
                    <asp:DynamicField DataField="LuongTrongThang" />
                </Fields>
            </asp:DetailsView>
            
           <asp:LinqDataSource ID="DetailsDataSource" runat="server" 
                ContextTypeName = "CTLH_C3.TRAVEL_WEBDataContext"
                TableName = "NHAN_VIENs"
                EnableUpdate = "true" 
                AutoGenerateWhereClause="false"> 
           </asp:LinqDataSource>
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
