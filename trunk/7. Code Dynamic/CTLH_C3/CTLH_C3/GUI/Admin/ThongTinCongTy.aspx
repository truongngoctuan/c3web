<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThongTinCongTy.aspx.cs" Inherits="CTLH_C3.GUI.Admin.ThongTinCongTy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Quản Lý Thông Tin Công Ty
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Thông Tin Công Ty</h1>
    <div>
    Đưa nội dung trang chủ (Guest) vào 1 đây. Phần Banner, Slogan thì cho phép sửa (enable) khi click vào, các phần tĩnh khác thì disable. <br />
    Phần giới thiệu công ty (phần ứng với UserControl GiớiThiệu), thì dùng 1 text editor ... (kiểu như editor post bài trên moodle nhưng màu mè hơn, chỉ cần download trên mạng là có sẵn, gắn vào thôi)    
    </div>
    <asp:Button ID="Button1" runat="server" Text="Lưu"></asp:Button>
    <asp:Button ID="Button2" runat="server" Text="Hủy"></asp:Button>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <%-- 
    <asp:LoginView ID="LoginView1" runat="server">
    </asp:LoginView> 
    %>
    Hình đại diện <br />
    Tên nhân viên <br />
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/GUI/Admin/TaiKhoan.aspx" runat="server">Quản lý tài khoản</asp:HyperLink><br />
    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/GUI/Admin/TaiKhoan.aspx" runat="server">Thông tin công ty</asp:HyperLink> : 5 phản hồi mới<br />
    
</asp:Content>
