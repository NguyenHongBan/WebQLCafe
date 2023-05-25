<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fLoaiSP.aspx.cs" Inherits="WebQLCafe.fLoaiSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 334px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-decoration: none;
            font-size: x-large;
            color: #400000;
        }
        .auto-style4 {
            width: 334px;
            height: 215px;
            text-align: center;
        }
        .auto-style5 {
            height: 215px;
        }
        .auto-style7 {
            font-size: 16pt;
            color: #400000;
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
        .auto-style12 {
            width: 334px;
            text-align: center;
            height: 80px;
        }
    </style>
</head>
<body style="height: 1010px">
    <form id="form1" runat="server">
<<<<<<< HEAD
=======
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
                            </tr>
                            <tr>
                                <td class="auto-style2" style="background-color: #CB853F; font-family: Arial;"><strong>
                                    <asp:LinkButton ID="lbtNhanVien" runat="server" CssClass="auto-style3" OnClick="lbtNhanVien_Click">Nhân Viên</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style2" style="background-color: #CB853F; font-family: Arial;"><strong>
                                    <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style3" OnClick="lbtLoaiSP_Click">Loại Sản Phẩm</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style2" style="background-color: #CB853F; font-family: Arial;"><strong>
                                    <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style3" OnClick="lbtSanPham_Click">Sản Phẩm</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style2" style="background-color: #CB853F; font-family: Arial;"><strong>
                                    <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style3" OnClick="lbtHoaDon_Click">Hóa Đơn</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style2" style="background-color: #CB853F; font-family: Arial;"><strong>
                                    <asp:LinkButton ID="lbtDoanhThu" runat="server" CssClass="auto-style3" OnClick="lbtDoanhThu_Click">Doanh Thu</asp:LinkButton>
                                    </strong></td>
                            </tr>
                            <tr>
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
                    <td class="auto-style10" style="background-color: #FFCC99"></td>
                    <td class="auto-style11" style="background-color: #FFCC99">
                        <table style="width:100%;">
                            <tr>
                                <td style="background-color: #FFCC99" class="auto-style2"><strong>
                                    <asp:Label ID="lblIDLoaiSP" runat="server" CssClass="auto-style7" Text="ID Loại Sản Phẩm"></asp:Label>
                                    </strong></td>
                                <td style="background-color: #FFCC99">
                                    <asp:TextBox ID="txtIDLoaiSP" runat="server" Height="30px" Width="450px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: #FFCC99" class="auto-style2"><strong>
                                    <asp:Label ID="lblTenLoai" runat="server" CssClass="auto-style7" Text="Tên Loại"></asp:Label>
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
                    <td class="auto-style12" style="background-color: #FFCC99"><strong>
                        <asp:Button ID="btnThem" runat="server" CssClass="auto-style8" Height="35px" Text="Thêm " Width="100px" />
                        </strong></td>
                    <td rowspan="4" style="background-color: #FFFFCC">
                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="306px" Width="1469px">
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
                <tr>
                    <td class="auto-style12" style="background-color: #FFCC99"><strong>
                        <asp:Button ID="btnSua" runat="server" CssClass="auto-style8" Height="35px" Text="Sửa" Width="100px" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12" style="background-color: #FFCC99"><strong>
                        <asp:Button ID="btnXoa" runat="server" CssClass="auto-style8" Height="35px" Text="Xóa" Width="100px" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12" style="background-color: #FFCC99"><strong>
                        <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style8" Height="35px" Text="Làm Mới" Width="100px" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="background-color: #FFCC99">&nbsp;</td>
                    <td style="background-color: #FFCC99">&nbsp;</td>
                </tr>
            </table>
        </div>
>>>>>>> 4c2c9beb6b4be155f75b1de04bc70e3a4f71e153
    </form>
</body>
</html>
