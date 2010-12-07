<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDoiMatKhau.ascx.cs" Inherits="Web_c3.Authenticated.Controls.ucDoiMatKhau" %>
<div id="DoiMatKhau" >
    
    <asp:ChangePassword ID="ChangePassword1" runat="server" 
        ChangePasswordButtonText="Thay đổi" ChangePasswordFailureText="Mật khẩu sai" 
        ChangePasswordTitleText="Thay Đổi Mật Khẩu" 
        ConfirmNewPasswordLabelText="Xác nhận lại mật khẩu mới" 
        ConfirmPasswordCompareErrorMessage="Hãy xác nhận lại mật khẩu mới" 
        ConfirmPasswordRequiredErrorMessage="Cần phải xác nhận mật khẩu mới" 
        NewPasswordLabelText="Mật khẩu mới:" 
        NewPasswordRegularExpressionErrorMessage="Mật khẩu mới phải khác với mật khẩu cũ" 
        NewPasswordRequiredErrorMessage="Hãy nhập mật khẩu mới"         
        PasswordLabelText="Mật khẩu hiện tại:" 
        PasswordRequiredErrorMessage="Hãy nhập mật khẩu hiện tại." 
        SuccessText="Đổi mật khẩu thành công!" 
        SuccessTitleText="Hoàn tất đổi mật khẩu." UserNameLabelText="Tên tài khoản:" 
        UserNameRequiredErrorMessage="Hãy nhập tên tài khoản." 
        ContinueDestinationPageUrl="~/Default.aspx">
    </asp:ChangePassword>
    
</div>