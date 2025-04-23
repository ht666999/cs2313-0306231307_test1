<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1_13_2.aspx.cs" Inherits="cs2313huangtao_test1.test1_13_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True">
            <asp:ListItem>游泳</asp:ListItem>
            <asp:ListItem>下棋</asp:ListItem>
            <asp:ListItem>电竞</asp:ListItem>
            <asp:ListItem>吃饭</asp:ListItem>
        </asp:CheckBoxList>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
