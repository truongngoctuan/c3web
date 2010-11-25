<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TimKiemNangCao.aspx.cs" Inherits="Web_c3.Guest.TimKiemNangCao" %>

<%@ Register src="ucTimKiemNangCao.ascx" tagname="ucTimKiemNangCao" tagprefix="uc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="Css/CssTimKiemNangCao.css" rel="stylesheet" type="text/css" />
    </asp:Content>


<asp:Content ID="ctMain" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        
        <uc:ucTimKiemNangCao ID="ucTKNC" runat="server"/> 
    </div>
    </asp:Content>