<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fDangNhap.aspx.cs" Inherits="WebQLCafe.fDangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1010px;
        }
        .auto-style2 {
            width: 100%;
            height: 1002px;
        }
        .newStyle1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style4 {
            text-align: center;
            width: 797px;
            height: 204px;
        }
        .auto-style7 {
            width: 100%;
            height: 372px;
        }
        .auto-style8 {
            height: 23px;
            text-align: center;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: xx-large;
        }
        .auto-style9 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: 40pt;
        }
        .auto-style10 {
            text-align: center;
        }
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style11 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            text-align: center;
            width: 306px;
        }
        .auto-style12 {
            width: 306px;
        }
        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style13 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            font-weight: bold;
            color: #FFFFFF;
        }
        .newStyle4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style15 {
            width: 530px;
            height: 444px;
        }
        .auto-style16 {
            width: 797px;
            height: 444px;
        }
        .auto-style17 {
            height: 444px;
        }
        .auto-style18 {
            width: 530px;
            height: 204px;
            text-align: center;
        }
        .auto-style19 {
            height: 204px;
        }
        .auto-style21 {
            height: 48px;
            text-align: center;
        }
        .newStyle5 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style22 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            color: #FF0000;
        }
        .newStyle6 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style23 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style18" style="background-color: #CB853F">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="210px" ImageUrl="~/Models/images/anhlogo/3.png" Width="200px" />
                    </td>
                    <td class="auto-style4" style="background-color: #CB853F"><span class="auto-style9"><strong>QUẢN LÝ CÀ PHÊ</strong></span>&nbsp;</td>
                    <td class="auto-style19" style="background-color: #CB853F"></td>
                </tr>
                <tr>
                    <td class="auto-style15" style="background-color: #FFCC99"></td>
                    <td class="auto-style16" style="background-color: #FFCC99">
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style8" colspan="2"><strong>ĐĂNG NHẬP HỆ THỐNG</strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style11"><strong>Mã nhân viên</strong></td>
                                <td><strong>
                                    <asp:TextBox ID="txtMaNV" runat="server" CssClass="auto-style23" Height="35px" Width="450px"></asp:TextBox>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style11"><strong>Mật khẩu</strong></td>
                                <td><strong>
                                    <asp:TextBox ID="txtMK" runat="server" CssClass="auto-style23" Height="35px" TextMode="Password" Width="450px"></asp:TextBox>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style21" colspan="2"><strong>
                                    <asp:Label ID="lblThongbao" runat="server" CssClass="auto-style22" Text="Thông báo"></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style10" colspan="2"><strong>
                                    <asp:Button ID="btnDN" runat="server" BackColor="#3366FF" CssClass="auto-style13" Height="50px" OnClick="btnDN_Click" Text="Đăng nhập" Width="200px" />
                                    </strong></td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style17" style="background-color: #FFCC99"></td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
