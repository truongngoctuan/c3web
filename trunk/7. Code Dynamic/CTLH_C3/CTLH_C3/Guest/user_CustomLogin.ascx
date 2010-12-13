<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_CustomLogin.ascx.cs" Inherits="CTLH_C3.Guest.user_CustomLogin" %>
<asp:LoginView ID="LoginView1" runat="server">
    <LoggedInTemplate>
        Đăng nhập thành công !!!<br />
        Tên user : 
        <asp:LoginName ID="LoginName1" runat="server" />
        <br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" 
            LoginImageUrl="~/images/login_button.png" 
            LogoutImageUrl="~/images/logout-button.png"
            LogoutPageUrl="~/Default.aspx" />        
    </LoggedInTemplate>
    <AnonymousTemplate>
        <asp:Login ID="Login1" runat="server" onloginerror="Login1_LoginError" >
            <LayoutTemplate>
                <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/login_form.png" 
            Width="245px" Height="250px">
                    <table border="0" cellpadding="1" cellspacing="5"
            style="border-collapse:collapse; position: relative; top: 55px;" 
                align="center">
                        <tr>
                            <td align="left">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" Width="185px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                        ToolTip="User Name is required." ValidationGroup="ctl00$Login1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="185px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                        ControlToValidate="Password" ErrorMessage="Password is required." 
                        ToolTip="Password is required." ValidationGroup="ctl00$Login1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/QuenMatKhau.aspx">Quên Mật Khẩu</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="custom-checkbox" 
                        Text="Remember me next time." />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" >
                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                        ValidationGroup="ctl00$Login1" />
                            </td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ValidationGroup="Login1" ShowSummary="False" />
                </asp:Panel>
            </LayoutTemplate>
        </asp:Login>
    </AnonymousTemplate>
</asp:LoginView>

