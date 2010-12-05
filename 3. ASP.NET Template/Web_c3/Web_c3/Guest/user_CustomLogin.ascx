<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_CustomLogin.ascx.cs" Inherits="Web_c3.Guest.user_CustomLogin" %>
<style type="text/css">
    .style1
    {
        height: 21px;
    }
</style>
<asp:Login ID="Login1" runat="server">
    <LayoutTemplate>
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/login_form.png" Width="245px" Height="250px">
        <table border="0" cellpadding="1" cellspacing="10"
            style="border-collapse:collapse; position: relative; top: 30px;" 
                align="center">
            <tr>
                <td>
                    <table border="0" cellpadding="0">
                        <tr>
                            <td> &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style1">
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
                            <td colspan="2">
                                <asp:CheckBox ID="RememberMe" runat="server" CssClass="custom-checkbox" Text="Remember me next time." />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                    ValidationGroup="ctl00$Login1" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </asp:Panel>
    </LayoutTemplate>
</asp:Login>
