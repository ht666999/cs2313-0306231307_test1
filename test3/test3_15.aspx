<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3_15.aspx.cs" Inherits="cs2313huangtao_test1.test3.test3_15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cno" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Cno" HeaderText="Cno" ReadOnly="True" SortExpression="Cno" />
                    <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                    <asp:BoundField DataField="Ccredit" HeaderText="Ccredit" SortExpression="Ccredit" />
                    <asp:BoundField DataField="Cpno" HeaderText="Cpno" SortExpression="Cpno" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="cs2313huangtao_test1.DataStudentDataContext" EntityTypeName="" TableName="Course">
            </asp:LinqDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="SCID" DataSourceID="LinqDataSource2">
                <Columns>
                    <asp:BoundField DataField="Sno" HeaderText="Sno" SortExpression="Sno" />
                    <asp:BoundField DataField="Cno" HeaderText="Cno" SortExpression="Cno" />
                    <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                    <asp:BoundField DataField="SCID" HeaderText="SCID" InsertVisible="False" ReadOnly="True" SortExpression="SCID" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="cs2313huangtao_test1.DataStudentDataContext" EntityTypeName="" TableName="SC" Where="Cno == @Cno">
                <WhereParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Cno" PropertyName="SelectedValue" Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
