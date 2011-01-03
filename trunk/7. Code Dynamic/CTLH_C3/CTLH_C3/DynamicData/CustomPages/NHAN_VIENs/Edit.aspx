<%@ Page Language="C#" MasterPageFile="~/DieuHanhCongTy/MasterPage.Master" CodeBehind="Edit.aspx.cs" Inherits="CTLH_C3.NHAN_VIENs.Edit" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Cập Nhật Thông Tin Nhân Viên</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
        HeaderText="Danh sách lỗi" />
        
    <asp:DetailsView ID="DetailsView1" runat="server" 
        DataSourceID="DetailsDataSource" DefaultMode="Edit"
        AutoGenerateEditButton="True" OnItemCommand="DetailsView1_ItemCommand" OnItemUpdated="DetailsView1_ItemUpdated"
        CssClass="detailstable" FieldHeaderStyle-CssClass="bold"
        AutoGenerateRows="false" onitemupdating="DetailsView1_ItemUpdating"
        DataKeyNames="MaNhanVien">
        <Fields>
            <asp:BoundField DataField="MaNhanVien" HeaderText="Mã nhân viên" 
                InsertVisible="False" ReadOnly="True" SortExpression="MaNhanVien" />
            <asp:BoundField DataField="HoTen" HeaderText="Họ tên" SortExpression="HoTen" />
            <asp:BoundField DataField="DienThoai" HeaderText="Điện thoại" 
                SortExpression="DienThoai" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" 
                SortExpression="DiaChi" />
            <asp:TemplateField HeaderText="Hình ảnh">
                <EditItemTemplate>
                    <div>
                        <asp:Label runat="server" id="sttImageUpload" text=" " style="margin-bottom:15px;clear:both;color:red"/>
                    </div>
                    <asp:FileUpload ID="fileUpload" runat="server" />
                    <%--<asp:CustomValidator runat="server" id="cusCustom" controltovalidate="fileUpload" onservervalidate="cusCustom_ServerValidate" errormessage="Không hợp lệ" />--%>
                </EditItemTemplate>
            </asp:TemplateField>
            <%--<asp:HyperLinkField HeaderText="Tài khoản" Text="Xem" DataNavigateUrlFields="MaTaiKhoan" DataNavigateUrlFormatString="~/TAI_KHOANs/List.aspx?MaTaiKhoan={0}"/>--%>
        </Fields>
    </asp:DetailsView>

    <asp:LinqDataSource ID="DetailsDataSource" runat="server" EnableUpdate="true"
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" TableName="NHAN_VIENs" >
    </asp:LinqDataSource>
        
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>