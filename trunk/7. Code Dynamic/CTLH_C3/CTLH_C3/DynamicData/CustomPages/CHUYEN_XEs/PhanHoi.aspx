<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" CodeBehind="PhanHoi.aspx.cs" Inherits="CTLH_C3.CHUYEN_XEs.PhanHoi" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

   <script type="text/javascript">
  
     </script>
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />
     
     <h2>Nội dung phản hồi</h2>
     
      
                           <asp:TextBox runat="server" ID="tbThongTinPhanHoi" Rows="5" 
                TextMode="MultiLine" Width="534px" />
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
