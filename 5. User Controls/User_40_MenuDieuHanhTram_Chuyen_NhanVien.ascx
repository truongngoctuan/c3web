<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_40_MenuDieuHanhTram_Chuyen_NhanVien.ascx.cs" Inherits="UserControl.User_40_MenuDieuHanhTram_Chuyen_NhanVien" %>
<asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
    <Items>
        <asp:MenuItem Text="Quản lý chuyến" Value="Quản lý chuyến">
            <asp:MenuItem Text="Thêm chuyến mới" Value="Thêm chuyến mới"></asp:MenuItem>
            <asp:MenuItem Text="Xóa chuyến" Value="Xóa chuyến"></asp:MenuItem>
            <asp:MenuItem Text="Cập nhật thông tin chuyến" 
                Value="Cập nhật thông tin chuyến"></asp:MenuItem>
            <asp:MenuItem Text="Phân công chuyến" Value="Phân công chuyến"></asp:MenuItem>
            <asp:MenuItem Text="Theo dõi chuyến" Value="Theo dõi chuyến"></asp:MenuItem>
            <asp:MenuItem Text="Xác nhận xe tới trạm" Value="Xác nhận xe tới trạm">
            </asp:MenuItem>
            <asp:MenuItem Text="Xếp lịch chuyến" Value="Xếp lịch chuyến"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Quản lý phản hồi" Value="Quản lý phản hồi">
            <asp:MenuItem Text="Ghi nhận phản hồi" Value="Ghi nhận phản hồi"></asp:MenuItem>
            <asp:MenuItem Text="Duyệt phản hồi" Value="Duyệt phản hồi"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Quản lý bán (đặt) vé" Value="Quản lý bán (đặt) vé">
        </asp:MenuItem>
    </Items>
</asp:Menu>
