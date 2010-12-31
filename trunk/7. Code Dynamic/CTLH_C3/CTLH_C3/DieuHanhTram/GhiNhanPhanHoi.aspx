<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GhiNhanPhanHoi.aspx.cs" Inherits="CTLH_C3.DieuHanhTram.GhiNhanPhanHoi" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>


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

    <asp:Label ID="Label1" runat="server" Text="Tuyến xe"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="LinqDataSource1" DataTextField="TenTuyenXe" 
        DataValueField="TenTuyenXe">
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" Text="Khởi hành"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="LinqDataSource2" DataTextField="KhoiHanh" 
        DataValueField="KhoiHanh">
    </asp:DropDownList>
    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" Select="new (KhoiHanh)" 
        TableName="CHUYEN_XEs">
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" Select="new (TenTuyenXe)" 
        TableName="TUYEN_XEs">
    </asp:LinqDataSource>

    <asp:GridView ID="GridView1" runat="server" CssClass="gridview" 
        DataSourceID="GridDataSource" AllowPaging="True" 
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
    </asp:GridView >
    <asp:LinqDataSource ID="GridDataSource" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" 
        Select="new (KhoiHanh, MaTuyenXe, MaTaiXe)" TableName="CHUYEN_XEs" 
        >
    </asp:LinqDataSource>

</asp:Content>
