<%@ Page Language="C#" MasterPageFile="~/DieuHanhTram/MasterPage.master" CodeBehind="PhatSinhChuyenTuDong.aspx.cs" Inherits="CTLH_C3.DieuHanhTram.PhatSinhChuyenTuDong" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Phát Sinh Chuyến Tự Động</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Phát Sinh Chuyến Tự Động</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
    <div class="CanhGiua" style="width:300px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            

            <asp:GridView ID="GridView_TUYENXE" runat="server" 
                AllowPaging="True" AllowSorting="True" CssClass="gridview" 
                AutoGenerateColumns="False" 
                onselectedindexchanged="GridView_TUYENXE_SelectedIndexChanged" 
                DataSourceID="LinqDataSource_TuyenXe">
                <Columns>
                    <asp:CommandField HeaderText="Chọn tuyến xe xếp tự động" SelectText="Chọn" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaTuyenXe" HeaderText="Mã tuyến xe" ReadOnly="True" />
                    <asp:BoundField DataField="TenTuyenXe" HeaderText="Tên tuyến xe" ReadOnly="True" />
                  
                    
                </Columns>

                <PagerStyle CssClass="footer"/>        
                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Tất cả các tuyến xe đã xếp tự động.
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:LinqDataSource ID="LinqDataSource_TuyenXe" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                Select="new (MaTuyenXe, TenTuyenXe)" TableName="TUYEN_XEs">
            </asp:LinqDataSource>

            <h2>Chuyến xe phát sinh tự động</h2>

            <asp:GridView ID="GridView_CHUYENXE" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="false" CssClass="gridview" >
                <PagerStyle CssClass="footer" />
                <Columns>
                    <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" ReadOnly="True" />
                    <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành" ReadOnly="True" />
                    
                </Columns>

                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Không còn tài xế nào để phân công
                </EmptyDataTemplate>
            </asp:GridView>

            <br />

        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>