<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ThongKe.aspx.cs" Inherits="CTLH_C3.ThongKe" %>
    
<%@ Register Src="~/DynamicData/Content/GridViewPager.ascx" TagName="GridViewPager"
    TagPrefix="asp" %>
<%@ Register Src="~/DynamicData/Content/FilterUserControl.ascx" TagName="DynamicFilter"
    TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Tài xế - Thay đổi thông tin cá nhân
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <div style="width:250px;" ></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true"/>
    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <%--Báo lỗi--%>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="grdSapChay"
                Display="None" />
            
            <br />
                <b>Tháng:</b>
                <asp:Label ID="lblThang" runat="server"></asp:Label>
                <b>Năm:</b>
                <asp:Label ID="lblNam" runat="server"></asp:Label>
            <br />
           
            <br />
            <div><b>Lịch chạy</b></div>
            <br />
            
            <%--Các chuyến sắp chạy --%>      
            <asp:GridView ID="grdSapChay" runat="server" AllowPaging="True"
                AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="MaChuyen" HeaderText="Mã chuyến" />
                    <asp:BoundField DataField="TramDi" HeaderText="Trạm đi" />
                    <asp:BoundField DataField="TramDen" HeaderText="Trạm đến"/>
                    <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành"/>
                </Columns>
                <PagerStyle CssClass="footer" />
                <PagerTemplate>
                    <asp:GridViewPager ID="GridViewPager1" runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Không có thông tin.
                </EmptyDataTemplate>
            </asp:GridView>  
                      
            <%--Báo lỗi--%>
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DynamicValidator1" ControlToValidate="grdDaChay"
                Display="None" />
                
            <br />
            <div><b>Các chuyến đã phục vụ:</b></div>   
            <br /> 
            
            <%--Các chuyến đã chạy --%>      
            <asp:GridView ID="grdDaChay" runat="server" AllowPaging="True"
                AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="MaChuyen" HeaderText="Mã chuyến" />
                    <asp:BoundField DataField="TramDi" HeaderText="Trạm đi" />
                    <asp:BoundField DataField="TramDen" HeaderText="Trạm đến"/>
                    <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành"/>
                    <asp:BoundField DataField="ThoiDiemDenTram" HeaderText="Đã đến trạm lúc"/>
                    <asp:BoundField DataField="Luong" HeaderText="Lương" />
                </Columns>
                <PagerStyle CssClass="footer" />
                <PagerTemplate>
                    <asp:GridViewPager ID="GridViewPager2" runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Không có thông tin.
                </EmptyDataTemplate>
            </asp:GridView>
            
            <br />
            <div><b>Lương các chuyến:<asp:Label runat="server" ID="lblLuongChuyen"></asp:Label></b></div>   
            <div><b>Hệ số lương:<asp:Label runat="server" ID="lblHeSo"></asp:Label></b></div> 
            <div><b>Thực nhận:<asp:Label runat="server" ID="lblTongCong"></asp:Label></b></div>   
            <br />            
            
        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
</asp:Content>