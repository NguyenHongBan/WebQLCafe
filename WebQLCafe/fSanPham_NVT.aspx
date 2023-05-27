<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fSanPham_NVT.aspx.cs" Inherits="WebQLCafe.fSanPham_NVT" %>

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
            height: 1000px;
        }
        .auto-style3 {
            text-align: center;
            width: 334px;
            height: 215px;
        }
        .auto-style4 {
            width: 334px;
        }
        .auto-style5 {
            height: 215px;
        }
        .auto-style34 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style35 {
            text-align: right;
        }
        .auto-style36 {
            text-align: center;
        }
        .newStyle1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style37 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            color: #000000;
            text-decoration: none;
        }
        .auto-style38 {
            width: 419px;
        }
        .auto-style39 {
            text-align: center;
            width: 419px;
        }
        .auto-style50 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style51 {
            width: 334px;
            height: 418px;
        }
        .auto-style52 {
            height: 418px;
        }
        .auto-style8 {
            font-size: 14pt;
            font-weight: bold;
        }
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style53 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
            width: 492px;
        }
        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style54 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
            width: 494px;
        }
        .auto-style55 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
            width: 494px;
            height: 40px;
        }
        .auto-style56 {
            height: 40px;
        }
        .auto-style57 {
            width: 100%;
            height: 97px;
        }
        .auto-style58 {
            height: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3" style="background-color: #CB853F">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="141px" ImageUrl="~/Models/images/anhlogo/3.png" Width="133px" />
                    </td>
                    <td class="auto-style5" style="background-color: #CB853F">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style38">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style35"><strong>
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" />
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style39"><strong>
                                    <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style37">Loại Sản Phẩm</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style36"><strong>
                                    <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style37">Sản Phẩm</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style36"><strong>
                                    <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style37">Hóa Đơn</asp:LinkButton>
                                    </strong></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style38">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style51" style="background-color: #FFCC99"></td>
                    <td class="auto-style52">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style54" style="background-color: #FFCC99"><strong>Mã sản phẩm</strong></td>
                                <td style="background-color: #FFCC99">
                            <asp:TextBox ID="txtMaSP" runat="server" Height="30px" Width="450px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style55" style="background-color: #FFCC99"><strong>Tên sản phẩm</strong></td>
                                <td class="auto-style56" style="background-color: #FFCC99">
                            <asp:TextBox ID="txtTenSP" runat="server" Height="30px" Width="450px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54" style="background-color: #FFCC99"><strong>Loại sản phẩm</strong></td>
                                <td style="background-color: #FFCC99">
                            <asp:DropDownList ID="ddlLoaiSP" runat="server" Height="30px" Width="450px">
                            </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54" style="background-color: #FFCC99"><strong>Kích cỡ</strong></td>
                                <td style="background-color: #FFCC99">
                            <asp:DropDownList ID="ddlKichCo" runat="server" Height="30px" Width="450px">
                            </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54" style="background-color: #FFCC99"><strong>Số lượng</strong></td>
                                <td style="background-color: #FFCC99">
                            <asp:TextBox ID="txtSoLuong" runat="server" Height="30px" Width="450px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54" style="background-color: #FFCC99"><strong>Giá bán</strong></td>
                                <td style="background-color: #FFCC99">
                            <asp:TextBox ID="txtGiaBan" runat="server" Height="30px" Width="450px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style53" style="background-color: #FFCC99"><strong>Mô tả</strong></td>
                                <td style="background-color: #FFCC99">
                            <asp:TextBox ID="txtMota" runat="server" Height="100px" Width="450px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style53" style="background-color: #FFCC99"><strong>Hình ảnh</strong></td>
                                <td style="background-color: #FFCC99"><strong>
                            <asp:FileUpload ID="fulHinhAnh" runat="server" CssClass="auto-style50" Height="35px" Width="621px" />
                            </strong></td>
                            </tr>
                            </table>
                        <table class="auto-style57">
                            <tr>
                                <td class="auto-style58" style="background-color: #FFCC99"></td>
                                <td class="auto-style58" style="background-color: #FFCC99"></td>
                                <td class="auto-style58" style="background-color: #FFCC99"></td>
                                <td class="auto-style58" style="background-color: #FFCC99"></td>
                            </tr>
                            <tr>
                                <td class="auto-style36" style="background-color: #FFCC99">
                        <asp:Button ID="btnThem" runat="server" CssClass="auto-style8" Height="35px" Text="Thêm " Width="100px" />
                                </td>
                                <td class="auto-style36" style="background-color: #FFCC99">
                        <asp:Button ID="btnSua" runat="server" CssClass="auto-style8" Height="35px" Text="Sửa" Width="100px" />
                                </td>
                                <td class="auto-style36" style="background-color: #FFCC99">
                        <asp:Button ID="btnXoa" runat="server" CssClass="auto-style8" Height="35px" Text="Xóa" Width="100px" />
                                </td>
                                <td class="auto-style36" style="background-color: #FFCC99">
                        <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style8" Height="35px" Text="Làm Mới" Width="100px" />
                                </td>
                            </tr>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #FFCC99">&nbsp;</td>
                    <td style="background-color: #FFFFCC">
                        <asp:GridView ID="GridViewSanPhamNVT" runat="server" Height="290px" Width="1473px">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
