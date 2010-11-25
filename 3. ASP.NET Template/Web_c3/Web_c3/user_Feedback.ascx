<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Feedback.ascx.cs" Inherits="Web_c3.user_Feedback" %>
<asp:Panel ID="pnFeedback" runat="server" style="padding:10px" >
<table>
    <tr>
        <td width="200">
            Địa chỉ gmail của bạn :
        </td>
        <td width="350">
            <asp:TextBox runat="server" ID="tbEmail" Width="350px" />
        </td>
    </tr>
    <tr>
        <td width="200">
            Password :
        </td>
        <td width="350">
            <asp:TextBox runat="server" ID="tbPassword" Width="350px" TextMode="Password" />
        </td>
    </tr>
    <tr>
        <td width="200">
            Email nhận :
        </td>
        <td width="350">
            <asp:TextBox runat="server" ID="tbReceiveEmail" Width="350px"  />
        </td>
    </tr>
    <tr>
        <td width="200">
            Phản hồi về :
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