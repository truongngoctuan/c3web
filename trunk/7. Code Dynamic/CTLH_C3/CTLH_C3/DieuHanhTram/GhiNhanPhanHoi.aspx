<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="GhiNhanPhanHoi.aspx.cs" Inherits="CTLH_C3.DieuHanhCongTy.GhiNhanPhanHoi" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            


            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource"
                AllowPaging="True" AllowSorting="True" CssClass="gridview">
                

                <PagerStyle CssClass="footer"/>        
               
                    <asp:GridViewPager ID="GridViewPager1" runat="server" />
                
               
            </asp:GridView>

            <asp:LinqDataSource ID="GridDataSource" runat="server" EnableDelete="true">
                
            </asp:LinqDataSource>

            <br />

           
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>