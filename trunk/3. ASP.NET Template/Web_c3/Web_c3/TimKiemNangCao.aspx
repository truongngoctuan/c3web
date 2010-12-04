<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TimKiemNangCao.aspx.cs" Inherits="Web_c3.TimKiemNangCao" %>

<%@ Register src="~/Guest/ucTimKiemNangCao.ascx" tagname="ucTimKiemNangCao" tagprefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/Guest/Css/CssTimKiemNangCao.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="ctMain" ContentPlaceHolderID="MainContent" runat="server">
    <div>        
        <webUC:ucTimKiemNangCao ID="ucTKNC" runat="server"/> 
    </div>
</asp:Content>