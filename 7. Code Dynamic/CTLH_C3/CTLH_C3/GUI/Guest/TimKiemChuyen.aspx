<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TimKiemChuyen.aspx.cs" Inherits="CTLH_C3.GUI.Guest.TimKiemChuyen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Tìm Kiếm Chuyến
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Danh Sách Các Chuyến Trong Ngày</h1>
    <div>
    Trạm đầu : 
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Trạm 1</asp:ListItem>
        <asp:ListItem>Trạm 2</asp:ListItem>
        <asp:ListItem>Trạm 3</asp:ListItem>
        <asp:ListItem>Trạm 4</asp:ListItem>
        <asp:ListItem>Trạm 5</asp:ListItem>
    </asp:DropDownList>
    Trạm cuối :
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>Trạm 1</asp:ListItem>
        <asp:ListItem>Trạm 2</asp:ListItem>
        <asp:ListItem>Trạm 3</asp:ListItem>
        <asp:ListItem>Trạm 4</asp:ListItem>
        <asp:ListItem>Trạm 5</asp:ListItem>
    </asp:DropDownList>
        
    </div>
    <asp:Button ID="Button1" runat="server" Text="Nâng cao" 
        onclick="Button1_Click" />
    <div id ="AdvanceSearchRegion" runat="server" visible="false">
        <p>
        Giờ đi : <br />
        Từ <asp:TextBox ID="TextBox1" runat="server">10:00</asp:TextBox>
        Đến <asp:TextBox ID="TextBox2" runat="server">16:00</asp:TextBox>
        </p>
        Số chỗ trống :
        <asp:TextBox ID="TextBox3" runat="server">10:00</asp:TextBox>
    </div>
    
    <table>
        <thead>
            <tr>
                <th>Đặt chỗ</th>
                <th>Mã</th>
                <th>Giờ đi</th>
                <th>Giờ đến</th>
                <th>Chỗ trống</th>
                <th>Xe</th>
                <th>Chi Tiết</th>
            </tr>
        </thead>
        <tr>
            <td><asp:HyperLink runat="server" NavigateUrl="~/GUI/Guest/TimKiemChuyen.aspx">Đặt chỗ</asp:HyperLink></td>
            <td>1</td>
            <td>10:00</td>
            <td>23:00</td>
            <td>5</td>
            <td><asp:HyperLink runat="server" NavigateUrl="~/GUI/Guest/TimKiemChuyen.aspx">Xe</asp:HyperLink></td>
            <td><asp:HyperLink runat="server" NavigateUrl="~/GUI/Guest/TimKiemChuyen.aspx">Xem chi tiết</asp:HyperLink></td>
        </tr>
        <tr>
            <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/GUI/Guest/TimKiemChuyen.aspx">Đặt chỗ</asp:HyperLink></td>
            <td>1</td>
            <td>10:00</td>
            <td>23:00</td>
            <td>5</td>
            <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/GUI/Guest/TimKiemChuyen.aspx">Xe</asp:HyperLink></td>
            <td><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/GUI/Guest/TimKiemChuyen.aspx">Xem chi tiết</asp:HyperLink></td>
        </tr>
        <tr>
            <td><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/GUI/Guest/TimKiemChuyen.aspx">Đặt chỗ</asp:HyperLink></td>
            <td>1</td>
            <td>10:00</td>
            <td>23:00</td>
            <td>5</td>
            <td><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/GUI/Guest/TimKiemChuyen.aspx">Xe</asp:HyperLink></td>
            <td><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/GUI/Guest/TimKiemChuyen.aspx">Xem chi tiết</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    &nbsp;
</asp:Content>

