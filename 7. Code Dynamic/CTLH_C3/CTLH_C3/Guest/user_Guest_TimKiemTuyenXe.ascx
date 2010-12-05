<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Guest_TimKiemTuyenXe.ascx.cs"
    Inherits="Web_c3.Guest.user_Guest_TimKiemTuyenXe" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 100px;
    }
</style>
<asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" Height="16px" Width="221px"
    Style="text-align: center">
    <asp:Label ID="lbTimKiemChuyenXe" runat="server" Text="Tìm kiếm Chuyến xe" Font-Bold="True"
        Font-Size="Larger"></asp:Label>
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="lbNoiKhoiHanh" runat="server" Text="Nơi khởi hành : "></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddlNoiKhoihanh" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbNoiDen" runat="server" Text="Nơi đến : "></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddlNoiDen" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <div>
        <asp:Button ID="btTimKiem" runat="server" Style="text-align: center" Text="Tìm Kiếm" PostBackUrl="../DanhSachCacChuyen.aspx" />
    </div>
    <a href="TimKiemNangCao.aspx">Tìm kiếm nâng cao</a>
    <asp:ListView ID="lvThongTin" runat="server">
    </asp:ListView>
</asp:Panel>
