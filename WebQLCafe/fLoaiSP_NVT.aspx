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
            height: 998px;
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
        .auto-style42 {
            width: 444px;
        }
        .auto-style43 {
            width: 445px;
            text-align: center;
        }
        .auto-style44 {
            width: 444px;
            text-align: center;
            height: 40px;
        }
        .auto-style45 {
            height: 41px;
        }
        .auto-style8 {
            font-size: 14pt;
            font-weight: bold;
        }
        .auto-style46 {
            text-align: center;
            height: 81px;
        }
        .auto-style47 {
            text-align: center;
            height: 81px;
        }
        .auto-style48 {
            text-align: center;
            height: 81px;
        }
        .auto-style49 {
            width: 334px;
            height: 194px;
        }
        .auto-style50 {
            height: 194px;
        }
    </style>
</head>
<body style="height: 1010px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr style="background-color: #CB853F">
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
                                <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style36" OnClick="lbtHoaDon_Click1">Hóa Đơn</asp:LinkButton>
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
                <td class="auto-style49" style="background-color: #FFCC99"></td>
                <td class="auto-style50" style="background-color: #FFCC99">
                    <table style="width:100%; background-color: #FFCC99;">
                        <tr>
                            <td class="auto-style44"><strong>
                                    <asp:Label ID="lblIDLoaiSP" runat="server" CssClass="newStyle2" Text="ID Loại Sản Phẩm"></asp:Label>
                                    </strong></td>
                            <td class="auto-style45">
                                    <asp:TextBox ID="txtIDLoaiSP" runat="server" Height="30px" Width="450px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style43"><strong>
                                    <asp:Label ID="lblTenLoai" runat="server" CssClass="newStyle2" Text="Tên Loại"></asp:Label>
                                    </strong></td>
                            <td>
                                    <asp:TextBox ID="txtTenLoai" runat="server" Height="30px" Width="450px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style42">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #FFCC99">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style46"><strong>
                        <asp:Button ID="btnThem" runat="server" CssClass="auto-style8" Height="35px" Text="Thêm " Width="100px" />
                        </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style46"><strong>
                        <asp:Button ID="btnSua" runat="server" CssClass="auto-style8" Height="35px" Text="Sửa" Width="100px" />
                        </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style47"><strong>
                        <asp:Button ID="btnXoa" runat="server" CssClass="auto-style8" Height="35px" Text="Xóa" Width="100px" />
                        </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style48"><strong>
                        <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style8" Height="35px" Text="Làm Mới" Width="100px" />
                        </strong></td>
                        </tr>
                    </table>
                </td>
                <td style="background-color: #FFFFCC">
                    <asp:GridView ID="GridViewLoaiSPNVT" runat="server" Height="551px" Width="1469px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
