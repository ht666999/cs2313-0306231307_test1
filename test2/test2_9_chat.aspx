<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2_9_chat.aspx.cs" Inherits="cs2313huangtao_test1.test2.test2_9_chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="聊天内容："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="312px" TextMode="MultiLine" Width="495px"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        </div>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发言" />

        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
        </asp:Timer>
    </form>
</body>
</html>
