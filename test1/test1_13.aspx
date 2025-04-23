<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1_13.aspx.cs" Inherits="cs2313huangtao_test1.test1_13" %>

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
        <asp:ImageMap ID="ImageMap1" runat="server" Height="400px" ImageUrl="~/image/花蛋.png" Width="900px" OnClick="ImageMap1_Click">
            <asp:RectangleHotSpot PostBackValue="鲜花" Bottom="500" HotSpotMode="PostBack" Left="100" Right="500" Top="50" />
            <asp:RectangleHotSpot PostBackValue="鸡蛋" Bottom="500" HotSpotMode="PostBack" Left="600" Right="900" Top="50" />
        </asp:ImageMap>
        <br>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
