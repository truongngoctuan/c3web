﻿<%@ Page Language="C#" MasterPageFile="~/DieuHanhCongTy/MasterPage.Master" CodeBehind="Details.aspx.cs" Inherits="CTLH_C3.XEs.Details" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h2>Chi tiết một chiếc xe</h2>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="DetailsDataSource" OnItemDeleted="DetailsView1_ItemDeleted"
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold" >
                 
                
                
            </asp:DetailsView>

            <asp:LinqDataSource ID="DetailsDataSource" runat="server" EnableDelete="true">
                <WhereParameters>
                    <asp:DynamicQueryStringParameter />
                </WhereParameters>
            </asp:LinqDataSource>

            <br />

            <div class="bottomhyperlink">
                <asp:HyperLink ID="ListHyperLink" runat="server">Xem tất cả các đối tượng dữ liệu</asp:HyperLink>
            </div>        
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>