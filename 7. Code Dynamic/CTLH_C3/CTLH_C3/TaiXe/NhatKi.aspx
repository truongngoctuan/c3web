﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NhatKi.aspx.cs" Inherits="CTLH_C3.NhatKi" %>

<%@ Register Src="~/DynamicData/Content/GridViewPager.ascx" TagName="GridViewPager"
    TagPrefix="asp" %>
<%@ Register Src="~/DynamicData/Content/FilterUserControl.ascx" TagName="DynamicFilter"
    TagPrefix="asp" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Nhật kí
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <div style="width:250px;" ></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            

            <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />
            <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />               

            
            <%--Phần bên phải: trình bày dữ liệu--%>
            <div style="width: 520px; float: left">
               
                <%--Báo lỗi--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                    HeaderText="Danh sách lỗi" />
                <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1"
                    Display="None" />
                
                <div><b>Các chuyến đã phục vụ:</b>
                    <br />
                    <br />
                    <b>Tháng:</b>
                    <asp:Label ID="lblThang" runat="server"></asp:Label>
                    <b>Năm:</b>
                    <asp:Label ID="lblNam" runat="server"></asp:Label>
                    <br />
                    <br />
                </div>
                
                <%--Các chuyến đã chạy --%>      
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
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
                        <asp:GridViewPager ID="GridViewPager1" runat="server" />
                    </PagerTemplate>
                    <EmptyDataTemplate>
                        Không có thông tin.
                    </EmptyDataTemplate>
                </asp:GridView>                 
                                              
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>    
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
</asp:Content>