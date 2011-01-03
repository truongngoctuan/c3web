<%@ Page Language="C#" MasterPageFile="~/DieuHanhCongTy/MasterPage.Master" CodeBehind="Insert.aspx.cs" Inherits="CTLH_C3.NHAN_VIENs.Insert" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Thêm Nhân Viên Mới</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
        HeaderText="Danh sách lỗi" />
    <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

    <asp:DetailsView ID="DetailsView1" runat="server" 
        DataSourceID="DetailsDataSource" DefaultMode="Insert"
        AutoGenerateInsertButton="True" OnItemCommand="DetailsView1_ItemCommand" OnItemInserted="DetailsView1_ItemInserted"
        CssClass="detailstable" FieldHeaderStyle-CssClass="bold"
        AutoGenerateRows="false" DataKeyNames="MaNhanVien" 
        oniteminserting="DetailsView1_ItemInserting">
        
        <Fields>
            <asp:BoundField DataField="MaNhanVien" HeaderText="Mã nhân viên" 
                InsertVisible="False" ReadOnly="True" SortExpression="MaNhanVien" />
            <asp:BoundField DataField="HoTen" HeaderText="Họ tên" SortExpression="HoTen" />
            <asp:BoundField DataField="DienThoai" HeaderText="Điện thoại" 
                SortExpression="DienThoai" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" 
                SortExpression="DiaChi" />
            <asp:TemplateField HeaderText="Hình ảnh">
                <InsertItemTemplate>
                    <div>
                        <asp:Label runat="server" id="sttImageUpload" text=" " style="margin-bottom:15px;clear:both;color:red"/>
                    </div>
                    <asp:FileUpload ID="fileUpload" runat="server" />
                </InsertItemTemplate>
            </asp:TemplateField>
        </Fields>
        
    </asp:DetailsView>

    <asp:LinqDataSource ID="DetailsDataSource" runat="server"
        ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" TableName="NHAN_VIENs" 
        EnableInsert="True" >
    </asp:LinqDataSource>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>