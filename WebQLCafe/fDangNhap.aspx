<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fDangNhap.aspx.cs" Inherits="WebQLCafe.fDangNhap" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Đăng nhập</title>
	<link rel="stylesheet" type="text/css" href="style.css">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 146px;
        }
    </style>
</head>
<body>
	<div class="auto-style1">
	<asp:Label ID="lblMessage" runat="server" Font-Size="X-Large" CssClass="box" Font-Bold="True" Font-Overline="False" Font-Underline="False" ForeColor="Red"></asp:Label>
	    <br />
	    <br />
	<div class="login-box">
		<h2>Login</h2>
		<form id="form1" runat="server">
			<div class="user-box">
				<label for="username">Username:<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </label>
&nbsp;
			</div>
			<div class="user-box">
				<label for="password" class="auto-style2">Password:<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </label>
				&nbsp;
			</div>
			&nbsp;</form>
	</div>
    </div>
</body>
</html>