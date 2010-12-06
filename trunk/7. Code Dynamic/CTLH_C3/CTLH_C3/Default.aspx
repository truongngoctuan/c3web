<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CTLH_C3._Default" %>

<%@ Register src="~/Guest/user_Login.ascx" tagname="user_Login" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_HotLine.ascx" tagname="user_HotLine" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_GioiThieu.ascx" tagname="user_GioiThieu" tagprefix="webUC" %>

<%@ Register src="~/Guest/user_Guest_TimKiemTuyenXe.ascx" tagname="user_Guest_TimKiemTuyenXe" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_Guest_XemThongTinChuyenXe.ascx" tagname="user_Guest_XemThongTinChuyenXe" tagprefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="LeftContent" runat="server">
    <div style="width:225px;float:left">
    <webUC:user_Guest_TimKiemTuyenXe ID="user_Guest_TimKiemTuyenXe1" runat="server" />
    &nbsp;  
     </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <%--<div style="width:520px;float:left">
        <webUC:user_GioiThieu ID="user_GioiThieu1" runat="server" />
    </div>--%>
<%--
    <h2>My tables</h2>

    <br /><br />

    <asp:GridView ID="Menu1" runat="server" AutoGenerateColumns="false"
        CssClass="gridview" AlternatingRowStyle-CssClass="even">
        <Columns>
            <asp:TemplateField HeaderText="Table Name" SortExpression="TableName">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("ListActionPath") %>'><%#Eval("DisplayName") %></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>--%>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="RightContent" runat="server">
    <div style="width:245px;float:right">
       <webUC:user_HotLine ID="user_HotLine1"  runat="server" />
       <div >
            <webUC:user_Login ID="user_Login1"  runat="server" />
       </div>
    </div>
</asp:Content>
<%--
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server" />

    <h2>My tables</h2>

    <br /><br />

    <asp:GridView ID="Menu1" runat="server" AutoGenerateColumns="false"
        CssClass="gridview" AlternatingRowStyle-CssClass="even">
        <Columns>
            <asp:TemplateField HeaderText="Table Name" SortExpression="TableName">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("ListActionPath") %>'><%#Eval("DisplayName") %></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>--%>


