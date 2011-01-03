<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.Master" CodeBehind="List.aspx.cs" Inherits="CTLH_C3.TAI_KHOANs.List" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Xem Danh Sách Tài Khoản</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Xem Danh Sách Tài Khoản</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

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
                AllowPaging="True" AllowSorting="True" CssClass="gridview" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="EditHyperLink" runat="server"
                                NavigateUrl='<%# table.GetActionPath(PageAction.Edit, GetDataItem()) %>'
                            Text="Sửa" />&nbsp;
                            <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandName="Delete"
                                CausesValidation="false" Text="Xóa"
                                OnClientClick='return confirm("Are you sure you want to delete this item?");'
                            />&nbsp;
                            <asp:HyperLink ID="DetailsHyperLink" runat="server"
                                NavigateUrl='<%# table.GetActionPath(PageAction.Details, GetDataItem()) %>'
                                Text="Chi tiết" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:DynamicField DataField="Username"></asp:DynamicField>
                    <asp:DynamicField DataField="Email"></asp:DynamicField>
                    <asp:DynamicField DataField="LOAI_TAI_KHOAN"></asp:DynamicField>
                    <asp:DynamicField DataField="NHAN_VIEN"></asp:DynamicField>
                </Columns>

                <PagerStyle CssClass="footer"/>        
                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    There are currently no items in this table.
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:LinqDataSource ID="GridDataSource" runat="server" EnableDelete="true">
                <WhereParameters>
                    <asp:DynamicControlParameter ControlID="FilterRepeater" />
                </WhereParameters>
            </asp:LinqDataSource>
            
            <br />

            <div class="bottomhyperlink">
                <asp:HyperLink ID="InsertHyperLink" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Insert new item</asp:HyperLink>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>