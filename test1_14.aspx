<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1_14.aspx.cs" Inherits="cs2313huangtao_test1.test1_14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">用户名不能为空！</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="姓名："></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[\u4e00-\u9fa5]{2,4}$">请输入2-4个汉字</asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="国籍：  "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>选择国籍</asp:ListItem>
                <asp:ListItem>中国</asp:ListItem>
                <asp:ListItem>澳大利亚</asp:ListItem>
                <asp:ListItem>新西兰</asp:ListItem>
                <asp:ListItem>新加坡</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" InitialValue="选择国籍">请选择国籍</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="密码："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="确认密码："></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="CompareValidator">两次密码不一致</asp:CompareValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Text="年龄："></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" MaximumValue="60" MinimumValue="18" Type="Integer">年龄必须在18-60之间</asp:RangeValidator>
            <br />
            <asp:Label ID="Label7" runat="server" Text="出生日期："></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Date">生日输入不对</asp:CompareValidator>
            <br />
            <asp:Label ID="Label8" runat="server" Text="身份证号码："></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d{17}[\d|X]|\d{15}">身份证号码格式不对</asp:RegularExpressionValidator>
            <br />
            个人简介：<br />
            <asp:TextBox ID="TextBox8" runat="server" Height="164px" TextMode="MultiLine" Width="378px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="RegularExpressionValidator" ValidationExpression=".{10,}">不少于十个字！</asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="提交" />
            <asp:Button ID="Button2" runat="server" Text="取消" />
        </div>
    </form>
</body>
</html>
