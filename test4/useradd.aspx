<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="useradd.aspx.cs" Inherits="cs2313huangtao_test1.test4.useradd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
        <tr>
            <td>姓名：</td>
            <td>
                <asp:TextBox ID="TextBox1" CssClass="form-input" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">账号：</td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox2" CssClass="form-input" runat="server"></asp:TextBox>
            </td>
            <td style="height: 32px">
                <asp:Button ID="Button1" CssClass="form-input" runat="server" OnClick="Button1_Click1" Text="Button" />
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-input" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterLinks" runat="server">
</asp:Content>
