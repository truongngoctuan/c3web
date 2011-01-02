<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" CodeBehind="Edit.aspx.cs" Inherits="CTLH_C3.XEs.Edit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h2>TThay đổi thông tin một xe</h2>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="DetailsDataSource" DefaultMode="Edit"
                AutoGenerateEditButton="false" OnItemCommand="DetailsView1_ItemCommand" OnItemUpdated="DetailsView1_ItemUpdated"
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold">
                
                <Fields> 
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
</asp:Content>
