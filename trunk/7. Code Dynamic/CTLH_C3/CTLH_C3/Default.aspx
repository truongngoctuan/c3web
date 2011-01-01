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

<%--Cột nội dung trái: danh sách các trạm--%>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <asp:Repeater ID="rptTram" runat="server" DataSourceID="ldsTram">
        <HeaderTemplate>
        <div style="background-image: url(images/LeftPanelHeader.jpg);
                    width:179px; height:42px; 
                    display:block;
                    margin-left:5px;
                    margin-right:5px;"></div>
            <ul style="list-style:none; padding: 0px 0px; margin: 0px 0px;
                margin: 5px 5px; margin-top:0px;
                padding-top:5px;
                background-color: #EEFBFF;
                border: solid 1px #5672C5;
                border-top-width:0px;
                width:177px;">
        </HeaderTemplate>
        <ItemTemplate>
            <li>
                <a href="TimKiemChuyen.aspx?MaTramDi=<%# DataBinder.Eval(Container.DataItem, "MaTramXe")%>"
                style="width:140px; height:28px; display:block;
                background-image: url(images/LeftPanelItem.jpg);
                background-repeat:no-repeat;
                background-color: #EEFBFF;
                padding-left:32px;
                padding-top:8px;
                margin-left:5px;
                text-decoration:none; color:Navy;" 
                class"LeftContentItemLink">
                  <%# DataBinder.Eval(Container.DataItem, "TenTramXe") %></a>   
                             
            </li>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>
    </asp:Repeater>
    <asp:LinqDataSource ID="ldsTram" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" TableName="TRAM_XEs" 
        onselecting="ldsTram_Selecting">
    </asp:LinqDataSource>    
</asp:Content>

<%--Cột nội dung giữa: danh sách tuyến--%>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />
    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
    
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>             
            <%--Phần : trình bày dữ liệu--%>
            <div style="float:left; width:560px;">
            
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
                
                <%--Chọn trạm--%>
                <div>
                    <asp:FilterRepeater ID="FilterRepeater" runat="server" ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext"
                        TableName="TUYEN_XEs">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DisplayName") %>' AssociatedControlID="DynamicFilter$DropDownList1" />
                            <asp:DynamicFilter runat="server" ID="DynamicFilter" OnSelectedIndexChanged="OnFilterSelectedIndexChanged" />
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <div style="height:5px;"></div>
                        </SeparatorTemplate>
                    </asp:FilterRepeater>
                </div>
                
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
                    Select="new (MaChuyenXe, KhoiHanh, MaTuyenXe, GiaVe)"
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
    <div style="width: 245px; float: right;">
        <%--<webUC:user_HotLine ID="user_HotLine1" runat="server" />--%>
        <div style="height: 256px">
            <webUC:user_Login ID="user_Login1" runat="server" />
        </div>
    </div>
</asp:Content>
