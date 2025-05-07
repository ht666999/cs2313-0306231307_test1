<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3_3.aspx.cs" Inherits="cs2313huangtao_test1.test3.test3_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sname" DataValueField="Sno" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="height: 23px" AutoPostBack="true">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student1_dataConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
