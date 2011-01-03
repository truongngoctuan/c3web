<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.Master" CodeBehind="Insert.aspx.cs" Inherits="CTLH_C3.TAI_KHOANs.Insert" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Thêm Tài Khoản Mới</title>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Thêm Tài Khoản Mới</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
    <div class="CanhGiua" style="width:300px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:DetailsView ID="DetailsView1" runat="server" 
                DataSourceID="DetailsDataSource" DefaultMode="Insert"
                AutoGenerateInsertButton="True" OnItemCommand="DetailsView1_ItemCommand" OnItemInserted="DetailsView1_ItemInserted"
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold" 
                oniteminserting="DetailsView1_ItemInserting"
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

            <asp:LinqDataSource ID="DetailsDataSource" runat="server" EnableInsert="true">
            </asp:LinqDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>