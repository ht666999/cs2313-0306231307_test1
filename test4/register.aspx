<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="cs2313huangtao_test1.test4.test4_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Apple ID - 登录</title>
    <style type="text/css">
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            background-color: #f5f5f7;
            margin: 0;
            padding: 0;
            color: #1d1d1f;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        
        .login-container {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 380px;
            padding: 40px;
            text-align: center;
        }
        
        .apple-logo {
            width: 50px;
            height: 50px;
            margin-bottom: 20px;
        }
        
        h1 {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 30px;
        }
        
        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }
        
        label {
            display: block;
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 8px;
            color: #86868b;
        }
        
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #d2d2d7;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }
        
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #0071e3;
            outline: none;
        }
        
        .login-button {
            width: 100%;
            background-color: #0071e3;
            color: white;
            border: none;
            border-radius: 8px;
            padding: 14px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 10px;
        }
        
        .login-button:hover {
            background-color: #0077ed;
        }
        
        .forgot-password {
            display: block;
            margin-top: 20px;
            color: #0071e3;
            text-decoration: none;
            font-size: 14px;
        }
        
        .divider {
            margin: 25px 0;
            border-bottom: 1px solid #d2d2d7;
            position: relative;
        }
        
        .divider-text {
            position: absolute;
            top: -8px;
            left: 50%;
            transform: translateX(-50%);
            background-color: white;
            padding: 0 10px;
            color: #86868b;
            font-size: 12px;
        }
        
        .create-account {
            color: #0071e3;
            text-decoration: none;
            font-size: 16px;
            font-weight: 500;
        }
        
        .footer {
            margin-top: 30px;
            font-size: 12px;
            color: #86868b;
        }
        
        .footer a {
            color: #515154;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <svg class="apple-logo" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path d="M18.71 19.5c-.83 1.24-1.71 2.45-3.05 2.47-1.34.03-1.77-.79-3.29-.79-1.53 0-2 .77-3.27.82-1.31.05-2.3-1.32-3.14-2.53C4.25 17 2.94 12.45 4.7 9.39c.87-1.52 2.43-2.48 4.12-2.51 1.28-.02 2.5.87 3.29.87.78 0 2.26-1.07 3.81-.91.65.03 2.47.26 3.64 1.98-.09.06-2.17 1.28-2.15 3.81.03 3.02 2.65 4.03 2.68 4.04-.03.07-.42 1.44-1.38 2.83M13 3.5c.73-.83 1.94-1.46 2.94-1.5.13 1.17-.34 2.35-1.04 3.19-.69.85-1.83 1.51-2.95 1.42-.15-1.15.41-2.35 1.05-3.11z" fill="#000"/>
            </svg>
            
            <h1>使用您的 Apple ID 登录</h1>
            
            <div class="input-group">
                <label for="email">Apple ID</label>
                <asp:TextBox ID="email" runat="server" placeholder="name@example.com"></asp:TextBox>
            </div>
            
            <div class="input-group">
                <label for="password">密码</label>
                <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="输入密码"></asp:TextBox>
            </div>
            
            <asp:Button ID="loginButton" runat="server" Text="登录" CssClass="login-button" />
            
            <a href="#" class="forgot-password">忘记了 Apple ID 或密码？</a>
            
            <div class="divider">
                <span class="divider-text">或</span>
            </div>
            
            <a href="#" class="create-account">创建 Apple ID</a>
            
            <div class="footer">
                <p>需要帮助？<a href="#">访问 Apple ID 支持</a></p>
            </div>
        </div>
    </form>
</body>
</html>