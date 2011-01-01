<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuenMatKhau.ascx.cs" Inherits="CTLH_C3.Guest.QuenMatKhau" %>
<div id="QuenMatKhau">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" 
        onsendingmail="PasswordRecovery1_SendingMail"
        SubmitButtonStyle-CssClass="ucButton"
        SubmitButtonStyle-Font-Names="Verdana" 
        SubmitButtonStyle-Font-Size="11px" 
        SubmitButtonStyle-Font-Bold="true"
        SubmitButtonStyle-Height="28px"
        
        SubmitButtonText="Gửi mật khẩu vào email"
        
        TextBoxStyle-BorderWidth="1px" 
        TextBoxStyle-BorderColor="#3a92ff" 
        TextBoxStyle-ForeColor="#090d37" 
        TextBoxStyle-Font-Names="Verdana" 
        TextBoxStyle-Font-Size="11px" 
        TextBoxStyle-Height="20px"
        TextBoxStyle-CssClass="ucTextbox"
        
        UserNameInstructionText="Nhập tên đăng nhập của bạn để có thể nhận được mật khẩu" 
        UserNameLabelText="Tên đăng nhập" UserNameTitleText="Bạn quên mật khẩu?">
<SubmitButtonStyle CssClass="ucButton" Font-Bold="True" Font-Names="Verdana" Font-Size="11px" Height="28px"></SubmitButtonStyle>
    </asp:PasswordRecovery>
</div>
