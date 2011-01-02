<%@ Control Language="C#" CodeBehind="Image.ascx.cs" Inherits="CTLH_C3.ImageField" %>

<asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/ImageHandler.ashx?id=" + FieldValueString %>' />

