<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3_13.aspx.cs" Inherits="cs2313huangtao_test1.test3.test3_13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Sno" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" SortExpression="Sno" />
                    <asp:BoundField DataField="Sname" HeaderText="Sname" SortExpression="Sname" />
                    <asp:BoundField DataField="Sage" HeaderText="Sage" SortExpression="Sage" />
                    <asp:BoundField DataField="Sgender" HeaderText="Sgender" SortExpression="Sgender" />
                    <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                    <asp:HyperLinkField DataNavigateUrlFields="Sno" DataNavigateUrlFormatString="test3_13xiugai.aspx?id={0}" Target="_blank" Text="修改" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="cs2313huangtao_test1.DataStudentDataContext" EnableUpdate="True" EntityTypeName="" TableName="Student">
        </asp:LinqDataSource>
    </form>
</body>
</html>
