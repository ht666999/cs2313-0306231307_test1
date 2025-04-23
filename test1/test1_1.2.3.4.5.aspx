<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1_1.2.3.4.5.aspx.cs" Inherits="cs2313huangtao_test1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            操作数1:<input type="text" id ="input1" runat="server"/><br />
            操作数2:<input type="text" id="input2" runat="server" /><br />
            <button type="button" id="btn1" runat="server" onserverclick="btclick">+</button>
            &nbsp;&nbsp;
            <asp:Button ID="btn2" runat="server" OnClick="btn2_Click" Text="-" />
&nbsp;&nbsp;
            <asp:Button ID="btn3" runat="server" OnClick="btn3_Click" Text="*" />
&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="/" />
            <br />
            结果：&nbsp;
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            <br />
            <asp:Calendar ID="cld1" runat="server" OnSelectionChanged="cld1_SelectionChanged" ></asp:Calendar>
            <asp:Label ID="lbl1" runat="server" Text="设计时"></asp:Label>           
            <br />
            成绩：<br />
            <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn5" runat="server" OnClick="btn5_Click" Text="计算" />
            <br />
            等级：<br />
            <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
            <br />
            <asp:DropDownList ID="ddl1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>
        </div>
        <asp:Image ID="Img1" runat="server" />
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
        </p>
    </form>
</body>
</html>
