﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeBehind="DynamicDefault.aspx.cs" Inherits="CTLH_C3.DynamicDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server" />

    <h2>My tables</h2>

    <br /><br />

    <asp:GridView ID="Menu1" runat="server" AutoGenerateColumns="false"
        CssClass="gridview" AlternatingRowStyle-CssClass="even">
        <Columns>
            <asp:TemplateField HeaderText="Table Name" SortExpression="TableName">
                <ItemTemplate>
                    <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("ListActionPath") %>'><%#Eval("DisplayName") %></asp:HyperLink>--%>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#GetActionPath("AnonymousList")%>'><%#Eval("DisplayName") %></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Username" HeaderText="Tên tài khoản" />
        </Columns>
    </asp:GridView>
</asp:Content>


