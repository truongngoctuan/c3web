<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" CodeBehind="Details.aspx.cs" Inherits="CTLH_C3.PHAN_HOI_KHACH_HANGs.Details" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Duyệt Phản Hồi</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h1>Duyệt Phản Hồi</h1>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:DetailsView ID="DetailsView1" runat="server" 
                DataSourceID="DetailsDataSource" OnItemDeleted="DetailsView1_ItemDeleted"
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold" 
                onpageindexchanging="DetailsView1_PageIndexChanging" >
                <Fields>
                    
                </Fields>
            </asp:DetailsView>

            <asp:LinqDataSource ID="DetailsDataSource" runat="server" EnableDelete="true">
                
            </asp:LinqDataSource>
            
            <br />
             
             
            
            <asp:Label ID="Label2" runat="server" Text="Ngày khởi hành"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="LinqDataSource1" DataTextField="KhoiHanh" 
                DataValueField="KhoiHanh" autopostback = "true">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext"
                TableName="CHUYEN_XEs" onselecting="LinqDataSource1_Selecting">
            </asp:LinqDataSource>
            
           
            
             <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource"
                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                CssClass="gridview" onrowcommand="GridView1_RowCommand" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                
                >
               
               <Columns>
                    <asp:ButtonField CommandName="SelectItem" Text="Chọn" HeaderText="Chọn chuyến xe"/>
                    <asp:DynamicField DataField="TUYEN_XE" HeaderText="Tuyến xe" />
                    <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành" />
                    <asp:DynamicField DataField="NHAN_VIEN" HeaderText="Tài xế" />
                    <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" />
                </Columns>
                  

                <PagerStyle CssClass="footer"/>        
                <PagerTemplate>
                    <asp:GridViewPager ID="GridViewPager1" runat="server" />
                </PagerTemplate>
                
            </asp:GridView>

            <asp:LinqDataSource ID="GridDataSource" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                Select="new (MaChuyenXe, KhoiHanh, NHAN_VIEN, TUYEN_XE, MaTuyenXe, MaTaiXe)" 
                TableName="CHUYEN_XEs" Where="KhoiHanh == @KhoiHanh" 
                onselecting="GridDataSource_Selecting">
               <WhereParameters>
                    <asp:ControlParameter Name = "KhoiHanh" ControlID="DropDownList1" PropertyName="SelectedValue" Type="Datetime"/>    
                </WhereParameters>
            </asp:LinqDataSource>

            <div class="bottomhyperlink">
                <br />
                <asp:HyperLink ID="ListHyperLink" runat="server">Quay về duyệt tiếp</asp:HyperLink>
            </div>        
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>
