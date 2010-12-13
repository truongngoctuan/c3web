<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/MasterPage.Master" CodeBehind="ThongTinChiTietChuyenXe.aspx.cs" Inherits="CTLH_C3.ThongTinChiTietChuyenXe" %>

<%@ Register src="Guest/user_Guest_XemThongTinChuyenXe.ascx" tagname="user_Guest_XemThongTinChuyenXe" tagprefix="uc1" %>
<%@ Register src="Guest/user_Guest_TimKiemTuyenXe.ascx" tagname="user_Guest_TimKiemTuyenXe" tagprefix="uc2" %>
<%@ Register src="user_HotLine.ascx" tagname="user_HotLine" tagprefix="uc3" %>
<%@ Register src="user_Login.ascx" tagname="user_Login" tagprefix="uc4" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="LeftContent">

          <div style="width:225px;float:left">   
            <uc2:user_Guest_TimKiemTuyenXe ID="user_Guest_TimKiemTuyenXe1" 
        runat="server" />
        </div>
    <br />

</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <div style="width:520px;float:left">
            <uc1:user_Guest_XemThongTinChuyenXe ID="user_Guest_XemThongTinChuyenXe1" 
        runat="server" />
        </div>
    
   
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="RightContent">
     <div style="width:245px;float:right">
            <uc3:user_HotLine ID="user_HotLine1" runat="server" />
    <br />
    <uc4:user_Login ID="user_Login1" runat="server" />
    </div>
   
</asp:Content>


