<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_DanhSachTram.ascx.cs" Inherits="CTLH_C3.Guest.user_DanhSachTram" %>
<asp:Repeater ID="rptTram" runat="server" DataSourceID="ldsTram">
        <HeaderTemplate>
        <div class="LeftContentDanhSachTram">
        <div></div>
            <ul>
        </HeaderTemplate>
        <ItemTemplate>
            <li>
                <a href="TimKiemChuyen.aspx?MaTramDi=<%# DataBinder.Eval(Container.DataItem, "MaTramXe")%>"
                class"LeftContentItemLink">
                  <%# DataBinder.Eval(Container.DataItem, "TenTramXe") %></a>   
                             
            </li>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
            </div>
        </FooterTemplate>
    </asp:Repeater>
    <asp:LinqDataSource ID="ldsTram" runat="server" 
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" TableName="TRAM_XEs" >
    </asp:LinqDataSource> 
