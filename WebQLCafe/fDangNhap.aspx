<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fDangNhap.aspx.cs" Inherits="WebQLCafe.fDangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QUẢN LÝ CÀ PHÊ</title>
    <style type="text/css">
        .auto-style1 {
            height: 82px;
            text-align:center;
            font:bold;
            background-color: #CC9900;
            color: #663300;
            font-size: 35px;
            font-family:Arial
        }
        .auto-style2 {
            width: 300px;
            background-color: #CC9966;
        }
        .auto-style4 {
            width: 215px;
            background-color: #CC9966;
        }
        .auto-style6 {
            width: 323%;
        }
        .auto-style7 {
            width: 280px;
            text-align: center;
            color: #663300;
            font-size: 25px;
            font-family: Arial;
        }
        .rblQuyen{
            width: 283px;
            font:bold;
            color: #663300;
            font-size: 25px;
            font-family:Arial
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" colspan="2">QUẢN LÝ CÀ PHÊ</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Image ID="Image1" runat="server" />
                    </td>
                    <td class="auto-style2">
                        <table class="auto-style6">
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Mã nhân viên</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="566px" Height="30px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Mật khẩu</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Width="562px" Height="30px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="rblQuyen">
                                    <asp:RadioButtonList ID="rblQuyen" runat="server">
                                        <asp:ListItem Text="QuanLy">Quản lý</asp:ListItem>
                                        <asp:ListItem Text="QuanLySP">Quản lý sản phẩm</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td>
                                    <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" Width="212px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
