<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3_5.6.aspx.cs" Inherits="cs2313huangtao_test1.test3.test3_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            班级：<asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 27px" Text="查询" />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Sno" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" SortExpression="Sno" />
                <asp:BoundField DataField="Sname" HeaderText="Sname" SortExpression="Sname" />
                <asp:BoundField DataField="Sage" HeaderText="Sage" SortExpression="Sage" />
                <asp:BoundField DataField="Sgender" HeaderText="Sgender" SortExpression="Sgender" />
                <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="cs2313huangtao_test1.DataStudentDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Student">
        </asp:LinqDataSource>
        <br />
        学生id：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        以下为要更新的数据：<br />
        姓名：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        性别：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        年龄：<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <br />
        学院：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="修改" />
        <br />
        id：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        姓名：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        性别：<asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
        <br />
        年龄：<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <br />
        学院：<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="新增" />
        <br />
        id：<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="删除" />
    </form>
</body>
</html>
