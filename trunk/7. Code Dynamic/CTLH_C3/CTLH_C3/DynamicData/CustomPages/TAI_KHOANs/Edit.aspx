﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" CodeBehind="Edit.aspx.cs" Inherits="CTLH_C3.TAI_KHOANs.Edit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h2>Edit entry from table <%= table.DisplayName %></h2>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:DetailsView ID="DetailsView1" runat="server" 
                DataSourceID="DetailsDataSource" DefaultMode="Edit"
                AutoGenerateEditButton="True" OnItemCommand="DetailsView1_ItemCommand" OnItemUpdated="DetailsView1_ItemUpdated"
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold" 
                onitemupdating="DetailsView1_ItemUpdating"
                AutoGenerateRows="false">
                <Fields>
                    <asp:DynamicField DataField="Username"></asp:DynamicField>
                    <asp:DynamicField DataField="Password"></asp:DynamicField>
                    <asp:DynamicField DataField="Salt" Visible="false"></asp:DynamicField>
                    <asp:DynamicField DataField="Email"></asp:DynamicField>
                    <asp:DynamicField DataField="LOAI_TAI_KHOAN"></asp:DynamicField>
                    <asp:DynamicField DataField="NHAN_VIEN"></asp:DynamicField>
                </Fields>
            </asp:DetailsView>

            <asp:LinqDataSource ID="DetailsDataSource" runat="server" EnableUpdate="true">
                <WhereParameters>
                    <asp:DynamicQueryStringParameter />
                </WhereParameters>
            </asp:LinqDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
