﻿<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.Master" CodeBehind="Edit.aspx.cs" Inherits="CTLH_C3.TAI_KHOANs.Edit" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Cập Nhật Thông Tin Tài Khoản</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Cập Nhật Thông Tin Tài Khoản</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
    <div class="CanhGiua" style="width:300px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:DetailsView ID="DetailsView1" runat="server" 
                DataSourceID="DetailsDataSource" DefaultMode="Edit"
                AutoGenerateEditButton="false" OnItemCommand="DetailsView1_ItemCommand" OnItemUpdated="DetailsView1_ItemUpdated"
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
                    
                    
                    <asp:TemplateField> 
                        <ItemTemplate> 
                                <asp:Button ID="UpdateLinkButton" runat="server" CommandName="Update" CausesValidation="false" 
                                   Text="Cập nhật" /> 
                                <asp:Button ID="Button1" runat="server" CommandName="Cancel" CausesValidation="false" 
                                   Text="Hủy bỏ" /> 
                        </ItemTemplate> 
                    </asp:TemplateField> 
                </Fields>
            </asp:DetailsView>

            <asp:LinqDataSource ID="DetailsDataSource" runat="server" EnableUpdate="true">
                <WhereParameters>
                    <asp:DynamicQueryStringParameter />
                </WhereParameters>
            </asp:LinqDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>