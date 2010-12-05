<%@ Control Language="C#" CodeBehind="ForeignKey.ascx.cs" Inherits="CTLH_C3.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />