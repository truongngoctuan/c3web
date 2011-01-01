<%@ Page Language="C#" MasterPageFile="~/Site.master" 
CodeFile="AnonymousList.aspx.cs" Inherits="CTLH_C3.AnonymousList" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server"
      AutoLoadForeignKeys="true" />

    <h2><%= table.DisplayName%></h2>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
        HeaderText="List of validation errors" />
    <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1" Display="None" />

    <br /><br />

    <asp:FilterRepeater ID="FilterRepeater" runat="server">
        <ItemTemplate>
            <span><%# Eval("DisplayName") %></span>
            <asp:DynamicFilter runat="server" ID="DynamicFilter" OnSelectedIndexChanged="OnFilterSelectedIndexChanged" />
        </ItemTemplate>
        <FooterTemplate><br /><br /></FooterTemplate>
    </asp:FilterRepeater>

    <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource"
        AllowPaging="True" AllowSorting="True"
        CssClass="gridview" AlternatingRowStyle-CssClass="even">
       
        <PagerStyle CssClass="Footer"/>        
        <PagerTemplate>
            <asp:GridViewPager ID="GridViewPager1" runat="server" />
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

</asp:Content>
