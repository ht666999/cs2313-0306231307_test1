<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1_6.aspx.cs" Inherits="cs2313huangtao_test1.test1_6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" SelectionMode="Multiple"></asp:ListBox>
        </div>
        <asp:Label ID="Label1" runat="server" Text="添加水果："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="删除选中项" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="显示选中项" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="输出所有项" />
        <p>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
        </asp:DropDownList>
        年<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true">
        </asp:DropDownList>
        月<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="false">
        </asp:DropDownList>
        日<br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem>粗体</asp:ListItem>
            <asp:ListItem>斜体</asp:ListItem>
            <asp:ListItem>红色</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Label ID="Label3" runat="server" Text="测试"></asp:Label>
    </form>
</body>
</html>
