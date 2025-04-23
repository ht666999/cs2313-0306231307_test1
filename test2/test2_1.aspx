<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2_1.aspx.cs" Inherits="cs2313huangtao_test1.test2.test2_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
        服务器IP地址：<asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        客户端IP地址：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        浏览器类型：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        浏览器版本：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        是否支持Cookies:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </div>
</form>
</body>
</html>
