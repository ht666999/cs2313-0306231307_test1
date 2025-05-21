<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3_11.aspx.cs" Inherits="cs2313huangtao_test1.test3.test3_11" %>

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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Sno" DataSourceID="LinqDataSource1" PageSize="5">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" SortExpression="Sno" />
                <asp:BoundField DataField="Sname" HeaderText="Sname" SortExpression="Sname" />
                <asp:BoundField DataField="Sage" HeaderText="Sage" SortExpression="Sage" />
                <asp:BoundField DataField="Sgender" HeaderText="Sgender" SortExpression="Sgender" />
                <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                <asp:ImageField DataImageUrlField="College" DataImageUrlFormatString="~/test1/image/{0}.jpg">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="cs2313huangtao_test1.DataStudentDataContext" EntityTypeName="" TableName="Student">
        </asp:LinqDataSource>
        <asp:Image ID="Image1" runat="server" />
    </form>
</body>
</html>
