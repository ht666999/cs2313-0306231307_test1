<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="cs2313huangtao_test1.test4.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    <asp:Label ID="Label1" runat="server" Text="管理" Width="1080px"></asp:Label>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="Button1" runat="server" CssClass="primary-button" Text="管理员管理" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" CssClass="primary-button" Text="用户管理" OnClick="Button2_Click" />
    <asp:Button ID="Button4" runat="server" CssClass="primary-button" Text="商品管理" OnClick="Button4_Click" />
        <br>
    <br />
    <asp:GridView ID="GVuser" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserId" DataSourceID="userdata" ForeColor="#333333" GridLines="None" style="margin:0 auto;width:auto">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <asp:Button ID="userbtn" runat="server" OnClick="userbtn_Click" Text="添加用户" />
    <asp:GridView ID="GVadmin" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserId" DataSourceID="admins" ForeColor="#333333" GridLines="None" style="margin:0 auto;width:auto">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="添加管理员" />
    <br />
    <asp:GridView ID="GVcategory" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CategoryID" DataSourceID="category" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" style="margin:0 auto;width:auto">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:GridView ID="GVproduct" runat="server" CellPadding="4" DataSourceID="product" ForeColor="#333333" GridLines="None" style="margin:0 auto;width:auto">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:Button ID="Button6" runat="server" Text="添加商品" />
    <asp:LinqDataSource ID="admins" runat="server" ContextTypeName="cs2313huangtao_test1.test4.bananadataDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Admins">
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="userdata" runat="server" ContextTypeName="cs2313huangtao_test1.test4.bananadataDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Users">
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="product" runat="server" ContextTypeName="cs2313huangtao_test1.test4.bananadataDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Products">
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="category" runat="server" ContextTypeName="cs2313huangtao_test1.test4.bananadataDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Categories">
    </asp:LinqDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterLinks" runat="server">
    
</asp:Content>
