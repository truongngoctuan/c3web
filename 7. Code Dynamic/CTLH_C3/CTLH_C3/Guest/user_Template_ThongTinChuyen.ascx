<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Template_ThongTinChuyen.ascx.cs" Inherits="CTLH_C3.Guest.user_GridView_ThongTinChuyen" %>
<asp:Panel ID="Panel1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Width="990px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <Columns>
            <asp:BoundField HeaderText="Mã chuyến xe" />
            <asp:BoundField HeaderText="Thời gian khởi hành" />
            <asp:BoundField HeaderText="Thời gian dự kiến đến" />
            <asp:BoundField HeaderText="Tài xế" />
            <asp:BoundField HeaderText="Biển số xe" />
            <asp:BoundField HeaderText="Hãng sản xuất" />
            <asp:BoundField HeaderText="Số chỗ" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:GridView>
</asp:Panel>
