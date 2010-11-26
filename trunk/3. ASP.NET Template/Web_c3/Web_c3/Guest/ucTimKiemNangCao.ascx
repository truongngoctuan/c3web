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

<%--chọn loại tìm kiếm là chuyến hay tuyến
--%><asp:Label CssClass="ucLabel" ID="lbChonLoaiTimKiem" runat="server" Text="Chọn loại tìm kiếm: "></asp:Label>
<br />
<asp:RadioButton CssClass="ucRadioButton" ID="rbTuyen" runat="server" Text="Tuyến du lịch."
/>
<br />
<asp:RadioButton CssClass="ucRadioButton" ID="rbChuyen" runat="server" Text="Chuyến du lịch."/>

<%--chọn khoảng thời gian của chuyến (chọn tuyến thì phần này bị disable)
--%><br />
<asp:Label CssClass="ucLabel" ID="lbTuNgay" runat="server" Text="Từ ngày: "></asp:Label>
<asp:Calendar CssClass="ucCalendar" ID="cldTuNgay" runat="server"></asp:Calendar>
<asp:Label CssClass="ucLabel" ID="lbDenNgay" runat="server" Text="Đến ngày: "></asp:Label>
<asp:Calendar CssClass="ucCalendar" ID="cldDenNgay" runat="server"></asp:Calendar>

<%--chọn nơi đi nơi đến
--%><asp:Label CssClass="ucLabel" ID="lbNoiDi" runat="server" Text="Địa điểm khởi hành: "></asp:Label>
<asp:DropDownList CssClass="ucDropDownList" ID="ddlDanhSachDiaDiemDi" runat="server">
</asp:DropDownList>
<asp:Label CssClass="ucLabel" ID="lbNoiDen" runat="server" Text="Địa điểm kết thúc: "></asp:Label>
<asp:DropDownList CssClass="ucDropDownList" ID="ddlDanhSachDiaDiemDen" runat="server">
</asp:DropDownList>

<%--chọn danh sách 1 số địa điểm trung gian
--%><br />
<asp:Label CssClass="ucLabel" ID="lbDiaDiemTrungGian" runat="server" Text="Thêm địa điểm trung gian"></asp:Label>
<asp:DropDownList CssClass="ucDropDownList" ID="ddlDiaDiemTrungGian" runat="server">
</asp:DropDownList>

<br />

<asp:Label CssClass="ucLabel" ID="lbDanhSachDiaDiemTrungGian" runat="server" Text="Danh sách địa điểm trung gian: "></asp:Label>
<asp:ListBox CssClass="ucListBox" ID="listboxDanhSachDiaDiemTrungGian" runat="server"></asp:ListBox>

<br />

<asp:Button CssClass="ucButton" ID="btTimKiem" runat="server" Text="Tìm kiếm" />


