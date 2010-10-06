<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Template._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
  <table id="Table_01" width="996" height="854" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="3">
			<img src="images/header_bg_left.gif" width="270" height="193" alt=""></td>
		<td colspan="2">
			<img src="images/header_bg_mid.gif" width="412" height="193" alt=""></td>
		<td colspan="4">
			<img src="images/header_bg_right.gif" width="313" height="193" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="193" alt=""></td>
	</tr>
	<tr>
		<td colspan="5">
			<asp:ImageMap ID="ImageMap1" runat="server" ImageUrl ="~/images/menu_bg.gif" 
                HotSpotMode="Navigate">
                <asp:CircleHotSpot HotSpotMode="Navigate" NavigateUrl="~/none.html" 
                    Radius="100" X="30" Y="100" />
			
                <asp:CircleHotSpot HotSpotMode="Navigate" NavigateUrl="~/none.html" Radius="80" 
                    X="130" Y="100" />
                <asp:CircleHotSpot HotSpotMode="Navigate" NavigateUrl="~/none.html" Radius="80" 
                    X="200" Y="100" />
			
            </asp:ImageMap>
			</td>
		<td colspan="4">
			<img src="images/header_bg_right2.gif" width="313" height="59" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="59" alt=""></td>
	</tr>
	<tr>
		<td colspan="9">
			<img src="images/menu_bg_bottom.gif" width="995" height="22" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="22" alt=""></td>
	</tr>
	<tr>
		<td colspan="6">
			<img src="images/markup-homepage-template_07.gif" width="686" height="23" alt=""></td>
		<td colspan="3" rowspan="2">
			<img src="images/hotline.gif" width="309" height="124" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="23" alt=""></td>
	</tr>
	<tr>
		<td rowspan="9">
			<img src="images/markup-homepage-template_09.gif" width="25" height="455" alt=""></td>
		<td>
		    <asp:Label ID="Label2" runat="server" 
                style="Z-INDEX: 100; LEFT: 72px; POSITION: absolute; TOP: 315px; width: 197px; height: 87px;" 
                BackColor="White" Font-Bold="True" Font-Size="XX-Large">Thông tin tuyến_giá vé</asp:Label>
			<asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl = "~/images/offer1.gif" BorderStyle="Double" />
			
		<td colspan="2" rowspan="9">
			<img src="images/markup-homepage-template_11.gif" width="21" height="455" alt=""></td>
		<td rowspan="6">
			<asp:Label ID="Label1" runat="server" 
                Text="Xin chào đến với công ty lữ hành C3" 
                style="Z-INDEX: 100; LEFT: 308px; POSITION: absolute; TOP: 316px; width: 368px; height: 244px;" 
                BackColor="White" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
			<img src="images/main_info.gif" width="392" height="267" alt=""></td>
		<td rowspan="9">
			<img src="images/markup-homepage-template_13.gif" width="4" height="455" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="101" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/markup-homepage-template_14.gif" width="244" height="19" alt=""></td>
		<td colspan="3">
			<img src="images/markup-homepage-template_15.gif" width="309" height="18" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="18" alt=""></td>
	</tr>
	<tr>
		<td rowspan="7">
			<img src="images/markup-homepage-template_16.gif" width="31" height="336" alt=""></td>
		<td rowspan="6">
			<img src="images/login_form.gif" width="243" height="233" alt=""></td>
		<td rowspan="7">
			<img src="images/markup-homepage-template_18.gif" width="35" height="336" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td>
			&nbsp;</td>
		<td>
			<img src="images/spacer.gif" width="1" height="102" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/markup-homepage-template_20.gif" width="244" height="19" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="19" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			&nbsp;</td>
		<td>
			<img src="images/spacer.gif" width="1" height="26" alt=""></td>
	</tr>
	<tr>
		<td rowspan="3">
			<img src="images/markup-homepage-template_22.gif" width="392" height="188" 
                alt="" style="margin-top: 0px"></td>
		<td>
			<img src="images/spacer.gif" width="1" height="77" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/markup-homepage-template_23.gif" width="244" height="111" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="8" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/markup-homepage-template_24.gif" width="243" height="103" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="103" alt=""></td>
	</tr>
	<tr>
		<td colspan="9">
			<img src="images/footer_bg.gif" width="995" height="101" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="101" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="25" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="244" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="20" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="392" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="4" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="31" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="243" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="35" height="1" alt=""></td>
		<td></td>
	</tr>
</table>

    </div>
    </form>
</body>
</html>
