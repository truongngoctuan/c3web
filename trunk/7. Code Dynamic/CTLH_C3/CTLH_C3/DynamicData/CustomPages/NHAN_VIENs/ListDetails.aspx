<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeBehind="ListDetails.aspx.cs" Inherits="CTLH_C3.NHAN_VIENs.ListDetails" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" DataSourceID="LinqDataSource2"
                CssClass="gridview" AutoGenerateColumns="True" >
            </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
        onselecting="LinqDataSource2_Selecting" >
        <WhereParameters>
            <asp:Parameter />
        </WhereParameters>
    </asp:LinqDataSource>
</asp:Content>

