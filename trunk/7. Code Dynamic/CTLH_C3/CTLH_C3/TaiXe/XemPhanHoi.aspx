<%@ Page Language="C#" MasterPageFile="MasterPage.Master" AutoEventWireup="true" CodeBehind="XemPhanHoi.aspx.cs" Inherits="CTLH_C3.XemPhanHoi" %>
<%@ Register Src="~/DynamicData/Content/GridViewPager.ascx" TagName="GridViewPager"
    TagPrefix="asp" %>
<%@ Register Src="~/DynamicData/Content/FilterUserControl.ascx" TagName="DynamicFilter"
    TagPrefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" type="text/css" href="/taixestyle.css" />
<title>Xem Phản Hồi</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="CanhGiua" style="width: 450px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
            <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />
            <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />               
            
            <%--Phần bên phải: trình bày dữ liệu--%>
            <div>
                <h1>Xem Phản Hồi</h1>
                <b>Danh sách phản hồi</b>
               
                <%--Báo lỗi--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                    HeaderText="Danh sách lỗi" />
                <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1"
                    Display="None" />
                
                <br />
                <div><b>Các chuyến</b>
                <br />
                    <br />
                    Tháng:
                    <asp:DropDownList ID="dlstThang" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="dlstThang_SelectedIndexChanged"
                        Width="75px">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                        <asp:ListItem Text="11" Value="11"></asp:ListItem>
                        <asp:ListItem Text="12" Value="12"></asp:ListItem>
                    </asp:DropDownList>
                    Năm:
                    <asp:DropDownList ID="dlstNam" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="dlstNam_SelectedIndexChanged"
                        Width="75px"></asp:DropDownList>
                    <br />
                    <br />
                </div>

                
                <%--Trình bày dữ liệu: các chuyến do nhân viên này làm tài xế--%> 
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                    AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    ondatabinding="GridView1_DataBinding" 
                    onpageindexchanging="GridView1_PageIndexChanging">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" CancelText="Thôi" DeleteText="Xóa" 
                            EditText="Sửa" InsertText="Chèn" NewText="Thêm mới" SelectText="Chọn" 
                            UpdateText="Cập nhật" />
                        <asp:BoundField DataField="MaChuyen" HeaderText="Mã chuyến" />
                        <asp:BoundField DataField="TramDi" HeaderText="Trạm đi" />
                        <asp:BoundField DataField="TramDen" HeaderText="Trạm đến"/>
                    </Columns>
                    <PagerStyle CssClass="footer" />
                    <PagerTemplate>
                        <asp:GridViewPager ID="GridViewPager1" runat="server" EnableTheming="false" />
                    </PagerTemplate>
                    <EmptyDataTemplate>
                        Không có thông tin.
                    </EmptyDataTemplate>
                </asp:GridView>
                
                <br />
                <div>Phản hồi:</div>                  
                <br />
                
                <%--Các phản hồi của chuyến --%>      
                <asp:GridView ID="grdPhanHoi" runat="server" AllowPaging="True" DataSourceID="PhanHoiDataSource"
                    AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" Visible="False">
                    <Columns>
                        <asp:DynamicField DataField="PHAN_HOI_KHACH_HANG"/>
                    </Columns>
                    <PagerStyle CssClass="footer" />
                    <PagerTemplate>
                        <asp:GridViewPager ID="GridViewPager2" runat="server" />
                    </PagerTemplate>
                    <EmptyDataTemplate>
                        Không có thông tin.
                    </EmptyDataTemplate>
                </asp:GridView>
                    
                <asp:LinqDataSource runat="server" ID="PhanHoiDataSource" 
                    ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                    Select="new (MaPhanHoiKhach,PHAN_HOI_KHACH_HANG ,MaChuyen, MaPhanHoi)" 
                    TableName="PHAN_HOIs">
                </asp:LinqDataSource>   
                                                                   
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>    
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>