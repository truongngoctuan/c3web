<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" CodeBehind="Edit.aspx.cs" Inherits="CTLH_C3.TRAM_XEs.Edit" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Điều Chỉnh Thông Tin Một Trạm</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Điều Chỉnh Thông Tin Một Trạm</h1>
    <div class="CanhGiua" style="width:300px;">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
            HeaderText="Danh sách lỗi" />

        <asp:DetailsView ID="DetailsView1" runat="server" 
            DataSourceID="DetailsDataSource" DefaultMode="Edit"
            AutoGenerateEditButton="false" OnItemCommand="DetailsView1_ItemCommand" OnItemUpdated="DetailsView1_ItemUpdated"
            CssClass="detailstable" FieldHeaderStyle-CssClass="bold"
            OnItemUpdating="DetailsView1_ItemUpdating"
            AutoGenerateRows="false" DataKeyNames="MaTramXe" 
            ondatabound="DetailsView1_DataBound">
            <Fields> 
                <asp:BoundField DataField="MaTramXe" HeaderText="Mã trạm" 
                    InsertVisible="False" ReadOnly="True" SortExpression="MaNhanVien" />
                <asp:BoundField DataField="TenTramXe" HeaderText="Tên trạm" SortExpression="HoTen" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" 
                    SortExpression="DiaChi" />
                <asp:TemplateField HeaderText="Hình ảnh">
                    <EditItemTemplate>
                        <div>
                            <asp:Label runat="server" id="sttImageUpload" text=" " style="margin-bottom:15px;clear:both;color:red"/>
                        </div>
                        <asp:FileUpload ID="fileUpload" runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <%--<asp:BoundField DataField="MaTruongTram" HeaderText="Trưởng trạm" 
                    SortExpression="MaTruongTram" Visible="false"/>--%>
                <asp:TemplateField HeaderText="Trưởng trạm">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlNhanViens" runat="server" DataSourceID="NhanViensDataSource" DataTextField="HoTen" DataValueField="MaNhanVien" ></asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField> 
                    <ItemTemplate> 
                        <asp:Button ID="UpdateLinkButton" runat="server" CommandName="Update" CausesValidation="false" 
                           Text="Cập nhật" /> 
                        <asp:Button ID="Button1" runat="server" CommandName="Cancel" CausesValidation="false" 
                           Text="Hủy bỏ" /> 
                    </ItemTemplate> 
                </asp:TemplateField> 
            </Fields> 
        </asp:DetailsView>

        <asp:LinqDataSource ID="DetailsDataSource" runat="server" EnableUpdate="true"
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" TableName="TRAM_XEs" >
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="NhanViensDataSource" runat="server"
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" TableName="NHAN_VIENs" 
                Select="new (MaNhanVien, HoTen)" >
        </asp:LinqDataSource>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="RightContent" runat="server">
    <webUC:user_Login ID="user_Login1" runat="server" />
</asp:Content>