﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_CustomLogin.ascx.cs" Inherits="CTLH_C3.Guest.user_CustomLogin" %>
<asp:LoginView ID="LoginView1" runat="server" >
    <RoleGroups>
    <%--Admin--%>
        <asp:RoleGroup Roles="Admin">
            <ContentTemplate>
                <asp:FormView ID="FormView1" runat="server" DataSourceID="ldsTenNhanVien">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/HinhDaiDien.jpg"
                        style="float:left; clear:both;"/>
                        
                        <asp:Label ID="lbHoTen" runat="server" 
                        Text='<%#Bind("HoTen")%>' style="float:left; clear:both;"></asp:Label>
                        
                        <asp:LoginStatus ID="LoginStatus1" runat="server" 
                            LoginImageUrl="~/images/login_button.png" 
                            LogoutImageUrl="~/images/logout-button.png"
                            LogoutPageUrl="~/Default.aspx" 
                            style="float:left; clear:both;"/>
                    
                        <asp:HyperLink ID="HyperLink3" NavigateUrl="~/GUI/Admin/TaiKhoan.aspx" runat="server"
                        style="float:left; clear:both;">Quản lý tài khoản</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/GUI/Admin/TaiKhoan.aspx" runat="server"
                        style="float:left; clear:both;">Thông tin công ty</asp:HyperLink>
                           
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="ldsDanhSachPhanHoi"
                        style="float:left; clear:both; width:240px;" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="NoiDung" HeaderText="Nội dung phản hồi" ReadOnly="True"
                            HeaderStyle-Width="150px"
                            ItemStyle-Width="150px"/>
                            <asp:BoundField DataField="NgayDang" HeaderText="Ngày đăng" ReadOnly="True" />
                        </Columns>
                        </asp:GridView>        
                    </ItemTemplate>
                </asp:FormView>    
                
                <asp:LinqDataSource ID="ldsTenNhanVien" runat="server" 
                onselecting="ldsTenNhanVien_Selecting">
                </asp:LinqDataSource>
                <asp:LinqDataSource ID="ldsDanhSachPhanHoi" runat="server" 
                        onselecting="ldsDanhSachPhanHoi_Selecting">
                </asp:LinqDataSource>
                
            </ContentTemplate>
        </asp:RoleGroup>
        
        <asp:RoleGroup Roles="Tài Xế">
        <ContentTemplate>
                Đăng nhập thành công !!!<br />
        Tên TX : 
        <asp:LoginName ID="LoginName1" runat="server" />
        <br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" 
            LoginImageUrl="~/images/login_button.png" 
            LogoutImageUrl="~/images/logout-button.png"
            LogoutPageUrl="~/Default.aspx" />   
            </ContentTemplate>
        </asp:RoleGroup>
        <asp:RoleGroup Roles="Quản Lý Trạm">
        <ContentTemplate>
                Đăng nhập thành công !!!<br />
        Tên QLT : 
        <asp:LoginName ID="LoginName1" runat="server" />
        <br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" 
            LoginImageUrl="~/images/login_button.png" 
            LogoutImageUrl="~/images/logout-button.png"
            LogoutPageUrl="~/Default.aspx" />   
            </ContentTemplate>
        </asp:RoleGroup>
        <asp:RoleGroup Roles="Quản Lý Công Ty">
        <ContentTemplate>
                Đăng nhập thành công !!!<br />
        Tên QLCT : 
        <asp:LoginName ID="LoginName1" runat="server" />
        <br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" 
            LoginImageUrl="~/images/login_button.png" 
            LogoutImageUrl="~/images/logout-button.png"
            LogoutPageUrl="~/Default.aspx" />   
            </ContentTemplate>
        </asp:RoleGroup>
    </RoleGroups>
    <LoggedInTemplate>        
        LoggedInTemplate - Đăng nhập thành công !!!<br />
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
