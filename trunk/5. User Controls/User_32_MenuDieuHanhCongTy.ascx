<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_32_MenuDieuHanhCongTy.ascx.cs" Inherits="UserControl.User_32_MenuDieuHanhCongTy" %>

<asp:Panel ID="Panel1" runat="server" Width="464px">
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Quản lý xe" Value="Quản lý xe">
                <asp:MenuItem Text="Thêm xe mới" Value="Thêm xe mới"></asp:MenuItem>
                <asp:MenuItem Text="Xóa xe" Value="Xóa xe"></asp:MenuItem>
                <asp:MenuItem Text="Cập nhật thông tin xe" Value="Cập nhật thông tin xe">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Quản lý nhân viên" Value="Quản lý nhân viên">
                <asp:MenuItem Text="Thêm nhân viên mới" Value="Thêm nhân viên mới">
                </asp:MenuItem>
                <asp:MenuItem Text="Xóa nhân viên" Value="Xóa nhân viên"></asp:MenuItem>
                <asp:MenuItem Text="Cập nhật thông tin nhân viên" 
                    Value="Cập nhật thông tin nhân viên"></asp:MenuItem>
                <asp:MenuItem Text="Phân bổ xe" Value="Phân bổ xe"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Quản lý tuyến" Value="Quản lý tuyến">
                <asp:MenuItem Text="Thêm tuyến mới" Value="Thêm tuyến mới"></asp:MenuItem>
                <asp:MenuItem Text="Xóa tuyến" Value="Xóa tuyến"></asp:MenuItem>
                <asp:MenuItem Text="Cập nhật thông tin tuyến" Value="Cập nhật thông tin tuyến">
                </asp:MenuItem>
                <asp:MenuItem Text="Tăng chuyến trong tuyến" Value="Tăng chuyến trong tuyến">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Quản lý trạm" Value="Quản lý trạm">
                <asp:MenuItem Text="Thêm trạm mới" Value="Thêm trạm mới"></asp:MenuItem>
                <asp:MenuItem Text="Xóa trạm" Value="Xóa trạm"></asp:MenuItem>
                <asp:MenuItem Text="Cập nhật thông tin trạm" Value="Cập nhật thông tin trạm">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Thống kê " Value="Thống kê ">
                <asp:MenuItem Text="Thống kê theo chuyến" Value="Thống kê theo chuyến">
                </asp:MenuItem>
                <asp:MenuItem Text="Thống kê doanh thu" Value="Thống kê doanh thu">
                    <asp:MenuItem Text="Doanh thu theo tháng" Value="Doanh thu theo tháng">
                    </asp:MenuItem>
                    <asp:MenuItem Text="Doanh thu theo quý" Value="Doanh thu theo quý">
                    </asp:MenuItem>
                    <asp:MenuItem Text="Doanh thu theo năm" Value="Doanh thu theo năm">
                    </asp:MenuItem>
                </asp:MenuItem>
            </asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Panel>
