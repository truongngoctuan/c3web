<%@ Page Language="C#" MasterPageFile="~/DieuHanhTram/MasterPage.master" CodeBehind="QuanLyVe.aspx.cs" Inherits="CTLH_C3.DieuHanhTram.QuanLyVe" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Quản Lý Thông Tin Ghế/Vé</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Quản Lý Thông Tin Ghế/Vé</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
    <div class="CanhGiua" style="width:300px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <asp:Label ID="Label1" runat="server" Text="Chọn tuyến xe"></asp:Label>
            <asp:DropDownList ID="DropDownList_TUYENXE" runat="server" 
                DataSourceID="LinqDataSource_TUYENXE" DataTextField="TenTuyenXe" 
                DataValueField="MaTuyenXe" 
                AutoPostBack = "true">
            </asp:DropDownList>
            
            <asp:LinqDataSource ID="LinqDataSource_TUYENXE" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                Select="new (TenTuyenXe, MaTuyenXe)" TableName="TUYEN_XEs">
            </asp:LinqDataSource>
            
           

            <br />
            <asp:Label ID="Label2" runat="server" Text="Chọn chuyến xe"></asp:Label>
            <asp:DropDownList ID="DropDownLis_CHUYENXE" runat="server" 
                DataSourceID="LinqDataSource_CHUYENXE" DataTextField="KhoiHanh" 
                AutoPostBack = "true"
                DataValueField="MaChuyenXe">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource_CHUYENXE" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                Select="new (KhoiHanh, MaChuyenXe)" TableName="CHUYEN_XEs" 
                Where="MaTuyenXe == @MaTuyenXe &amp;&amp; TinhTrang == @TinhTrang">
                <WhereParameters>
                    <asp:ControlParameter ControlID="DropDownList_TUYENXE" Name="MaTuyenXe" 
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:Parameter DefaultValue="1" Name="TinhTrang" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
            
            
             <br />
            <asp:Label ID="Label3" runat="server" Text="Chọn tình trạng đặt chỗ"></asp:Label>
            <asp:DropDownList ID="DropDownList_DATCHO" runat="server"  
                AutoPostBack = "True" DataSourceID="LinqDataSource_TINHTRANGDATCHO" 
                DataTextField="TenTinhTrangDatCho" DataValueField="MaTinhTrangDatCho" 
                onselectedindexchanged="DropDownList_DATCHO_SelectedIndexChanged">
            </asp:DropDownList>
            
            
             <asp:GridView ID="GridView_DATCHO" runat="server" AutoPostBack = "True"
                AllowPaging="True" AllowSorting="True" CssClass="gridview" 
                AutoGenerateColumns="False" DataSourceID="LinqDataSource_DATCHO" 
                onselectedindexchanged="GridView_DATCHO_SelectedIndexChanged" 
                onprerender="GridView_DATCHO_PreRender" >
               
                <Columns>
                    
                    
                    <asp:TemplateField HeaderText="Đặt chỗ">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect_DatCho" runat="server" />
                        </ItemTemplate>
                   </asp:TemplateField>
                    <asp:TemplateField HeaderText="Bán vé">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect_BanVe" runat="server" />
                        </ItemTemplate>
                   </asp:TemplateField>
                    <asp:BoundField DataField="MaChoNgoi" HeaderText="Mã chỗ ngồi" ReadOnly="True" />
                    <asp:BoundField DataField="MaDatCho" HeaderText="Mã đặt chỗ" ReadOnly="True" />
                    <asp:BoundField DataField="TinhTrang" HeaderText="Tình trạng" ReadOnly="True" />
                </Columns>

                <PagerStyle CssClass="footer"/>        
                <PagerTemplate>
                    <asp:GridViewPager ID="GridViewPager1" runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Không có trong đặt chỗ.
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:Button ID="Button_OK" runat="server" Text="Xác nhận" 
                onclick="Button_OK_Click" />
            <asp:LinqDataSource ID="LinqDataSource_TINHTRANGDATCHO" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                Select="new (MaTinhTrangDatCho, TenTinhTrangDatCho)" 
                TableName="TINH_TRANG_DAT_CHOs">
            </asp:LinqDataSource>
            
            <asp:LinqDataSource ID="LinqDataSource_DATCHO" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                Select="new (MaDatCho, MaChoNgoi, TinhTrang)" TableName="DAT_CHOs" 
                Where="MaChuyenXe == @MaChuyenXe &amp;&amp; TinhTrang == @TinhTrang">
                <WhereParameters>
                    <asp:ControlParameter ControlID="DropDownLis_CHUYENXE" Name="MaChuyenXe" 
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="DropDownList_DATCHO" Name="TinhTrang" 
                        PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>

            <br />

        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>