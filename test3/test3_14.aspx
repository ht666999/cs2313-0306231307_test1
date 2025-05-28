<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3_14.aspx.cs" Inherits="cs2313huangtao_test1.test3.test3_14" %>

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
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" SortExpression="Sno" />
                    <asp:BoundField DataField="Sname" HeaderText="Sname" SortExpression="Sname" />
                    <asp:BoundField DataField="Sage" HeaderText="Sage" SortExpression="Sage" />
                    <asp:TemplateField HeaderText="Sgender" SortExpression="Sgender">
                        <EditItemTemplate>
                            <asp:ListBox ID="ListBox1" runat="server">
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:ListBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Sgender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="cs2313huangtao_test1.DataStudentDataContext" EnableUpdate="True" EntityTypeName="" TableName="Student">
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
