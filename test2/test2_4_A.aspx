<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2_4_A.aspx.cs" Inherits="cs2313huangtao_test1.test2.test2_4_B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Server.Transfer" /><br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Server.Execute" /><br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Response.Redirect" /><br />
            <asp:TextBox ID="TextBox1" runat="server">实验2_4</asp:TextBox>
        </div>
    </form>
</body>
</html>
