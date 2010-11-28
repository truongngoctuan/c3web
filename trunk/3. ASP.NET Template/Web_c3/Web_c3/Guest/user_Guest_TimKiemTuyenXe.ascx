﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Guest_TimKiemTuyenXe.ascx.cs" Inherits="Web_c3.user_Guest_TimKiemTuyenXe" %>
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
<asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" Height="16px" 
    Width="221px" style="text-align: center">
    <asp:Label ID="lbTimKiemChuyenXe" runat="server" Text="Tìm kiếm Chuyến xe" 
        Font-Bold="True" Font-Size="Larger"></asp:Label>
    <br />

        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="lbNoiKhoiHanh" runat="server" Text="Nơi khởi hành : "></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlNoiKhoihanh" runat="server">
                    <asp:ListItem>Test 1</asp:ListItem>
                     <asp:ListItem>Test 2</asp:ListItem>
                      <asp:ListItem>Test 3</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lbNoiDen" runat="server" Text="Nơi đến : "></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlNoiDen" runat="server">
                    <asp:ListItem>Test 4</asp:ListItem>
                     <asp:ListItem>Test 5</asp:ListItem>
                      <asp:ListItem>Test 6</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
    </table>
    <div>
        <asp:Button ID="btTimKiem" runat="server" style="text-align: center" 
            Text="Tìm Kiếm" />
    </div>
    &nbsp;<asp:ListView ID="lvThongTin" runat="server">
    </asp:ListView>
</asp:Panel>
