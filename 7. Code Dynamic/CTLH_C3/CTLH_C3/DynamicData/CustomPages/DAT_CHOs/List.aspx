﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" CodeBehind="List.aspx.cs" Inherits="CTLH_C3.DAT_CHOs.List" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Xem Danh Sách Đặt Chỗ</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Xem Danh Sách Đặt Chỗ</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
    <div class="CanhGiua" style="width:300px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1" Display="None" />

            <asp:FilterRepeater ID="FilterRepeater" runat="server">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("DisplayName") %>' AssociatedControlID="DynamicFilter$DropDownList1" />
                    <asp:DynamicFilter runat="server" ID="DynamicFilter" OnSelectedIndexChanged="OnFilterSelectedIndexChanged" />
                </ItemTemplate>
                <FooterTemplate><br /><br /></FooterTemplate>
            </asp:FilterRepeater>

            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource"
                AllowPaging="True" AllowSorting="True" CssClass="gridview">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="EditHyperLink" runat="server"
                                NavigateUrl='<%# table.GetActionPath(PageAction.Edit, GetDataItem()) %>'
                            Text="Sửa" />&nbsp;<asp:LinkButton ID="DeleteLinkButton" runat="server" CommandName="Delete"
                                CausesValidation="false" Text="Xóa"
                                OnClientClick='return confirm("Bạn có chắc chắn muốn xóa không?");'
                            />&nbsp;<asp:HyperLink ID="DetailsHyperLink" runat="server"
                                NavigateUrl='<%# table.GetActionPath(PageAction.Details, GetDataItem()) %>'
                                Text="Chi tiết" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <PagerStyle CssClass="footer"/>        
                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Không có dặt chỗ nào trong cơ sở dữ liệu!
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:LinqDataSource ID="GridDataSource" runat="server" EnableDelete="true">
                <WhereParameters>
                    <asp:DynamicControlParameter ControlID="FilterRepeater" />
                </WhereParameters>
            </asp:LinqDataSource>

            <br />

            <div class="bottomhyperlink">
                <asp:HyperLink ID="InsertHyperLink" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Thêm mới</asp:HyperLink>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>