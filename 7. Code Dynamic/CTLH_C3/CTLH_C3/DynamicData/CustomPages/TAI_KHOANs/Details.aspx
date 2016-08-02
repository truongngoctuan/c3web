﻿<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.Master" CodeBehind="Details.aspx.cs" Inherits="CTLH_C3.TAI_KHOANs.Details" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Xem Thông Tin Tài Khoản</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Xem Thông Tin Tài Khoản</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
<div class="CanhGiua" style="width:300px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="DetailsDataSource" OnItemDeleted="DetailsView1_ItemDeleted"
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold" 
                AutoGenerateRows="false">
                <Fields>
                    <asp:DynamicField DataField="Username"></asp:DynamicField>
                    <asp:DynamicField DataField="Password"></asp:DynamicField>
                    <asp:DynamicField DataField="Salt"></asp:DynamicField>
                    <asp:DynamicField DataField="Email"></asp:DynamicField>
                    <asp:DynamicField DataField="NgayKichHoat"></asp:DynamicField>
                    <asp:DynamicField DataField="LOAI_TAI_KHOAN"></asp:DynamicField>
                    <asp:DynamicField DataField="NHAN_VIEN"></asp:DynamicField> 
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="EditHyperLink" runat="server"
                                NavigateUrl='<%# table.GetActionPath(PageAction.Edit, GetDataItem()) %>'
                                Text="Sửa" />
                            <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandName="Delete" CausesValidation="false"
                                OnClientClick='return confirm("Are you sure you want to delete this item?");'
                                Text="Xóa" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>

            <asp:LinqDataSource ID="DetailsDataSource" runat="server" EnableDelete="true">
                <WhereParameters>
                    <asp:DynamicQueryStringParameter />
                </WhereParameters>
            </asp:LinqDataSource>

            <br />

            <div class="bottomhyperlink">
                <asp:HyperLink ID="ListHyperLink" runat="server">Show all items</asp:HyperLink>
            </div>        
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>