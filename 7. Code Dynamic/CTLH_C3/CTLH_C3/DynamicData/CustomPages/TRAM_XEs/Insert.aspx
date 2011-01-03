<%@ Page Language="C#" MasterPageFile="~/DieuHanhCongTy/MasterPage.Master" CodeBehind="Insert.aspx.cs" Inherits="CTLH_C3.TRAM_XEs.Insert" %>
<%@ Register Src="~/Guest/user_CustomLogin.ascx" TagName="user_Login" TagPrefix="webUC" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/dieuhanhcongtystyle.css" />
    <title>Thêm Mới Một Trạm</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">    
    <h1>Thêm Mới Một Trạm</h1>

    
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="DetailsDataSource" DefaultMode="Insert"
                AutoGenerateInsertButton="false" OnItemCommand="DetailsView1_ItemCommand" OnItemInserted="DetailsView1_ItemInserted"
                CssClass="detailstable" FieldHeaderStyle-CssClass="bold"
                AutoGenerateRows="false" DataKeyNames="MaTramXe" 
                oniteminserting="DetailsView1_ItemInserting">
                <Fields>
                    <asp:BoundField DataField="TenTramXe" HeaderText="Tên trạm" SortExpression="HoTen" />
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
                    <asp:TemplateField HeaderText="Trưởng trạm">
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlNhanViens" runat="server" DataSourceID="NhanViensDataSource" DataTextField="HoTen" DataValueField="MaNhanVien" ></asp:DropDownList>
                        </InsertItemTemplate>
                    </asp:TemplateField>      
                    <asp:TemplateField>   
                        <ItemTemplate> 
                                <asp:Button ID="InsertLinkButton" runat="server" CommandName="Insert" Text="Thêm mới" /> 
                                <asp:Button ID="Button1" runat="server" CommandName="Cancel" CausesValidation="false" Text="Hủy bỏ" /> 
                        </ItemTemplate> 
                    </asp:TemplateField> 
                </Fields>
            </asp:DetailsView>

            <asp:LinqDataSource ID="DetailsDataSource" runat="server"
                ContextTypeName="CTLH_C3.TRAVEL_WEBDataContext" TableName="TRAM_XEs" 
                EnableInsert="True" >
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