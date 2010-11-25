<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTimKiemNangCao.ascx.cs" Inherits="Web_c3.Guest.ucTimKiemNangCao" %>
<%--<%@ Register src="~/User Control/ucComboBox.ascx" tagname="ucComboBox" tagprefix="uc" %>
<%@ Register src="~/User Control/ucCalendar.ascx" tagname="ucCalendar" tagprefix="uc" %>
<%@ Register src="~/User Control/ucLabel.ascx" tagname="ucLabel" tagprefix="uc" %>
<%@ Register src="~/User Control/ucListBox.ascx" tagname="ucListBox" tagprefix="uc" %>
<%@ Register src="~/User Control/ucRadioButton.ascx" tagname="ucRadioButton" tagprefix="uc" %>

<uc:ucLabel />
<uc:ucCalendar />
<uc:ucLabel />
<uc:ucCalendar />--%>
<div id = "dvChonTuyenChuyen">
    <%--chọn loại tìm kiếm là chuyến hay tuyến
    --%><asp:Label CssClass="lbChonLoaiTimKiem" ID="lbChonLoaiTimKiem" runat="server" Text="Chọn loại tìm kiếm: "></asp:Label>
    <br />
    <asp:RadioButton CssClass="rbTuyen" ID="rbTuyen" runat="server" Text="Tuyến du lịch."
    />
    <br />
    <asp:RadioButton CssClass="rbChuyen" ID="rbChuyen" runat="server" Text="Chuyến du lịch."/>
</div>


<%--chọn khoảng thời gian của chuyến (chọn tuyến thì phần này bị disable)
--%><asp:Label CssClass="lbTuNgay" ID="lbTuNgay" runat="server" Text="Từ ngày: "></asp:Label>
<asp:Calendar CssClass="cldTuNgay" ID="cldTuNgay" runat="server"></asp:Calendar>
<asp:Label CssClass="lbDenNgay" ID="lbDenNgay" runat="server" Text="Đến ngày: "></asp:Label>
<asp:Calendar CssClass="cldDenNgay" ID="cldDenNgay" runat="server"></asp:Calendar>

<%--chọn nơi đi nơi đến
--%><asp:Label CssClass="lbNoiDi" ID="lbNoiDi" runat="server" Text="Địa điểm khởi hành: "></asp:Label>
<asp:DropDownList CssClass="ddlDanhSachDiaDiemDi" ID="ddlDanhSachDiaDiemDi" runat="server">
</asp:DropDownList>
<asp:Label CssClass="lbNoiDen" ID="lbNoiDen" runat="server" Text="Địa điểm kết thúc: "></asp:Label>
<asp:DropDownList CssClass="ddlDanhSachDiaDiemDen" ID="ddlDanhSachDiaDiemDen" runat="server">
</asp:DropDownList>

<%--chọn danh sách 1 số địa điểm trung gian
--%><br />
<asp:Label CssClass="lbDiaDiemTrungGian" ID="lbDiaDiemTrungGian" runat="server" Text="Thêm địa điểm trung gian"></asp:Label>
<asp:DropDownList CssClass="ddlDiaDiemTrungGian" ID="ddlDiaDiemTrungGian" runat="server">
</asp:DropDownList>

<br />

<asp:Label CssClass="lbDanhSachDiaDiemTrungGian" ID="lbDanhSachDiaDiemTrungGian" runat="server" Text="Danh sách địa điểm trung gian: "></asp:Label>
<asp:ListBox CssClass="listboxDanhSachDiaDiemTrungGian" ID="listboxDanhSachDiaDiemTrungGian" runat="server"></asp:ListBox>

<br />

<asp:Button CssClass="btTimKiem" ID="btTimKiem" runat="server" Text="Tìm kiếm" />
