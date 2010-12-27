<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="XemPhanHoi.aspx.cs" Inherits="CTLH_C3.XemPhanHoi" %>
<%@ Register Src="~/DynamicData/Content/GridViewPager.ascx" TagName="GridViewPager"
    TagPrefix="asp" %>
<%@ Register Src="~/DynamicData/Content/FilterUserControl.ascx" TagName="DynamicFilter"
    TagPrefix="asp" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Xem Phản Hồi
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
            <div style="width: 227px; float: left;">
                <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />
                <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />               
            </div>
            
            <%--Phần bên phải: trình bày dữ liệu--%>
            <div style="width: 520px; float: left">
                <h1>Danh sách phản hồi</h1>
               
                <%--Báo lỗi--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                    HeaderText="Danh sách lỗi" />
                <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1"
                    Display="None" />
                
                <div><b>Các chuyến</b></div>
                
                <%--Trình bày dữ liệu: các chuyến do nhân viên này làm tài xế--%> 
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                    AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="MaChuyen" HeaderText="Mã chuyến" />
                        <asp:BoundField DataField="TramDi" HeaderText="Trạm đi" />
                        <asp:BoundField DataField="TramDen" HeaderText="Trạm đến"/>
                    </Columns>
                    <PagerStyle CssClass="footer" />
                    <PagerTemplate>
                        <asp:GridViewPager ID="GridViewPager1" runat="server" />
                    </PagerTemplate>
                    <EmptyDataTemplate>
                        Không có thông tin.
                    </EmptyDataTemplate>
                </asp:GridView>
                
                <div><b>Phản hồi:</b></div>
                
                <%--Các phản hồi của chuyến --%>      
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" DataSourceID="PhanHoiDataSource"
                    AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:DynamicField DataField="MaChuyen" HeaderText="Mã chuyến"/>
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
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
</asp:Content>