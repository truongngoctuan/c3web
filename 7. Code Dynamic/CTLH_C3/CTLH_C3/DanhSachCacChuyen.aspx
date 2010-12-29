<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile ="~/MasterPage.Master" CodeBehind="DanhSachCacChuyen.aspx.cs" Inherits="CTLH_C3.DanhSachCacChuyen" %>

<%@ Register src="Guest/user_Guest_TimKiemTuyenXe.ascx" tagname="user_Guest_TimKiemTuyenXe" tagprefix="uc1" %>
<%@ Register src="Guest/user_CustomLogin.ascx" tagname="user_Login" tagprefix="uc3" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="LeftContent">

            <div style="width:225px;float:left">   
            <uc1:user_Guest_TimKiemTuyenXe ID="user_Guest_TimKiemTuyenXe1" 
        runat="server" />
        </div>
    <br />

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="RightContent">
  <div style="width:245px;float:right">

    <br />
    <uc3:user_Login ID="user_Login1" runat="server" />
    <br />
    </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="MainContent">
  <div style="width:520px;float:left">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="Mã chuyến" />
                    <asp:BoundField HeaderText="Thời gian khởi hành" />
                    <asp:BoundField HeaderText="Thời gian dự kiến đến" />
                    <asp:BoundField />
                </Columns>
            </asp:GridView>
            </div>
</asp:Content>

