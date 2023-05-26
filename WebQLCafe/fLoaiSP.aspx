<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fLoaiSP.aspx.cs" Inherits="WebQLCafe.fLoaiSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            width: 334px;
            height: 215px;
            text-align: center;
        }
        .auto-style5 {
            height: 215px;
        }
        .auto-style8 {
            font-size: 14pt;
            font-weight: bold;
        }
        .auto-style9 {
            width: 100%;
            height: 1010px;
        }
        .auto-style10 {
            width: 334px;
            height: 194px;
        }
        .auto-style11 {
            height: 194px;
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
        }
        .auto-style36 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            text-decoration: none;
            font-size: x-large;
            color: #000000;
        }
        .auto-style37 {
            width: 334px;
            text-align: center;
            height: 29px;
        }
        .auto-style40 {
            width: 100%;
            height: 328px;
        }
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
    </style>
</head>
<body style="height: 1010px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style4" style="background-color: #CB853F">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="141px" Width="133px" ImageUrl="~/Models/images/anhlogo/3.png" OnClick="ImageButton1_Click" />
                    </td>
                    <td class="auto-style5" style="background-color: #CD853F">
                        <table style="width:100%;">
                            <tr>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                                <td style="background-color: #CB853F; font-family: Arial;" class="auto-style35"><strong>
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" />
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style2" style="background-color: #CB853F; font-family: Arial;"><strong>
                                    <asp:LinkButton ID="lbtNhanVien" runat="server" CssClass="auto-style36" OnClick="lbtNhanVien_Click">Nhân Viên</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style2" style="background-color: #CB853F; font-family: Arial;"><strong>
                                    <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style36" OnClick="lbtLoaiSP_Click">Loại Sản Phẩm</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style2" style="background-color: #CB853F; font-family: Arial;"><strong>
                                    <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style36" OnClick="lbtSanPham_Click">Sản Phẩm</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style2" style="background-color: #CB853F; font-family: Arial;"><strong>
                                    <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style36" OnClick="lbtHoaDon_Click">Hóa Đơn</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style2" style="background-color: #CB853F; font-family: Arial;"><strong>
                                    <asp:LinkButton ID="lbtDoanhThu" runat="server" CssClass="auto-style36" OnClick="lbtDoanhThu_Click">Doanh Thu</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style35" style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                                <td style="background-color: #CB853F; font-family: Arial;">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="background-color: #FFCC99">&nbsp;</td>
                    <td class="auto-style11" style="background-color: #FFCC99">
                        <table style="width:100%;">
                            <tr>
                                <td style="background-color: #FFCC99" class="auto-style2"><strong>
                                    <asp:Label ID="lblIDLoaiSP" runat="server" CssClass="newStyle2" Text="ID Loại Sản Phẩm"></asp:Label>
                                    </strong></td>
                                <td style="background-color: #FFCC99">
                                    <asp:TextBox ID="txtIDLoaiSP" runat="server" Height="30px" Width="450px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: #FFCC99" class="auto-style2"><strong>
                                    <asp:Label ID="lblTenLoai" runat="server" CssClass="newStyle2" Text="Tên Loại"></asp:Label>
                                    </strong></td>
                                <td style="background-color: #FFCC99">
                                    <asp:TextBox ID="txtTenLoai" runat="server" Height="30px" Width="450px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: #FFCC99">&nbsp;</td>
                                <td style="background-color: #FFCC99">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37" style="background-color: #FFCC99">
                        <table class="auto-style40">
                            <tr>
                                <td><strong>
                        <asp:Button ID="btnThem" runat="server" CssClass="auto-style8" Height="35px" Text="Thêm " Width="100px" />
                        </strong></td>
                            </tr>
                            <tr>
                                <td><strong>
                        <asp:Button ID="btnSua" runat="server" CssClass="auto-style8" Height="35px" Text="Sửa" Width="100px" />
                        </strong></td>
                            </tr>
                            <tr>
                                <td><strong>
                        <asp:Button ID="btnXoa" runat="server" CssClass="auto-style8" Height="35px" Text="Xóa" Width="100px" />
                        </strong></td>
                            </tr>
                            <tr>
                                <td><strong>
                        <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style8" Height="35px" Text="Làm Mới" Width="100px" />
                        </strong></td>
                            </tr>
                        </table>
                    </td>
                    <td style="background-color: #FFFFCC">
                        <asp:GridView ID="GridViewLoaiSP" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="551px" Width="1469px">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
