<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fSanPham.aspx.cs" Inherits="WebQLCafe.fSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 999px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style34 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style35 {
            text-align: right;
        }
        .newStyle1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style37 {
            text-align: center;
            width: 334px;
            height: 215px;
        }
        .auto-style38 {
            width: 334px;
        }
        .auto-style39 {
            height: 215px;
        }
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style40 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            text-decoration: none;
            color: #000000;
        }
        .auto-style41 {
            width: 100%;
        }
        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .newStyle4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style44 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
            width: 494px;
        }
        .newStyle5 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style45 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
            width: 493px;
        }
        .auto-style46 {
            height: 15px;
        }
        .auto-style47 {
            width: 100%;
            height: 92px;
        }
        .auto-style8 {
            font-size: 14pt;
            font-weight: bold;
        }
        .auto-style48 {
            width: 334px;
            height: 438px;
        }
        .auto-style49 {
            height: 438px;
        }
        .auto-style50 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style51 {
            text-align: left;
        }
    </style>
    </head>
<body style="height: 1010px">
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr style="background-color: #CB853F">
            <td class="auto-style37">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="141px" ImageUrl="~/Models/images/anhlogo/3.png" Width="133px" />
            </td>
            <td class="auto-style39">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style35"><strong>
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" />
                                    </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>
                            <asp:LinkButton ID="lbtNhanVien" runat="server" CssClass="auto-style40">Nhân Viên</asp:LinkButton>
                            </strong></td>
                        <td class="auto-style2"><strong>
                            <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style40">Loại Sản Phẩm</asp:LinkButton>
                            </strong></td>
                        <td class="auto-style2"><strong>
                            <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style40">Sản Phẩm</asp:LinkButton>
                            </strong></td>
                        <td class="auto-style2"><strong>
                            <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style40">Hóa Đơn</asp:LinkButton>
                            </strong></td>
                        <td class="auto-style2"><strong>
                            <asp:LinkButton ID="lbtDoanhThu" runat="server" CssClass="auto-style40">Doanh Thu</asp:LinkButton>
                            </strong></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style48" style="background-color: #FFCC99"></td>
            <td class="auto-style49">
                <table class="auto-style41">
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Mã sản phẩm</strong></td>
                        <td style="background-color: #FFCC99">
                            <asp:TextBox ID="txtMaSP" runat="server" Height="30px" Width="450px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Tên sản phẩm</strong></td>
                        <td style="background-color: #FFCC99">
                            <asp:TextBox ID="txtTenSP" runat="server" Height="30px" Width="450px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Loại sản phẩm</strong></td>
                        <td style="background-color: #FFCC99">
                            <asp:DropDownList ID="ddlLoaiSP" runat="server" Height="30px" Width="450px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Kích cỡ</strong></td>
                        <td style="background-color: #FFCC99">
                            <asp:DropDownList ID="ddlKichCo" runat="server" Height="30px" Width="450px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Số lượng</strong></td>
                        <td style="background-color: #FFCC99">
                            <asp:TextBox ID="txtSoLuong" runat="server" Height="30px" Width="450px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Giá bán</strong></td>
                        <td style="background-color: #FFCC99">
                            <asp:TextBox ID="txtGiaBan" runat="server" Height="30px" Width="450px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style45" style="background-color: #FFCC99"><strong>Mô tả</strong></td>
                        <td style="background-color: #FFCC99">
                            <asp:TextBox ID="txtMota" runat="server" Height="100px" Width="450px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style45" style="background-color: #FFCC99"><strong>Hình ảnh</strong></td>
                        <td class="auto-style51" style="background-color: #FFCC99"><strong>
                            <asp:FileUpload ID="fulHinhAnh" runat="server" CssClass="auto-style50" Height="35px" Width="621px" />
                            </strong></td>
                    </tr>
                </table>
                <table class="auto-style47">
                    <tr>
                        <td class="auto-style46" style="background-color: #FFCC99"></td>
                        <td class="auto-style46" style="background-color: #FFCC99"></td>
                        <td class="auto-style46" style="background-color: #FFCC99"></td>
                        <td class="auto-style46" style="background-color: #FFCC99"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="background-color: #FFCC99">
                        <asp:Button ID="btnThem" runat="server" CssClass="auto-style8" Height="35px" Text="Thêm " Width="100px" />
                        </td>
                        <td class="auto-style2" style="background-color: #FFCC99">
                        <asp:Button ID="btnSua" runat="server" CssClass="auto-style8" Height="35px" Text="Sửa" Width="100px" />
                        </td>
                        <td class="auto-style2" style="background-color: #FFCC99">
                        <asp:Button ID="btnXoa" runat="server" CssClass="auto-style8" Height="35px" Text="Xóa" Width="100px" />
                        </td>
                        <td class="auto-style2" style="background-color: #FFCC99">
                        <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style8" Height="35px" Text="Làm Mới" Width="100px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style38" style="background-color: #FFCC99">&nbsp;</td>
            <td style="background-color: #FFFFCC">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="290px" Width="1471px">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
