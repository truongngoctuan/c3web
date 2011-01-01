<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_Feedback.ascx.cs" Inherits="CTLH_C3.Guest.user_Feedback" %>
<asp:Panel ID="pnFeedback" runat="server">
<div style="width:525px; display:block; margin: 0px auto;">
<h1>Nhận Phản Hồi</h1>
<table>
    <tr>
        <td width="160">
            Email của bạn :
        </td>
        <td width="350">
            <asp:TextBox runat="server" ID="tbCustomerEmail" Width="350px"  />
        </td>
    </tr>
    <tr>
        <td width="160">
            Tiêu đề :
        </td>
        <td width="350">
            <asp:TextBox runat="server" ID="tbSubject" Width="350px" />
        </td>
    </tr>
    <tr>
        <td width="160" valign="top">
            Thông tin phản hồi :
        </td>
        <td width="350">
            <asp:TextBox runat="server" ID="tbThongTinPhanHoi" Rows="5" TextMode="MultiLine" Width="345"  
            style="height:350px;
                background-image:none;
                background-color:#EEF9FE; 
            "/>            
        </td>
    </tr>
</table>

<asp:Button ID="btSubmit" runat="server" Text="Gửi phản hồi"
style="margin:5px auto; width:120px; display:block;"
    onclick="btSubmit_Click" />
    </div>

</asp:Panel>