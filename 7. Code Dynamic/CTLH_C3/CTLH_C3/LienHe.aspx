<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="CTLH_C3.LienHe" %>

<%@ Register src="~/Guest/user_HotLine.ascx" tagname="user_HotLine" tagprefix="webUC" %>
<%@ Register src="~/Guest/user_LienHe.ascx" tagname="user_LienHe" tagprefix="webUC" %>

<%@ Register Src="~/Guest/user_DanhSachTram.ascx" TagName="user_DanhSachTram" TagPrefix="webUC" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="stylesheet" type="text/css" href="lienhestyle.css" />
	<link rel="stylesheet" type="text/css" href="gueststyle.css" />
	<title>Liên Hệ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
    <webUC:user_DanhSachTram ID="user_DanhSachTram1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div style="width: 550px; float: right; margin-left:5px;">
            <h1>Liên Hệ</h2>
			<table>
				<tr>
					<td width="400" height="130">
						<div class="creator_box">
							<p>
								<img src="images/0712164.jpg" alt=""> 
								Họ và tên : <strong>Lương Phương Hiền</strong><br/>
								MSSV : <strong>0712164</strong><br/>
								Email : <strong>luongphuonghien@gmail.com</strong><br/>
								Phone : <strong>0902786809</strong><br/>
							</p>
						</div>
					</td>
					<td width="400" height="130">
						<div class="creator_box">
							<p>
								<img src="images/0712244.jpg" alt=""> 
								Họ và tên : <strong>Lư Mỹ Liên</strong><br/>
								MSSV : <strong>0712244</strong><br/>
								Email : <strong>mtdclub@gmail.com</strong><br/>
								Phone : <strong>01692327709</strong><br/>
							</p>
						</div>
					</td>				
				</tr>
				<tr>
					<td width="400" height="130">
						<div class="creator_box">
							<p>
								<img src="images/0712273.jpg" alt=""> 
								Họ và tên : <strong>Trương Thị Tuệ Mai</strong><br/>
								MSSV : <strong>0712273</strong><br/>
								Email : <strong>mai.khtn@gmail.com</strong><br/>
								Phone : <strong>01665135714</strong><br/>
							</p>
						</div>
					</td>
					<td width="400" height="130">
						<div class="creator_box">
							<p>
								<img src="images/0712281.jpg" alt=""> 
								Họ và tên : <strong>Nguyễn Hoàng Minh</strong><br/>
								MSSV : <strong>0712281</strong><br/>
								Email : <strong>hoangminh89@gmail.com</strong><br/>
								Phone : <strong>01663484091</strong><br/>
							</p>
						</div>
					</td>					
				</tr>
				<tr>
					<td width="400" height="130">
						<div class="creator_box">
							<p>
								<img src="images/0712494.jpg" alt=""> 
								Họ và tên : <strong>Trương Ngọc Tuấn</strong><br/>
								MSSV : <strong>0712494</strong><br/>
								Email : <strong>tntuan0712494@gmail.com</strong><br/>
								Phone : <strong>0987133189</strong><br/>
							</p>
						</div>
					</td>
					<td width="400" height="130">
						<div class="creator_box">
							<p>
								<img src="images/0712167.jpg" alt=""> 
								Họ và tên : <strong>Lê Chí Hiếu</strong><br/>
								MSSV : <strong>0712167</strong><br/>
								Email : <strong>mozilla.com.ltd@gmail.com</strong><br/>
								Phone : <strong>22127306</strong><br/>
							</p>
						</div>
					</td>					
				</tr>
			</table>
    </div>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>
