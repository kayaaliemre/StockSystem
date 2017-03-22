<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StockSystem.Login" %>

<!DOCTYPE html>
 <link href="css/login.css" rel="stylesheet">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body>
    <form id="loginform" runat="server">
<div class="login">
    <h1>Login</h1>
    	<input type="text" value="" name="usernameTextBox" runat="server" id="username_input" autofocus placeholder="username"/><br/>
        <input type="password" value="" name="passwordTextBox" runat="server" id="password_input" placeholder="password"/><br/>
        <asp:Button ID="buttonLogin" runat="server" Text="Login" class="btn btn-primary btn-block btn-large" OnClick="buttonLogin_Click" />
 
    <br>
</div>
    </form>
</body>
</html>
