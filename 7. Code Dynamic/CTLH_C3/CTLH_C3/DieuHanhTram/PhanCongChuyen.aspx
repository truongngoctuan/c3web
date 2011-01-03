<%@ Page Language="C#" MasterPageFile="~/DieuHanhTram/MasterPage.master" CodeBehind="PhanCongChuyen.aspx.cs" Inherits="CTLH_C3.DieuHanhTram.PhanCongChuyen" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Phân Công Chuyến</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Phân Công Chuyến</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            

            <asp:GridView ID="GridView_CHUYENXE" runat="server" 
                AllowPaging="True" AllowSorting="True" CssClass="gridview" 
                AutoGenerateColumns="False" 
                onselectedindexchanged="GridView_CHUYENXE_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField HeaderText="Chọn chuyến xe phân công" SelectText="Chọn" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" ReadOnly="True" />
                    <asp:BoundField DataField="TenTuyenXe" HeaderText="Tên tuyến xe" ReadOnly="True" />
                    <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành" ReadOnly="True"/>
                    <asp:BoundField DataField="DuKienDen" HeaderText="Dự kiến đến" ReadOnly="True"/>
                     <asp:BoundField DataField="TenTramDi" HeaderText="Trạm khởi hành" ReadOnly="True"/>
                    <asp:BoundField DataField="TenTramDen" HeaderText="Trạm đích đến" ReadOnly="True"/>
                    
                </Columns>

                <PagerStyle CssClass="footer"/>        
                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Không còn chuyến xe nào chưa phân công.
                </EmptyDataTemplate>
            </asp:GridView>

            <h2>Chọn tài xế phân công</h2>

            <asp:GridView ID="GridView_TAIXE" runat="server" 
                AllowSorting="True" AutoGenerateColumns="false" CssClass="gridview" 
                onselectedindexchanged="GridView_TAIXE_SelectedIndexChanged" >
                <PagerStyle CssClass="footer" />
                <Columns>
                    <asp:CommandField HeaderText="Chọn tài xế phân công" SelectText="Chọn" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaNhanVien" HeaderText="Mã nhân viên" ReadOnly="True" />
                    <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" ReadOnly="True" />
                    <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" ReadOnly="True"/>
                  
                    
                </Columns>
                <PagerStyle CssClass="footer"/>        
                <PagerTemplate>
                    <asp:GridViewPager ID="GridViewPager1" runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    
                </EmptyDataTemplate>
            </asp:GridView>

            <br />

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>