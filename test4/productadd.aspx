<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="productadd.aspx.cs" Inherits="cs2313huangtao_test1.test4.productadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
        <tr>
            <td>商品名：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>图片地址：</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>内存：</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>存储：</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>颜色：</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>价格：</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>库存：</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>备注：</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-input"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>类别：</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <asp:Button ID="Button1" runat="server" Text="Button" CssClass="form-input" OnClick="Button1_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterLinks" runat="server">
</asp:Content>
