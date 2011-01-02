<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="user_CustomLogin.ascx.cs" Inherits="CTLH_C3.Guest.user_CustomLogin" %>
<asp:LoginView ID="LoginView1" runat="server" >
    <RoleGroups>
    <%--Admin--%>
        <asp:RoleGroup Roles="Admin">
            <ContentTemplate>
                 <asp:FormView ID="FormView1" runat="server" DataSourceID="ldsTenNhanVien"
                        Width="245px">
                        <ItemTemplate>
                        <div style="width:245px; text-align:center;">
                        <asp:LoginStatus ID="LoginStatus1" runat="server" 
                            LoginText="Đăng nhập"
                            CssClass="ucloginlogout"                            
                            LogoutText="Đăng xuất"                             
                            LogoutPageUrl="~/Default.aspx"
                            style="float:right;clear:both;"/>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/HinhDaiDien.jpg"
                        style="float:left; clear:both; margin-left:50px; margin-bottom:5px;"/>
                        
                        <asp:Label ID="lbHoTen" runat="server" 
                        Text='<%#Bind("HoTen")%>' 
                        style="
                            float:left; clear:both;
                            text-align:center;
                            width:245px"></asp:Label>

                            <asp:Button ID="Button1" runat="server" Text="Quản lý tài khoản" 
                            PostBackUrl="~/TAI_KHOANs/List.aspx" SkinID="LeftContent"/>
                            <asp:Button ID="Button2" runat="server" Text="Thông tin công ty" 
                            PostBackUrl="~/Admin/ThayDoiGiaoDien.aspx" SkinID="LeftContent"/>
                        </div>
                    </ItemTemplate>
                </asp:FormView>   
                
                <asp:LinqDataSource ID="ldsTenNhanVien" runat="server" 
                onselecting="ldsTenNhanVien_Selecting">
                </asp:LinqDataSource>
                
            </ContentTemplate>
        </asp:RoleGroup>
        
        <asp:RoleGroup Roles="Tài Xế">
            <ContentTemplate>
            <asp:FormView ID="FormView2" runat="server" DataSourceID="ldsTenLuongNhanVien"
                        Width="245px">
                    <ItemTemplate>
                        <div style="width:245px;">
                        <asp:LoginStatus ID="LoginStatus1" runat="server" 
                            LoginText="Đăng nhập"
                            CssClass="ucloginlogout"
                            
                            LogoutText="Đăng xuất" 
                            
                            LogoutPageUrl="~/Default.aspx"
                            style="float:right;"/>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/HinhDaiDien.jpg"
                            style="
                            margin-left:49px;"/>
                        
                        <asp:Label ID="lbHoTen" runat="server" 
                        Text='<%#Bind("HoTen")%>' 
                        style="
                            float:left; clear:both;
                            text-align:center; width:245px"></asp:Label>
                        
<%--                        <div style="
                            float:left; clear:both;
                            text-align:center; width:245px">
                            Lương: 
                            <asp:Literal ID="Label1" runat="server" 
                        Text=" <%#Bind('LuongTrongThang')%>"></asp:Literal> VNĐ</div>--%>
                        
                    <asp:Button ID="Button1" runat="server" Text="Xem lịch chạy" 
                            PostBackUrl="~/TaiXe/LichChay.aspx" SkinID="LeftContent"/>
                            <asp:Button ID="Button2" runat="server" Text="Xem nhật kí" 
                            PostBackUrl="~/TaiXe/NhatKi.aspx" SkinID="LeftContent"/>
                            <asp:Button ID="Button3" runat="server" Text="Xem phản hồi" 
                            PostBackUrl="~/TaiXe/XemPhanHoi.aspx" SkinID="LeftContent"/>
<%--                            
                            
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/TaiXe/TaiXe_Default.aspx" runat="server"
                        style="float:left; clear:both;text-align:center;width:245px;">Xem chuyến kế tiếp</asp:HyperLink><br />
                        <asp:HyperLink ID="HyperLink5" NavigateUrl="~/TaiXe/NhatKi.aspx" runat="server"
                        style="float:left; clear:both;text-align:center;width:245px;">Xem nhật kí</asp:HyperLink><br />
                        
                        <asp:HyperLink ID="HyperLink4" NavigateUrl="~/TaiXe/XemPhanHoi.aspx" runat="server"
                        style="float:left; clear:both;text-align:center;width:245px;">Xem phản hồi</asp:HyperLink>--%>
                        Phản hồi gần nhất:<br />
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="ldsDanhSachPhanHoi"
                        style="float:left; clear:both; width:240px;" AutoGenerateColumns="False"
                        CssClass="gridview">
                        <Columns>
                            <asp:BoundField DataField="NoiDung" HeaderText="Nội dung phản hồi" ReadOnly="True"
                            HeaderStyle-Width="150px"
                            ItemStyle-Width="150px"/>
                            <asp:BoundField DataField="NgayDang" HeaderText="Ngày đăng" ReadOnly="True" />
                        </Columns>
                        </asp:GridView>
                                                   
                       </div>  
                    </ItemTemplate>
                </asp:FormView>
                <asp:LinqDataSource ID="ldsTenLuongNhanVien" runat="server" 
                        onselecting="ldsTenLuongNhanVien_Selecting" >
                </asp:LinqDataSource>
                <asp:LinqDataSource ID="ldsDanhSachPhanHoi" runat="server" 
                        onselecting="ldsDanhSachPhanHoi_Selecting">
                </asp:LinqDataSource>
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
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Tên đăng nhập:</asp:Label>
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
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Mật khẩu:</asp:Label>
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
                        <%--Bỏ checkbox này luôn (do không có yêu cầu)--%>
                        <%--<tr>
                            <td>--%>
                                <%--CssClass="custom-checkbox": bỏ - 
                                do đã bỏ script tương ứng vì gây lỗi--%>
                                <%--<asp:CheckBox ID="CheckBox1" runat="server"  
                        Text="Remember me next time." />
                            </td>
                        </tr>--%>
                        <tr>
                            <td align="center" >
                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Đăng nhập" 
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

