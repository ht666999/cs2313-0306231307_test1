<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2_7_sessionLogin.aspx.cs" Inherits="cs2313huangtao_test1.test2.test_7_sessionLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            密码：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登陆" />
        </div>
    </form>
</body>
</html>
