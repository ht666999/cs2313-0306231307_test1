<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3_13xiugai.aspx.cs" Inherits="cs2313huangtao_test1.test3.test3_13xiugai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        学号：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        性别：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        学院：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" />
    </form>
</body>
</html>
