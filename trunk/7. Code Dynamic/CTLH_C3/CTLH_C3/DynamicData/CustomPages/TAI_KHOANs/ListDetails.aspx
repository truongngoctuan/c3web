﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeBehind="ListDetails.aspx.cs" Inherits="CTLH_C3.TAI_KHOANs.ListDetails" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>
<%@ Register src="~/DynamicData/Content/FilterUserControl.ascx" tagname="DynamicFilter" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <h2><%= GridDataSource.GetTable().DisplayName %></h2>

    <asp:ScriptManagerProxy runat="server" ID="ScriptManagerProxy1" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Danh sách lỗi" />
            <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1" Display="None" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" />

            <asp:FilterRepeater ID="FilterRepeater" runat="server">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("DisplayName") %>' AssociatedControlID="DynamicFilter$DropDownList1" />
                    <asp:DynamicFilter runat="server" ID="DynamicFilter" OnSelectedIndexChanged="OnFilterSelectedIndexChanged" />
                </ItemTemplate>
                <FooterTemplate><br /><br /></FooterTemplate>
            </asp:FilterRepeater>

            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource"
                AutoGenerateSelectButton="True" AutoGenerateEditButton="False" AutoGenerateDeleteButton="False"
                AllowPaging="True" AllowSorting="True" OnDataBound="OnGridViewDataBound"
                OnRowEditing="OnGridViewRowEditing" OnSelectedIndexChanging="OnGridViewSelectedIndexChanging"
                OnRowDeleted="OnGridViewRowDeleted" OnRowUpdated="OnGridViewRowUpdated"
                OnRowUpdating="OnGridViewRowUpdating"
                OnRowCreated="OnGridViewRowCreated" CssClass="gridview"
                
                AutoGenerateColumns="false">
                
                <Columns>
                    <asp:DynamicField DataField="Username"></asp:DynamicField>
                    <asp:DynamicField DataField="Password"></asp:DynamicField>
                    <asp:DynamicField DataField="Email"></asp:DynamicField>
                    <asp:DynamicField DataField="LOAI_TAI_KHOAN"></asp:DynamicField>
                    <asp:DynamicField DataField="NHAN_VIEN"></asp:DynamicField>
                </Columns>
                
                <PagerStyle CssClass="footer" />        
                <SelectedRowStyle CssClass="selected" />
                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    There are currently no items in this table.
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:LinqDataSource ID="GridDataSource" runat="server" EnableDelete="true" EnableUpdate="true">
                <WhereParameters>
                    <asp:DynamicControlParameter ControlID="FilterRepeater" />
                </WhereParameters>
            </asp:LinqDataSource>

            <asp:Panel ID="DetailsPanel" runat="server">
              <br /><br />

              <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="DetailsDataSource"
                  AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" AutoGenerateInsertButton="true"
                  OnModeChanging="OnDetailsViewModeChanging" OnPreRender="OnDetailsViewPreRender"
                  OnItemDeleted="OnDetailsViewItemDeleted" OnItemUpdated="OnDetailsViewItemUpdated" OnItemInserted="OnDetailsViewItemInserted"
                  OnItemUpdating="OnDetailsViewItemUpdating"
                  OnItemInserting="OnDetailsViewItemInserting"
                  AutoGenerateRows="false">
                  <Fields>
                    <asp:TemplateField HeaderText="Tên đăng nhập">
                        <ItemTemplate>
                            <asp:Literal ID="userField" runat="server" Text='<%#Bind("Username")%>'></asp:Literal>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Literal ID="userFieldEdit" runat="server" Text='<%#Bind("Username")%>'></asp:Literal>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="userFieldInsert" runat="server" Text='<%#Bind("Username")%>'></asp:TextBox>
                        </InsertItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:DynamicField DataField="Username"></asp:DynamicField>--%>
                    <asp:DynamicField DataField="Password"></asp:DynamicField>
                    <%--<asp:DynamicField DataField="Salt" Visible="false"></asp:DynamicField>--%>
                    <asp:DynamicField DataField="Email"></asp:DynamicField>                    
                    <asp:DynamicField DataField="LOAI_TAI_KHOAN"></asp:DynamicField>
                    <asp:DynamicField DataField="NHAN_VIEN"></asp:DynamicField> 
                    <asp:DynamicField DataField="NgayKichHoat"></asp:DynamicField>
                  </Fields>
              </asp:DetailsView>
              
              <asp:LinqDataSource ID="DetailsDataSource" runat="server" EnableDelete="true" EnableInsert="true" EnableUpdate="true">
                  <WhereParameters>
                      <asp:DynamicControlParameter ControlID="GridView1" />
                  </WhereParameters>
              </asp:LinqDataSource>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
