<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeBehind="DuyetPhanHoi.aspx.cs" Inherits="CTLH_C3.DieuHanhTram.DuyetPhanHoi" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                     <asp:CommandField HeaderText="Chọn phản hồi duyệt" SelectText="Duyệt" 
                         ShowSelectButton="True" />
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

          
       
             <asp:Label ID="Label_TieuDe" runat="server" Text="Chọn chuyến xe liên quan"></asp:Label>
              
              
              <br></br>
              <br></br>
              <br></br>
              <br></br>
              <asp:Label ID="Label_TuyenXe" runat="server" Text="Chọn tuyến xe"></asp:Label>
              <asp:DropDownList ID="DropDownList_TUYENXE" runat="server" AutoPostBack="True" 
                  DataSourceID="LinqDataSource_TUYENXE" DataTextField="TenTuyenXe" 
                  DataValueField="MaTuyenXe">
              </asp:DropDownList>
              <asp:Label ID="Label_TAIXE" runat="server" Text="Chọn tài xế"></asp:Label>
              <asp:DropDownList ID="DropDownList_TAIXE" runat="server" AutoPostBack="True" 
                  DataTextField="HoTen" DataValueField="MaNhanVien" EnableViewState = "True">
              </asp:DropDownList>
              <asp:LinqDataSource ID="LinqDataSource_TUYENXE" runat="server" 
                  ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                  Select="new (MaTuyenXe, TenTuyenXe)" TableName="TUYEN_XEs">
              </asp:LinqDataSource>
              <asp:GridView ID="GridView_CHUYENXE" runat="server" AllowPaging="True" 
                  AllowSorting="True" AutoGenerateColumns="False" CssClass="gridview" 
                  DataSourceID="LinqDataSource_CHUYENXE" 
                  onselectedindexchanged="GridView_CHUYENXE_SelectedIndexChanged">
                  <PagerStyle CssClass="footer" />
                  <Columns>
                      <asp:CommandField HeaderText="Chọn chuyến xe" SelectText="Chọn" 
                          ShowSelectButton="True" />
                      <asp:BoundField DataField="MaChuyenXe" HeaderText="Mã chuyến xe" 
                          ReadOnly="True" />
                      <asp:BoundField DataField="KhoiHanh" HeaderText="Khởi hành" ReadOnly="True" />
                  </Columns>
                  <PagerTemplate>
                      <asp:GridViewPager ID="GridViewPager2" runat="server" />
                  </PagerTemplate>
                  <EmptyDataTemplate>
                  </EmptyDataTemplate>
              </asp:GridView>
              <asp:LinqDataSource ID="LinqDataSource_CHUYENXE" runat="server" 
                  ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
                  Select="new (MaChuyenXe, KhoiHanh)" TableName="CHUYEN_XEs" 
                  Where="MaTuyenXe == @MaTuyenXe &amp;&amp; TinhTrang != @TinhTrang &amp;&amp; MaTaiXe == @MaTaiXe">
                  <WhereParameters>
                       <asp:Parameter DefaultValue="1" Name="TinhTrang" Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList_TAIXE" Name="MaTaiXe" 
                          PropertyName="SelectedValue" Type="Int32" />
                      <asp:ControlParameter ControlID="DropDownList_TUYENXE" Name="MaTuyenXe" 
                          PropertyName="SelectedValue" Type="Int32" />
                     
                  </WhereParameters>
              </asp:LinqDataSource>
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
