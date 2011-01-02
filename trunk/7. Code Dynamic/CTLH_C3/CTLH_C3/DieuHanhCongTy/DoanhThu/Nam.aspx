<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Nam.aspx.cs" Inherits="CTLH_C3.DieuHanhCongTy.DoanhThu.Nam" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<h2>Thống kê doanh thu theo các năm</h2>
 <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" 
        AllowSorting="True" CssClass="gridview">
     <Columns>
         <asp:BoundField HeaderText="Năm" />
         <asp:BoundField HeaderText="Doanh số" />
     </Columns>
     
           
 </asp:GridView>
    <asp:Table ID="table" runat="server">
    </asp:Table>

</asp:Content>

