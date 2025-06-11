<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="cs2313huangtao_test1.test4.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
        <tr>
            <td>昵称：</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>账号：</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">订单：</td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="退出登录" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterLinks" runat="server">
</asp:Content>
