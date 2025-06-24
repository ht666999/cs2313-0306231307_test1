<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="cs2313huangtao_test1.test4.login" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="PageTitle">
   使用您的BananaID 登陆
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
     <div class="input-group">
     <label class="input-label">Banana ID</label>
     <asp:TextBox ID="txtUsername" runat="server" CssClass="form-input" placeholder="手机号" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="请输入正确的ID!" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
         <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
 </div>
 
 <div class="input-group">
     <label class="input-label" id="11">密码</label>
     <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="输入密码"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="密码不能为空！"></asp:RequiredFieldValidator>
 </div>
 
 <asp:Button ID="btnLogin" runat="server" Text="登录" CssClass="primary-button" OnClick="BtnLogin_Click"/>
 
 <a href="useradd.aspx?flag=1" class="action-link">创建Banana ID</a>
</asp:Content>


