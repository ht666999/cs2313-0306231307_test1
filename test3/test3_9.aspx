<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3_9.aspx.cs" Inherits="cs2313huangtao_test1.test3.test3_9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            学号：</div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="cs2313huangtao_test1.DataStudentDataContext" EntityTypeName="" TableName="Student" Where="Sno == @Sno">
            <WhereParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Sno" PropertyName="Text" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Sno" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" SortExpression="Sno" />
                <asp:BoundField DataField="Sname" HeaderText="Sname" SortExpression="Sname" />
                <asp:BoundField DataField="Sage" HeaderText="Sage" SortExpression="Sage" />
                <asp:BoundField DataField="Sgender" HeaderText="Sgender" SortExpression="Sgender" />
                <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
