<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ThongKe.aspx.cs" Inherits="CTLH_C3.ThongKe" %>
    
<%@ Register Src="~/DynamicData/Content/GridViewPager.ascx" TagName="GridViewPager"
    TagPrefix="asp" %>
<%@ Register Src="~/DynamicData/Content/FilterUserControl.ascx" TagName="DynamicFilter"
    TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Tài xế - Thống kê
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <div style="width:250px;" ></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true"/>
    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <%--Báo lỗi--%>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="grdSapChay"
                Display="None" />
                      
            <br />
            <div><b>Lịch chạy</b>
                <br />
                <br />
                <b>Tháng:</b>
                <asp:DropDownList ID="dlstThang_SapChay" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="dlstThang_SapChay_SelectedIndexChanged">
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
                <b>Năm:</b>
                <asp:DropDownList ID="dlstNam_SapChay" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="dlstNam_SapChay_SelectedIndexChanged"></asp:DropDownList>
                <br />
                <br />
            </div>
            
            <%--Các chuyến sắp chạy --%>      
            <asp:GridView ID="grdSapChay" runat="server" AllowPaging="True"
                AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" 
                onpageindexchanging="grdSapChay_PageIndexChanging" 
                ondatabinding="grdSapChay_DataBinding">
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
                      
            <%--Báo lỗi--%>
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="DynamicValidator1" ControlToValidate="grdDaChay"
                Display="None" />
                
            <br />
            <div><b>Các chuyến đã phục vụ:</b>
                <br />
                <br />
                <b>Tháng:</b>
                <asp:DropDownList ID="dlstThang_DaChay" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="dlstThang_DaChay_SelectedIndexChanged">
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
                <b>Năm:</b>
                <asp:DropDownList ID="dlstNam_DaChay" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="dlstNam_DaChay_SelectedIndexChanged"></asp:DropDownList>
                <br />
                <br />
            </div>   
           
            
            <%--Các chuyến đã chạy --%>      
            <asp:GridView ID="grdDaChay" runat="server" AllowPaging="True"
                AllowSorting="True" CssClass="gridview" AutoGenerateColumns="False" 
                onpageindexchanging="grdDaChay_PageIndexChanging" 
                ondatabinding="grdDaChay_DataBinding" >
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
                    <asp:GridViewPager ID="GridViewPager2" runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Không có thông tin.
                </EmptyDataTemplate>
            </asp:GridView>
            
            <br />
            <div><b>Lương các chuyến:<asp:Label runat="server" ID="lblLuongChuyen"></asp:Label></b></div>   
            <div><b>Hệ số lương:<asp:Label runat="server" ID="lblHeSo"></asp:Label></b></div> 
            <div><b>Thực nhận:<asp:Label runat="server" ID="lblTongCong"></asp:Label></b></div>   
            <br />            
            
        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
</asp:Content>