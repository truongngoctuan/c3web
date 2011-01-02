<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GhiNhanPhanHoi.aspx.cs" Inherits="CTLH_C3.DieuHanhTram.GhiNhanPhanHoi" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Ghi Nhận Phản Hồi</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <br />

 <script type="text/javascript">
     function toggleCheckBoxes(source) {
         var checked = source.checked;

         for (i = 0; i < document.childNodes.length; i++) {

             elm = document.childNodes[i];

             if (elm.type == 'checkbox') {
                        elm.checked = false;
                     }
             }
                
         }
         source.checked = checked;
     }  
    </script>
    <h1>Ghi Nhận Phản Hồi</h1>

    <asp:Label ID="Label4" runat="server" Text="Nội dung phản hồi"></asp:Label>
    <br/>
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="110px" 
        Width="526px"></asp:TextBox>
    <br/>
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
        ForeColor="#003399" Height="200px" Width="220px" 
        onselectionchanged="Calendar1_SelectionChanged">
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
        AllowPaging="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
       
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
    
    <asp:Button ID="Button_OK" runat="server" Text="Thêm phản hồi" 
        onclick="Button_OK_Click" />
        
    <asp:LinqDataSource ID="GridDataSource" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
        Select="new (KhoiHanh, MaTuyenXe)" TableName="CHUYEN_XEs" Where="MaTuyenXe == @MaTuyenXe &amp;&amp; MaChuyenXe == @MaChuyenXe" 
        >
        <WhereParameters>
            <asp:ControlParameter ControlID="DropDownList_TuyenXe" Name="MaTuyenXe" 
                PropertyName="SelectedValue" Type="Int32" />
           
        </WhereParameters>
    </asp:LinqDataSource>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>