<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CTLH_C3.Default" %>
<%@ Register src="~/Guest/user_CustomLogin.ascx" tagname="user_Login" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_HotLine.ascx" tagname="user_HotLine" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_GioiThieu.ascx" tagname="user_GioiThieu" tagprefix="webUC" %>

<%@ Register src="~/Guest/user_Guest_TimKiemTuyenXe.ascx" tagname="user_Guest_TimKiemTuyenXe" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_Guest_XemThongTinChuyenXe.ascx" tagname="user_Guest_XemThongTinChuyenXe" tagprefix="webUC" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Cột nội dung trái: chọn tuyến--%>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <div style="width:227px; float:left;">
       <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />
       <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

       <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            
                <asp:FilterRepeater ID="FilterRepeater" runat="server"
                    ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                    TableName="TUYEN_XEs">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("DisplayName") %>' AssociatedControlID="DynamicFilter$DropDownList1" />
                        <asp:DynamicFilter runat="server" ID="DynamicFilter" OnSelectedIndexChanged="OnFilterSelectedIndexChanged" />
                        <br />
                    </ItemTemplate>
                    <FooterTemplate><br /><br /></FooterTemplate>
                </asp:FilterRepeater>  
                
            </ContentTemplate>
        </asp:UpdatePanel>--%>
    </div>    
</asp:Content>

<%--Cột nội dung giữa: danh sách tuyến--%>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width:520px;float:left"> 
        <webUC:user_GioiThieu ID="user_GioiThieu1" runat="server" />
        
        <div align="center" style="background-color:#87BCE5;">
            <asp:Button ID="btnClose" runat="server" Text="Đóng giới thiệu" 
                onclick="Close_Click" />
        </div>
        
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1" Display="None" />
           
           <asp:FilterRepeater ID="FilterRepeater" runat="server"
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                TableName="TUYEN_XEs">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("DisplayName") %>' AssociatedControlID="DynamicFilter$DropDownList1" />
                    <asp:DynamicFilter runat="server" ID="DynamicFilter" OnSelectedIndexChanged="OnFilterSelectedIndexChanged" />
                </ItemTemplate>
                <FooterTemplate><br /><br /></FooterTemplate>
           </asp:FilterRepeater>
                
            
            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource"
                    AllowPaging="True" AllowSorting="True" CssClass="gridview" 
                AutoGenerateColumns="False">
                    <Columns>
                        <asp:DynamicField DataField="MaTuyenXe" HeaderText="Mã tuyến" ReadOnly="True" />
                        <asp:DynamicField DataField="GiaVe" />
                        <asp:DynamicField DataField="TRAM_XE" />
                        <asp:DynamicField DataField="TRAM_XE1" />
                        <asp:DynamicField DataField="CHUYEN_XEs" />
                    </Columns>

                    <PagerStyle CssClass="footer"/>        
                    <PagerTemplate>
                        <asp:GridViewPager ID="GridViewPager1" runat="server" />
                    </PagerTemplate>
                    <EmptyDataTemplate>
                        There are currently no items in this table.
                    </EmptyDataTemplate>
            </asp:GridView> 
            
            <asp:LinqDataSource ID="GridDataSource" runat="server" 
                 ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                    Select="new (GiaVe, CHUYEN_XEs, TRAM_XE, TRAM_XE1, MaTuyenXe, MaTramDi,MaTramDen)" 
                    TableName="TUYEN_XEs">
                    <WhereParameters>
                        <asp:DynamicControlParameter ControlID="FilterRepeater" />
                    </WhereParameters>
            </asp:LinqDataSource> 
       
        </ContentTemplate>          
        </asp:UpdatePanel>
        
        
    </div>
</asp:Content>

<%--Cột phải--%>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <div style="width:245px;float:right">
       <webUC:user_HotLine ID="user_HotLine1" runat="server" />
       <div >
            <webUC:user_Login ID="user_Login1" runat="server" />
       </div>
    </div>
</asp:Content>