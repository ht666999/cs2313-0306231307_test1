<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3_10.aspx.cs" Inherits="cs2313huangtao_test1.test3.test3_10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource1" DataTextField="Cname" DataValueField="Cno">
            </asp:DropDownList>
            <br />
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource2" DataTextField="Sno" DataValueField="Sno"></asp:ListBox>
        </div>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="cs2313huangtao_test1.DataStudentDataContext" EntityTypeName="" Select="new (Cname, Cno)" TableName="Course">
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="cs2313huangtao_test1.DataStudentDataContext" EntityTypeName="" TableName="SC" Where="Cno == @Cno">
            <WhereParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Cno" PropertyName="SelectedValue" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
    </form>
</body>
</html>
