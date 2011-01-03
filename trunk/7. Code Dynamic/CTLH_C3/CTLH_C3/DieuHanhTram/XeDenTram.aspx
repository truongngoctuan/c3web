<%@ Page Language="C#" MasterPageFile="~/DieuHanhTram/MasterPage.master" CodeBehind="XeDenTram.aspx.cs" Inherits="CTLH_C3.DieuHanhTram.XeDenTram" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Xác Nhận Xe Về Bến</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Xác Nhận Xe Về Bến</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />
    <div class="CanhGiua" style="width:300px;">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <asp:Label ID="Label1" runat="server" Text="Chọn tuyến xe"></asp:Label>
            <asp:DropDownList ID="DropDownList_TUYENXE" runat="server" 
                DataSourceID="LinqDataSource_TUYENXE" DataTextField="TenTuyenXe" 
                DataValueField="MaTuyenXe" 
                AutoPostBack = "true" 
                onselectedindexchanged="DropDownList_TUYENXE_SelectedIndexChanged">
            </asp:DropDownList>
            
            <asp:LinqDataSource ID="LinqDataSource_TUYENXE" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                Select="new (TenTuyenXe, MaTuyenXe)" TableName="TUYEN_XEs">
            </asp:LinqDataSource>
            
           

           
            
            
            
            
             <asp:GridView ID="GridView_CHUYENXE" runat="server" AutoPostBack = "True"
                AllowPaging="True" AllowSorting="True" CssClass="gridview" 
                AutoGenerateColumns="False" DataSourceID="LinqDataSource_CHUYENXE" >
               
                <Columns>
                    
                    
                    <asp:TemplateField HeaderText="Về bến">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server" />
                        </ItemTemplate>
                   </asp:TemplateField>
                   
                    <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" ReadOnly="True" />
                    <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành" ReadOnly="True" />
                    <asp:BoundField DataField="SoLuongMuaVe" HeaderText="Số lượng đặt chỗ trên chuyến" ReadOnly="True" />
                </Columns>

                <PagerStyle CssClass="footer"/>        
                <PagerTemplate>
                    <asp:GridViewPager ID="GridViewPager1" runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Không có chuyến xe nào đang về bến.
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource_CHUYENXE" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                Select="new (MaChuyenXe, KhoiHanh, SoLuongMuaVe)" TableName="CHUYEN_XEs" 
                Where="MaTuyenXe == @MaTuyenXe &amp;&amp; TinhTrang == @TinhTrang">
                <WhereParameters>
                    <asp:ControlParameter ControlID="DropDownList_TUYENXE" Name="MaTuyenXe" 
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:Parameter DefaultValue="2" Name="TinhTrang" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
            <asp:Button ID="Button_OK" runat="server" Text="Xác nhận" 
                onclick="Button_OK_Click" />
        
            <br />

        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>