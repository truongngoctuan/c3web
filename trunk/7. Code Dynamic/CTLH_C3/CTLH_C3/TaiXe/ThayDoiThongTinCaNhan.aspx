<%@ Page Language="C#" MasterPageFile="MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ThayDoiThongTinCaNhan.aspx.cs" Inherits="CTLH_C3.ThayDoiThongTinCaNhan" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<%@ Register src="../Authenticated/Controls/ucDoiMatKhau.ascx" tagname="ucDoiMatKhau" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/taixestyle.css" />
<title>Thay Đổi Thông Tin Cá Nhân</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true"/>
    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
<div class="CanhGiua" style="width:500px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h1>Thay Đổi Thông Tin Cá Nhân</h1>
            <p style="text-align:center;">
            Loại nhân viên: <b><asp:Label runat="server" ID="lblLoaiNhanVien"></asp:Label></b>
            </p>
        
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView_ThongTinCaNhan"
                Display="None" />
            
           <%-- Thông tin cá nhân--%>
           <div class="CanhGiua" style="width:300px;">
            <asp:DetailsView ID="DetailsView_ThongTinCaNhan" runat="server"
                DataSourceID="ThongTinDataSource" 
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold"
                AutoGenerateRows="False">
                <FieldHeaderStyle CssClass="bold" />
                <Fields>
                    <asp:DynamicField DataField="HoTen" />
                    <asp:DynamicField DataField="DienThoai" />
                    <asp:DynamicField DataField="DiaChi" />
                    <asp:BoundField DataField="LuongTrongThang" HeaderText="Lương căn bản" ReadOnly="true"/>
                    <asp:CommandField CancelText="Thôi" DeleteText="Xóa" EditText="Sửa" 
                        InsertText="Chèn" NewText="Thêm mới" SelectText="Chọn" ShowEditButton="True" 
                        UpdateText="Cập nhật" />
                </Fields>
            </asp:DetailsView>
            
            <%--Đổi mật khẩu--%>
            <br />
            <br />
            <div id="doiMatKhau" style="border-style: dashed; border-width: medium">
                <uc1:ucDoiMatKhau ID="ucDoiMatKhau1" runat="server" />
            </div>
               
           </div>
            
           <asp:LinqDataSource ID="ThongTinDataSource" runat="server"
                EnableUpdate="true"   
                ContextTypeName = "CTLH_C3.TRAVEL_WEBDataContext"
                TableName = "NHAN_VIENs" > 
           </asp:LinqDataSource>
           
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>