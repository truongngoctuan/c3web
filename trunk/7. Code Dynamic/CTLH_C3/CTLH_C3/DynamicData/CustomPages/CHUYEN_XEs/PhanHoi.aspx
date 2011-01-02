<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" CodeBehind="PhanHoi.aspx.cs" Inherits="CTLH_C3.CHUYEN_XEs.PhanHoi" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Ghi Nhận Phản Hồi</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

   <script type="text/javascript">
  
     </script>
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />
     <h1>Ghi Nhận Phản Hồi</h1>
     Nội dung phản hồi

        <asp:TextBox runat="server" ID="tbThongTinPhanHoi"
                TextMode="MultiLine" style="height:250px; width:400px;
                background-image:none;
                background-color:#EEF9FE;" />
                <br />
        
    <h2>Chọn Chuyến Xe</h2>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1" Display="None" />

            <asp:FilterRepeater ID="FilterRepeater" runat="server">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("DisplayName") %>' AssociatedControlID="DynamicFilter$DropDownList1" />
                    <asp:DynamicFilter runat="server" ID="DynamicFilter" OnSelectedIndexChanged="OnFilterSelectedIndexChanged" />
                </ItemTemplate>
                <FooterTemplate><br /><br /></FooterTemplate>
            </asp:FilterRepeater>
            
            <asp:Label ID="Label2" runat="server" Text="Ngày khởi hành"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="LinqDataSource1" DataTextField="KhoiHanh" 
                DataValueField="KhoiHanh" autopostback = "true">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" Select="new (KhoiHanh)" 
                TableName="CHUYEN_XEs">
            </asp:LinqDataSource>
            
            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource"
                AllowPaging="True" AllowSorting="True"  AutoGenerateColumns="False" 
                CssClass="gridview" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                onrowcommand="GridView1_RowCommand">
               
               <Columns>
                    <asp:ButtonField CommandName="SelectItem" Text="Chọn" HeaderText="Chọn chuyến xe"/>
                    <asp:DynamicField DataField="TUYEN_XE" HeaderText="Tuyến xe" />
                    <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành" />
                    <asp:DynamicField DataField="NHAN_VIEN" HeaderText="Tài xế" />
                    <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" />
                </Columns>
                  

                <PagerStyle CssClass="footer"/>        
                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                
            </asp:GridView>

            <asp:LinqDataSource ID="GridDataSource" runat="server" EnableDelete="true">
                <WhereParameters>
                    <asp:DynamicControlParameter ControlID="FilterRepeater" />
                    <asp:ControlParameter Name = "KhoiHanh" ControlID="DropDownList1" PropertyName="SelectedValue" Type="Datetime"/>    
                </WhereParameters>
            </asp:LinqDataSource>

            <br />
            
        </ContentTemplate>
    </asp:UpdatePanel>
             
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>