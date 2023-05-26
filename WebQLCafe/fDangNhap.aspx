<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fDangNhap.aspx.cs" Inherits="WebQLCafe.fDangNhap" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Đăng nhập</title>
	<link rel="stylesheet" type="text/css" href="style.css">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 992px;
        }
        .auto-style4 {
       551px;
        }
        .auto-style5 {
            width: 551px;
            height: 225px;
            text-align: center;
        }
        .auto-style6 {
            height: 225px;
        }
        .auto-style7 {
            height: 225px;
            text-align: center;
            font-size: 30pt;
            width: 713px;
        }
        .auto-style8 {
            width: 713px;
        }
        .auto-style9 {
            width: 551      width: 551px;
            height: 606px;
        }
        .auto-style10 {
            width: 713px;
            height: 606px;
        }
        .auto-style11 {
            height: 606px;
        }
        .auto-style12 {
            width: 238px;
            font-size: 16pt;
            text-align: center;
        }
        .auto-style13 {
            width: 100%;
            height: 585px;
        }
        .auto-style14 {
            text-align: center;
            font-size: 24pt;
        }
        .auto-style15 {
            text-align: center;
            height: 40px;
        }
        .auto-style16 {
            width: 238px;
            height: 93px;
            font-size: 20pt;
            text-align: center;
        }
        .auto-style17 {
            height: 93px;
        }
        .auto-style18 {
            width: 238px;
            height: 40px;
        }
        .auto-style19 {
            width: 238px;
            height: 100px;
            font-size: 20pt;
            text-align: center;
        }
        .auto-style20 {
            height: 100px;
        }
        .auto-style22 {
            text-align: center;
        }
        .newStyle1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }


        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle4 {
            background-color: #3399FF;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: 700;
            font-size: 16pt;
        }


    </style>
</head>
<body style="height: 1010px">
    <form id="form1" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style5" style="background-color: #CD853F">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Models/images/anhlogo/3.png" Width="200px" />
                </td>
                <td class="auto-style7" style="background-color: #CD853F"><strong style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">QUẢN LÝ CÀ PHÊ</strong></td>
                <td class="auto-style6" style="background-color: #CD853F"></td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #FFCC99"></td>
                <td class="auto-style10" style="background-color: #FFCC99">
                    <table class="auto-style13">
                        <tr>
                            <td class="auto-style14" colspan="2"><strong style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">ĐĂNG NHẬP HỆ THỐNG</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style19"><strong style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Mã Nhân Viên</strong></td>
                            <td class="auto-style20">
                                <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="420px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16"><strong style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Mật Khẩu</strong></td>
                            <td class="auto-style17">
                                <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="420px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18"></td>
                            <td class="auto-style15"><strong>
                                <asp:CheckBox ID="ckbHienMK" runat="server" CssClass="newStyle1" Text="Hiển thị mật khẩu" />
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style12"><strong style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Đăng nhập với quyền</strong></td>
                            <td class="auto-style22"><strong>
                                <asp:CheckBox ID="ckbAdmin" runat="server" CssClass="newStyle2" Text="Quản lý" />
                                </strong></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="auto-style22"><strong>
                                <asp:Button ID="btnDangNhap" runat="server" CssClass="newStyle4" Text="Đăng Nhập" OnClick="btnDangNhap_Click" />
                                </strong></td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style11" style="background-color: #FFCC99"></td>
            </tr>
            <tr>
                <td class="auto-style4" style="background-color: #FFCC99">&nbsp;</td>
                <td class="auto-style8" style="background-color: #FFCC99">&nbsp;</td>
                <td style="background-color: #FFCC99">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>