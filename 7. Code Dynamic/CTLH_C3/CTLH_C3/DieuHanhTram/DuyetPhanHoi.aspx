<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeBehind="DuyetPhanHoi.aspx.cs" Inherits="CTLH_C3.DieuHanhTram.DuyetPhanHoi" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h2>Duyệt phản hồi khách hàng</h2>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
              <asp:GridView ID="GridView_PHANHOI" runat="server" AllowPaging="True" 
                 AllowSorting="True" AutoGenerateColumns="False" CssClass="gridview" 
                 DataSourceID="LinqDataSource_PHANHOI" 
                  onselectedindexchanged="GridView_PHANHOI_SelectedIndexChanged">
                 <PagerStyle CssClass="footer" />
                 <Columns>
                     <asp:CommandField HeaderText="Chọn phản hồi duyệt" SelectText="Chọn" ShowSelectButton="True" />
                   
                     <asp:BoundField DataField="NoiDung" HeaderText="Nội dung" 
                         ReadOnly="True" />
                     <asp:BoundField DataField="NgayDang" HeaderText="Ngày đăng" ReadOnly="True" />
                     <asp:BoundField DataField="MaPhanHoi" HeaderText="Mã phản hồi" 
                         ReadOnly="True" />
                 </Columns>
                 <PagerTemplate>
                     <asp:GridViewPager runat="server" ID="GridViewPager1" />
                 </PagerTemplate>
                 <EmptyDataTemplate>
                     Không còn phản hồi nào để duyệt.
                 </EmptyDataTemplate>
             </asp:GridView>

            <asp:LinqDataSource ID="LinqDataSource_PHANHOI" runat="server" 
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                Select="new (MaPhanHoi, NoiDung, NgayDang)" TableName="PHAN_HOI_KHACH_HANGs" 
                Where="Duyet == @Duyet">
                <WhereParameters>
                    <asp:Parameter DefaultValue="1" Name="Duyet" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>

          
       
             <asp:Label ID="Label1" runat="server" Text="Chọn tuyến xe"></asp:Label>
    <asp:DropDownList ID="DropDownList_TuyenXe" runat="server" 
        DataSourceID="LinqDataSource1" DataTextField="TenTuyenXe" 
        DataValueField="MaTuyenXe" 
        onselectedindexchanged="DropDownList_TuyenXe_SelectedIndexChanged">
    </asp:DropDownList>
     <br/>
    <asp:Label ID="Label2" runat="server" Text="Chọn ngày khởi hành"></asp:Label>
     <br/>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
        ForeColor="#003399" Height="200px" Width="220px">
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <WeekendDayStyle BackColor="#CCCCFF" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
    </asp:Calendar>
    <asp:Label ID="Label3" runat="server" Text="Chọn tài xế"></asp:Label>
    <asp:DropDownList ID="DropDownList_TaiXe" runat="server" DataTextField="HoTen" 
        DataValueField="MaNhanVien">
    </asp:DropDownList>
     <br/>
    <asp:Button ID="Button_Tim" runat="server" Text="Tìm kiếm chuyến xe" 
                  onclick="Button_Tim_Click" />
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" Select="new (TenTuyenXe, MaTuyenXe)" 
        TableName="TUYEN_XEs">
    </asp:LinqDataSource>
            <asp:GridView ID="GridView1" runat="server" CssClass="gridview" 
        AllowPaging="True" >
       
        <Columns>

  <asp:TemplateField HeaderText="Chọn">

    

      <ItemTemplate>

        <asp:CheckBox  ID="chkSelect" onclick="toggleCheckBoxes(this);" runat="server" />

     </ItemTemplate>
     
            
               
   </asp:TemplateField>

         

</Columns>

<FooterStyle BackColor="White" ForeColor="#330099" />

<RowStyle BackColor="White" ForeColor="#330099" />

<HeaderStyle BackColor="#F06300" Font-Bold="True" ForeColor="#FFFFCC" />
           <EmptyDataTemplate>
                    Không tìm ra được chuyến xe nào.
                </EmptyDataTemplate>
    </asp:GridView >
    
    <asp:Button ID="Button_OK" runat="server" Text="Xác nhận đồng ý duyệt" 
                  onclick="Button_OK_Click" />
        
    
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
