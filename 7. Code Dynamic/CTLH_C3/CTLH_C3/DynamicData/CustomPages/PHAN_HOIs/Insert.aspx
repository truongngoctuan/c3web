<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" CodeBehind="Insert.aspx.cs" Inherits="CTLH_C3.PHAN_HOIs.Insert" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h2>Thêm mới đối tượng dữ liệu vào bảng <%= table.DisplayName %></h2>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="DetailsDataSource" DefaultMode="Insert"
                AutoGenerateInsertButton="false" OnItemCommand="DetailsView1_ItemCommand" OnItemInserted="DetailsView1_ItemInserted"
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold">
                
                    <FieldHeaderStyle CssClass="bold" /> 
                <Fields> 
                    <asp:TemplateField>   
                        <ItemTemplate> 
                                <asp:Button ID="InsertLinkButton" runat="server" CommandName="Insert" Text="Thêm mới" /> 
                                <asp:Button ID="Button1" runat="server" CommandName="Cancel" CausesValidation="false" Text="Hủy bỏ" /> 
                        </ItemTemplate> 
                    </asp:TemplateField> 
                </Fields>
            </asp:DetailsView>

            <asp:LinqDataSource ID="DetailsDataSource" runat="server" EnableInsert="true">
            </asp:LinqDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
