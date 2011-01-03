<%@ Page Language="C#" MasterPageFile="~/DieuHanhCongTy/MasterPage.Master" CodeBehind="Details.aspx.cs" Inherits="CTLH_C3.TUYEN_XEs.Details" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Xem Chi Tiết Một Tuyến Xe</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Xem Chi Tiết Một Tuyến Xe</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
    <div class="CanhGiua" style="width:300px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="DetailsDataSource" OnItemDeleted="DetailsView1_ItemDeleted"
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold" >
               <Fields> 
                    <asp:TemplateField> 
                        <ItemTemplate> 
                                <asp:Button ID="EditHyperLink" runat="server" NavigateUrl='<%# table.GetActionPath(PageAction.Edit, GetDataItem()) %>'
                                Text="Sửa" /> 
                               <asp:Button ID="DeleteLinkButton" runat="server" CommandName="Delete" CausesValidation="false"
                                OnClientClick='return confirm("Bạn có chắc muốn xóa tuyến xe này?");'
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
                <asp:HyperLink ID="ListHyperLink" runat="server">Xem tất cả tuyến xe</asp:HyperLink>
            </div>        
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>
