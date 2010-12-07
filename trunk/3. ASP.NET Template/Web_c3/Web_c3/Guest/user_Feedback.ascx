<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Feedback.ascx.cs" Inherits="Web_c3.Guest.user_Feedback" %>
<asp:Panel ID="pnFeedback" runat="server" style="padding:10px" >
<table>
    <tr>
        <td width="200">
            Email của bạn :
        </td>
        <td width="350">
            <asp:TextBox runat="server" ID="tbCustomerEmail" Width="350px"  />
        </td>
    </tr>
    <tr>
        <td width="200">
            Tiêu đề :
        </td>
        <td width="350">
            <asp:TextBox runat="server" ID="tbSubject" Width="350px" />
        </td>
    </tr>
    <tr>
        <td width="200" valign="top">
            Thông tin phản hồi :
        </td>
        <td width="350">
            <asp:TextBox runat="server" ID="tbThongTinPhanHoi" Rows="5" TextMode="MultiLine" Width="350" />
        </td>
    </tr>
</table>
<asp:Button ID="btSubmit" runat="server" Text="Submit" 
    onclick="btSubmit_Click" />
</asp:Panel>