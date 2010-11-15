<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_345_TangChuyenTrongTuyen.ascx.cs" Inherits="UserControl.User_345_TangChuyenTrongTuyen" %>
<asp:Panel ID="Panel1" runat="server" Height="233px" Width="558px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
        ID="lnTangChuyenTrongTuyen" runat="server" 
        Font-Bold="True" Font-Size="Larger" Text="Tăng chuyến trong tuyến"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="lbTuyenXe" runat="server" Text="Tuyến xe"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlTuyenXe" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    
    <asp:Label ID="lbDanhSachChuyen" runat="server" Text="Danh sách chuyến"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="gvChuyen" runat="server">
    </asp:GridView>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnInsert" runat="server" Text="Insert" Width="58px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnOK" runat="server" Text="OK" Width="64px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
    
    <br />
    
</asp:Panel>