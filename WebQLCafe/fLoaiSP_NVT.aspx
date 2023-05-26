<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fLoaiSP_NVT.aspx.cs" Inherits="WebQLCafe.fLoaiSP_NVT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style1 {
            width: 100%;
            height: 1000px;
        }
        .auto-style2 {
            text-align: center;
            width: 336px;
            height: 215px;
        }
        .auto-style3 {
            width: 334px;
        }
        .auto-style4 {
            height: 210px;
        }
        .auto-style34 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style35 {
            text-align: right;
        }
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style36 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            text-decoration: none;
            color: #000000;
        }
        .auto-style37 {
            text-align: center;
        }
        .auto-style38 {
            width: 419px;
        }
        .auto-style39 {
            text-align: center;
            width: 418px;
        }
        .auto-style40 {
            width: 290px;
        }
        .auto-style41 {
            text-align: center;
            width: 290px;
        }
    </style>
</head>
<body style="height: 1010px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="141px" ImageUrl="~/Models/images/anhlogo/3.png" Width="133px" />
                </td>
                <td class="auto-style4">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style38">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style40">&nbsp;</td>
                            <td class="auto-style35"><strong>
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" />
                                    </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style39"><strong>
                                <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style36">Loại Sản Phẩm</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style37"><strong>
                                <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style36">Sản Phẩm</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style41"><strong>
                                <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style36">Hóa Đơn</asp:LinkButton>
                                </strong></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style38">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style40">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <table style="width:100%;">
                        <tr>
                            <td>ID Loại Sản Phẩm</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Tên Loại</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <table style="width:100%;">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
