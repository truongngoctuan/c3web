<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_50_MenuPhanHeAdmin.ascx.cs" Inherits="UserControl.User_50_MenuPhanHeAdmin" %>
<asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
    <Items>
        <asp:MenuItem Text="Quản lý tài khoản" Value="Quản lý tài khoản">
            <asp:MenuItem Text="Thêm tài khoản mới" Value="Thêm tài khoản mới">
            </asp:MenuItem>
            <asp:MenuItem Text="Xóa tài khoản" Value="Xóa tài khoản"></asp:MenuItem>
            <asp:MenuItem Text="Cập nhật tài khoản" Value="Cập nhật tài khoản">
            </asp:MenuItem>
            <asp:MenuItem Text="Phân quyền tài khoản" Value="Phân quyền tài khoản">
            </asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Cấu hình giao diện" Value="Cấu hình giao diện">
            <asp:MenuItem Text="Thêm thông tin mới" Value="Thêm thông tin mới">
            </asp:MenuItem>
            <asp:MenuItem Text="Xóa thông tin" Value="Xóa thông tin"></asp:MenuItem>
            <asp:MenuItem Text="Cập nhật thông tin" Value="Cập nhật thông tin">
            </asp:MenuItem>
            <asp:MenuItem Text="Thay đổi giao diện khách hàng" 
                Value="Thay đổi giao diện khách hàng"></asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>
