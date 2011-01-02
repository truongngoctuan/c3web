<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeBehind="PhanCongXe.aspx.cs" Inherits="CTLH_C3.DieuHanhCongTy.List" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Phân Công Xe</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Phân Công Xe</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
    <div class="CanhGiua" style="width:300px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            

            <asp:GridView ID="GridView_XE" runat="server"
                AllowPaging="True" AllowSorting="True" CssClass="gridview" 
                AutoGenerateColumns="False" 
                onselectedindexchanged="GridView_XE_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField HeaderText="Chọn xe phân công" SelectText="Chọn" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaXe" HeaderText="Mã xe" ReadOnly="True" 
                        SortExpression="MaXe" />
                    <asp:BoundField DataField="BienSoXe" HeaderText="Biển số xe" ReadOnly="True" 
                        SortExpression="BienSoXe" />
                </Columns>

                <PagerStyle CssClass="footer"/>        
                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Không còn xe nào còn trống để phân công.
                </EmptyDataTemplate>
            </asp:GridView>

           

            <asp:GridView ID="GridView_TAIXE" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="false" CssClass="gridview" 
                onselectedindexchanged="GridView_TAIXE_SelectedIndexChanged" >
                <PagerStyle CssClass="footer" />
                <Columns>
                    <asp:CommandField HeaderText="Chọn tài xế phân công" SelectText="Chọn" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaNhanVien" HeaderText="Mã nhân viên" ReadOnly="True" />
                    <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" ReadOnly="True" />
                    <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" ReadOnly="True"/>
                  
                    
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