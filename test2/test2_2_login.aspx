<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2_2_login.aspx.cs" Inherits="cs2313huangtao_test1.test2.test2_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</div>
<asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2">
    <asp:ListItem>学生</asp:ListItem>
    <asp:ListItem>管理员</asp:ListItem>
</asp:RadioButtonList>
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登陆" />
    </form>
</body>
</html>
