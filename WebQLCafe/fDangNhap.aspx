<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fDangNhap.aspx.cs" Inherits="WebQLCafe.fDangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QUẢN LÝ CÀ PHÊ</title>
    <link href="Models/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Models/fonts/fontawesome/css/all.css" rel="stylesheet" />
    <link href="Models/css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="Models/css/ui.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <section class="section-conten padding-y" style="min-height:84vh">

	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body">
      <h4 class="card-title mb-4">Sign in</h4>
          <form id="form1" runat="server">
          <div class="form-group">
              <input id="txtUsername" class="form-control" placeholder="Username" type="text" />
          </div> 
          <div class="form-group">
              <input id="txtPassword" class="form-control" placeholder="Password" type="password" />
          </div> 
          
          <div class="form-group">
          	<a href="#" class="float-right">Forgot password?</a> 
            <label class="float-left custom-control custom-checkbox"> <input type="checkbox" class="custom-control-input" checked=""> <div class="custom-control-label"> Remember </div> </label>
          </div>
          <div class="form-group">
              <asp:Button ID="Button1" class="btn btn-primary btn-block" runat="server" Text="Button" OnClick="Button1_Click" />
          </div> 
          </form>
      </div> 
    </div> 
</section>
</body>
</html>
