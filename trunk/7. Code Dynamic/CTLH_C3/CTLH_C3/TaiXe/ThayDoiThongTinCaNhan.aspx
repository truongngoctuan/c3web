﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ThayDoiThongTinCaNhan.aspx.cs" Inherits="CTLH_C3.ThayDoiThongTinCaNhan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Tài xế - Thay đổi thông tin cá nhân
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <div style="width:250px;" ></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true"/>
    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
            <h1><asp:Label runat="server" ID="lblLoaiNhanVien"></asp:Label></h1>
        
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView_ThongTinCaNhan"
                Display="None" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator2" ControlToValidate="DetailsView_TaiKhoan"
            Display="None" />
            
           <%-- Thông tin cá nhân--%>
            <asp:DetailsView ID="DetailsView_ThongTinCaNhan" runat="server" 
                DataSourceID="ThongTinDataSource" AutoGenerateEditButton="True" 
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold"
                AutoGenerateRows="False">
                <FieldHeaderStyle CssClass="bold" />
                <Fields>
                    <asp:DynamicField DataField="HoTen" />
                    <asp:DynamicField DataField="DienThoai" />
                    <asp:DynamicField DataField="DiaChi" />
                    <asp:BoundField DataField="LuongTrongThang" HeaderText="Lương căn bản" ReadOnly="true"/>
                </Fields>
            </asp:DetailsView>
            
           <asp:LinqDataSource ID="ThongTinDataSource" runat="server" 
                ContextTypeName = "CTLH_C3.TRAVEL_WEBDataContext"
                TableName = "NHAN_VIENs" 
                Select="new (MaNhanVien, HoTen, DienThoai, DiaChi, LuongTrongThang, LoaiNhanVien, LOAI_NHAN_VIEN)"> 
           </asp:LinqDataSource>
           
           <br />
           
           <%--Thông tin tài khoản--%>
           <asp:DetailsView ID="DetailsView_TaiKhoan" runat="server" 
                DataSourceID="TaiKhoanDataSource" AutoGenerateEditButton="True" 
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold"
                AutoGenerateRows="False">
                <FieldHeaderStyle CssClass="bold" />
                <Fields>
                    <asp:BoundField DataField="Username" HeaderText="Tên tài khoản" ReadOnly="true"/>
                    <asp:DynamicField DataField="Password" />
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="true"/>
                </Fields>
            </asp:DetailsView>
            
           <asp:LinqDataSource ID="TaiKhoanDataSource" runat="server" 
                ContextTypeName = "CTLH_C3.TRAVEL_WEBDataContext"
                TableName = "TAI_KHOANs" 
                Select="new (Username, Password, MaTaiKhoan, Email)"> 
           </asp:LinqDataSource>
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
</asp:Content>