<%@ Page Language="C#" MasterPageFile="MasterPage.Master" AutoEventWireup="true" CodeBehind="LichChay.aspx.cs" Inherits="CTLH_C3.TaiXe_Default" %>

<%@ Register Src="~/DynamicData/Content/GridViewPager.ascx" TagName="GridViewPager"
    TagPrefix="asp" %>
<%@ Register Src="~/DynamicData/Content/FilterUserControl.ascx" TagName="DynamicFilter"
    TagPrefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/taixestyle.css" />
    <title>Xem lịch chạy</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="CanhGiua" style="width:400px;">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
            <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />
            <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />               
            
            <%--Phần bên phải: trình bày dữ liệu--%>
            <div>
               
                <%--Báo lỗi--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                    HeaderText="Danh sách lỗi" />
                <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="grdSapChay"
                    Display="None" />
                
                <h1>Lịch chạy</h1>
                <div style="margin: 10px auto; text-align:center;">
                    <br />
                    <br />
                    Tháng:
                    <asp:DropDownList ID="dlstThang_SapChay" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="dlstThang_SapChay_SelectedIndexChanged"
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
                    <asp:DropDownList ID="dlstNam_SapChay" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="dlstNam_SapChay_SelectedIndexChanged"
                        Width="75px"></asp:DropDownList>
                    <br />
                    <br />
                </div>
                
                <%--Các chuyến sắp chạy --%>      
                <asp:GridView ID="grdSapChay" runat="server" AllowPaging="True"
                    AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" 
                    ondatabinding="GridView1_DataBinding" 
                    onpageindexchanging="GridView1_PageIndexChanging" >
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
                                              
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>  
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
<webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>
