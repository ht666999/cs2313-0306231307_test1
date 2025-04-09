<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1_9.aspx.cs" Inherits="cs2313huangtao_test1.test1_9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            </asp:CheckBoxList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatColumns="2">
            <asp:ListItem>中国</asp:ListItem>
            <asp:ListItem>美国</asp:ListItem>
            <asp:ListItem>俄罗斯</asp:ListItem>
            <asp:ListItem>法国</asp:ListItem>
        </asp:RadioButtonList>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">点我链接到test1_6</asp:LinkButton>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="test1_1.2.3.4.5.aspx">点我链接到login.asp
        </asp:HyperLink>
        </br>
        <a href="test1_1.2.3.4.5.aspx">我是&lt;a>元素</a>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </form>
</body>
</html>
