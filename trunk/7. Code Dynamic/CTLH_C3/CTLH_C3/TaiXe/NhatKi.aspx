﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NhatKi.aspx.cs" Inherits="CTLH_C3.NhatKi" %>

<%@ Register Src="~/DynamicData/Content/GridViewPager.ascx" TagName="GridViewPager"
    TagPrefix="asp" %>
<%@ Register Src="~/DynamicData/Content/FilterUserControl.ascx" TagName="DynamicFilter"
    TagPrefix="asp" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Nhật kí
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
               
                <%--Báo lỗi--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                    HeaderText="Danh sách lỗi" />
                <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1"
                    Display="None" />
                
                <div><b>Các chuyến đã phục vụ:</b>
                    <br />
                    <b>Tháng:</b>
                    <asp:DropDownList ID="lstThang" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="lstThang_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <b>Năm:</b>
                    <asp:DropDownList ID="lstNam" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="lstNam_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                
                <%--Các chuyến đã chạy --%>      
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                    AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:BoundField DataField="MaChuyen" HeaderText="Mã chuyến" />
                        <asp:BoundField DataField="TramDi" HeaderText="Trạm đi" />
                        <asp:BoundField DataField="TramDen" HeaderText="Trạm đến"/>
                        <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành"/>
                        <asp:BoundField DataField="DuKienDen" HeaderText="Giờ đến dự kiến"/>
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