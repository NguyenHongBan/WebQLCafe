<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fDangNhap.aspx.cs" Inherits="WebQLCafe.fDangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QUẢN LÝ CÀ PHÊ</title>
    <link href="Models/images/favicon.ico" rel="shortcut icon" type="image/x-icon">

    <!-- jQuery -->
    <script src="Models/js/jquery-2.0.0.min.js" type="text/javascript"></script>

    <!-- Bootstrap4 files-->
    <script src="Models/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <link href="Models/css/bootstrap.css" rel="stylesheet" type="text/css"/>

    <!-- Font awesome 5 -->
    <link href="Models/fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

    <!-- custom style -->
    <link href="Models/css/ui.css" rel="stylesheet" type="text/css"/>
    <link href="Models/css/responsive.css" rel="stylesheet" type="text/css" />

    <!-- custom javascript -->
    <script src="Models/js/script.js" type="text/javascript"></script>
</head>
<body>
        <header class="section-header">
        <section class="header-main border-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-2 col-lg-3 col-md-12">
                        <a href="fDangNhap.aspx" class="brand-wrap">
                            <img class="logo" src="Models/images/logo.png">
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <nav class="navbar navbar-main navbar-expand-lg border-bottom">
            <div class="container">

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="main_nav">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="fDangNhap.aspx">LOGIN</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="fNhanVien.aspx">NHÂN VIÊN</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="fLoaiSP.aspx">LOẠI SẢN PHẨM</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="fSanPham.aspx">SẢN PHẨM</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="fDoanhThu.aspx">DOANH THU</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

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

    <footer class="section-footer bg-secondary">
        <div class="container">
            <section class="footer-top padding-y-lg text-white">
                <div class="row">
                    <aside class="col-md col-6">
                        <h6 class="title">Brands</h6>
                        <ul class="list-unstyled">
                            <li> <a href="#">Adidas</a></li>
                            <li> <a href="#">Puma</a></li>
                            <li> <a href="#">Reebok</a></li>
                            <li> <a href="#">Nike</a></li>
                        </ul>
                    </aside>
                    <aside class="col-md col-6">
                        <h6 class="title">Company</h6>
                        <ul class="list-unstyled">
                            <li> <a href="#">About us</a></li>
                            <li> <a href="#">Career</a></li>
                            <li> <a href="#">Find a store</a></li>
                            <li> <a href="#">Rules and terms</a></li>
                            <li> <a href="#">Sitemap</a></li>
                        </ul>
                    </aside>
                    <aside class="col-md col-6">
                        <h6 class="title">Help</h6>
                        <ul class="list-unstyled">
                            <li> <a href="#">Contact us</a></li>
                            <li> <a href="#">Money refund</a></li>
                            <li> <a href="#">Order status</a></li>
                            <li> <a href="#">Shipping info</a></li>
                            <li> <a href="#">Open dispute</a></li>
                        </ul>
                    </aside>
                    <aside class="col-md col-6">
                        <h6 class="title">Account</h6>
                        <ul class="list-unstyled">
                            <li> <a href="#"> User Login </a></li>
                            <li> <a href="#"> User register </a></li>
                            <li> <a href="#"> Account Setting </a></li>
                            <li> <a href="#"> My Orders </a></li>
                        </ul>
                    </aside>
                    <aside class="col-md">
                        <h6 class="title">Social</h6>
                        <ul class="list-unstyled">
                            <li><a href="#"> <i class="fab fa-facebook"></i> Facebook </a></li>
                            <li><a href="#"> <i class="fab fa-twitter"></i> Twitter </a></li>
                            <li><a href="#"> <i class="fab fa-instagram"></i> Instagram </a></li>
                            <li><a href="#"> <i class="fab fa-youtube"></i> Youtube </a></li>
                        </ul>
                    </aside>
                </div> 
            </section>	

            <section class="footer-bottom text-center">

                <p class="text-white">Privacy Policy - Terms of Use - User Information Legal Enquiry Guide</p>
                <p class="text-muted"> &copy 2019 Company name, All rights reserved </p>
                <br>
            </section>
        </div>
    </footer>
</body>
</html>
