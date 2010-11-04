<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_GioiThieu.ascx.cs" Inherits="Web_c3.user_GioiThieu" %>
<asp:Panel ID="pnGioiThieu" runat="server" BorderStyle="Groove" Height="693px" 
    Width="392px" style="float:left;">

    <asp:Label ID="lbCTLuHanh" runat="server" Font-Size="Larger" 
        Text="Công Ty Lữ Hành C3HCMUS"></asp:Label>
    <br />
    <asp:Image ID="imGioiThieu" runat="server" ImageUrl="~/images/content_img.jpg" 
        Width="280px" />
    <br />
    Ngày 5/7, danh sách Top 10 công ty lữ hành và Khách sạn Việt Nam 2007 đã được 
    ngành du lịch công bố. Đây là danh hiệu do Hiệp hội Du lịch Việt Nam bình chọn. 
    Mỗi năm, danh hiệu này sẽ được trao tặng cho 10 doanh nghiệp kinh doanh lữ hành 
    quốc tế và 10 khách sạn hàng đầu của Việt Nam. Nét mới của lễ trao giải năm nay 
    là thông qua kết quả bình chọn của khách du lịch trên các phiếu bầu phát trực 
    tiếp và website www.vietnamtourism.com.vn, Ban tổ chức đã quyết định trao thêm 
    hai giải chuyên đề.
    <asp:LinkButton ID="lbtnXemThem" runat="server">Xem thêm</asp:LinkButton>
</asp:Panel>
