<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="CTLH_C3.Default" %>

<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_HotLine.ascx" TagName="user_HotLine" TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_GioiThieu.ascx" TagName="user_GioiThieu" TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_Guest_TimKiemTuyenXe.ascx" TagName="user_Guest_TimKiemTuyenXe"
    TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_Guest_XemThongTinChuyenXe.ascx" TagName="user_Guest_XemThongTinChuyenXe"
    TagPrefix="webUC" %>
<%@ Register Src="~/DynamicData/Content/GridViewPager.ascx" TagName="GridViewPager"
    TagPrefix="asp" %>
<%@ Register Src="~/DynamicData/Content/FilterUserControl.ascx" TagName="DynamicFilter"
    TagPrefix="asp" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Cột nội dung trái: bỏ không dùng--%>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
</asp:Content>

<%--Cột nội dung giữa: danh sách tuyến--%>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
        
            <%--Phần bên trái: chọn trạm--%>
            <div style="width: 227px; float: left;">
                <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />
                <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
                
                <asp:FilterRepeater ID="FilterRepeater" runat="server" ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext"
                    TableName="TUYEN_XEs">
                    <ItemTemplate>
                        <div>
                            <div style="text-align:right;width:30%;float:left;">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("DisplayName") %>' AssociatedControlID="DynamicFilter$DropDownList1" />
                            </div>
                            <div style="text-align:center;width:65%">
                                <asp:DynamicFilter runat="server" ID="DynamicFilter" OnSelectedIndexChanged="OnFilterSelectedIndexChanged" />
                            </div>
                        </div>
                    </ItemTemplate>
                    <SeparatorTemplate>
                        <div style="height:15px;"></div>
                    </SeparatorTemplate>
                </asp:FilterRepeater>
            </div>
            
            <%--Phần bên phải: trình bày dữ liệu--%>
            <div style="width: 520px; float: left">
            
                <%--Giới thiệu--%>
                <webUC:user_GioiThieu ID="user_GioiThieu1" runat="server" />
                <div align="center" style="background-color: #87BCE5;">
                    <asp:Button ID="btnClose" runat="server" Text="Đóng giới thiệu" OnClick="Close_Click" />
                </div>
                
                <%--Báo lỗi--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                    HeaderText="Danh sách lỗi" />
                <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1"
                    Display="None" />
                
                <div><b>Các tuyến</b></div>
                
                <%--Trình bày dữ liệu: tuyến--%> 
                <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource" AllowPaging="True"
                    AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:DynamicField DataField="MaTuyenXe" HeaderText="Mã tuyến" />
                        <asp:DynamicField DataField="GiaVe" />
                        <asp:DynamicField DataField="TRAM_XE1" />
                        <asp:DynamicField DataField="TRAM_XE" />                        
                    </Columns>
                    <PagerStyle CssClass="footer" />
                    <PagerTemplate>
                        <asp:GridViewPager ID="GridViewPager1" runat="server" />
                    </PagerTemplate>
                    <EmptyDataTemplate>
                        Không có thông tin.
                    </EmptyDataTemplate>
                </asp:GridView>
                
                <%--Nguồn dữ liệu cho tuyến--%>
                <asp:LinqDataSource ID="GridDataSource" runat="server" ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext"
                    Select="new (GiaVe, CHUYEN_XEs, TRAM_XE, TRAM_XE1, MaTuyenXe, MaTramDi,MaTramDen)"
                    TableName="TUYEN_XEs">
                    <WhereParameters>
                        <asp:DynamicControlParameter ControlId="FilterRepeater" />
                    </WhereParameters>
                </asp:LinqDataSource>
                
                <div><b>Các chuyến</b></div>
                
                <%--Trình bày dữ liệu: chuyến--%> 
                <asp:GridView ID="GridView2" runat="server" DataSourceID="LinqDataSource1" AllowPaging="True"
                    AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False">
                    <Columns>
                        <asp:DynamicField DataField="MaChuyenXe" HeaderText="Mã chuyến" />
                        <asp:DynamicField DataField="KhoiHanh" />
                        <asp:DynamicField DataField="DuKienDen" />
                        <asp:DynamicField DataField="GiaVe" />
                    </Columns>
                    <PagerStyle CssClass="footer" />
                    <PagerTemplate>
                        <asp:GridViewPager ID="GridViewPager2" runat="server" />
                    </PagerTemplate>
                    <EmptyDataTemplate>
                        Không có thông tin.
                    </EmptyDataTemplate>
                </asp:GridView>
                
                <%--Nguồn dữ liệu cho chuyến--%>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext"
                    Select="new (MaChuyenXe, KhoiHanh, DuKienDen, MaTuyenXe, GiaVe)"
                    TableName="CHUYEN_XEs">
                    <WhereParameters>
                        <asp:DynamicControlParameter ControlID="GridView1" Name="MaTuyenXe"/>
                    </WhereParameters>
                </asp:LinqDataSource>
                
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>

<%--Cột phải: login--%>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <div style="width: 245px; float: right">
        <%--<webUC:user_HotLine ID="user_HotLine1" runat="server" />--%>
        <div>
            <webUC:user_Login ID="user_Login1" runat="server" />
        </div>
    </div>
</asp:Content>
