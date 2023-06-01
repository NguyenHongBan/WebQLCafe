<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fLoaiSP.aspx.cs" Inherits="WebQLCafe.fLoaiSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style1 {
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
        .auto-style40 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            text-decoration: none;
            color: #000000;
        }
        .auto-style41 {
            text-align: center;
        }
        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style42 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
            width: 480px;
        }
        .auto-style43 {
            width: 334px;
            height: 250px;
        }
        .auto-style44 {
            height: 250px;
        }
        .auto-style8 {
            font-size: 14pt;
            font-weight: bold;
        }
        .auto-style45 {
            height: 36px;
        }
        .auto-style53 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            color: #FF0000;
        }
        .auto-style54 {
            height: 36px;
            text-align: center;
        }
        .newStyle4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style55 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
        .newStyle5 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
</head>
<body style="height: 1010px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="background-color: #CB853F">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="141px" ImageUrl="~/Models/images/anhlogo/3.png" Width="133px" />
                </td>
                <td class="auto-style5" style="background-color: #CB853F">
                    <table style="width:100%;">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style35">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style41"><strong>
                            <asp:LinkButton ID="lbtNhanVien" runat="server" CssClass="auto-style40" OnClick="lbtNhanVien_Click">Nhân Viên</asp:LinkButton>
                            </strong></td>
                            <td class="auto-style41"><strong>
                            <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style40" OnClick="lbtLoaiSP_Click">Loại Sản Phẩm</asp:LinkButton>
                            </strong></td>
                            <td class="auto-style41"><strong>
                            <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style40" OnClick="lbtSanPham_Click">Sản Phẩm</asp:LinkButton>
                            </strong></td>
                            <td class="auto-style41"><strong>
                            <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style40" OnClick="lbtHoaDon_Click">Hóa Đơn</asp:LinkButton>
                            </strong></td>
                            <td class="auto-style41"><strong>
                            <asp:LinkButton ID="lbtDoanhThu" runat="server" CssClass="auto-style40" OnClick="lbtDoanhThu_Click">Doanh Thu</asp:LinkButton>
                            </strong></td>
                            <td class="auto-style35"><strong>
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" OnClick="btnDangXuat_Click" />
                                    </strong></td>
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
                <td class="auto-style43" style="background-color: #FFCC99"></td>
                <td class="auto-style44" style="background-color: #FFCC99">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style42"><strong>ID Loại sản phẩm</strong></td>
                            <td>
                                <strong>
                                <asp:TextBox ID="txtIDLoai" runat="server" Height="30px" Width="450px" CssClass="auto-style55"></asp:TextBox>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style42"><strong>Tên loại</strong></td>
                            <td>
                                <strong>
                                <asp:TextBox ID="txtTenLoai" runat="server" Height="30px" Width="450px" CssClass="auto-style55"></asp:TextBox>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style42">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style45"></td>
                            <td class="auto-style54" colspan="2"><strong>
                            <asp:Label ID="lblThongbao" runat="server" CssClass="auto-style53" Text="Thông báo"></asp:Label>
                            </strong></td>
                            <td class="auto-style45"></td>
                        </tr>
                        <tr>
                            <td class="auto-style41">
                        <asp:Button ID="btnThem" runat="server" CssClass="auto-style8" Height="35px" Text="Thêm " Width="100px" OnClick="btnThem_Click" />
                            </td>
                            <td class="auto-style41">
                        <asp:Button ID="btnSua" runat="server" CssClass="auto-style8" Height="35px" Text="Sửa" Width="100px" OnClick="btnSua_Click" />
                            </td>
                            <td class="auto-style41">
                        <asp:Button ID="btnXoa" runat="server" CssClass="auto-style8" Height="35px" Text="Xóa" Width="100px" OnClick="btnXoa_Click" />
                            </td>
                            <td class="auto-style41">
                        <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style8" Height="35px" Text="Làm Mới" Width="100px" OnClick="btnLamMoi_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="background-color: #FFCC99">&nbsp;</td>
                <td style="background-color: #FFFFCC" class="auto-style41">
                    <strong>
                    <asp:GridView ID="grvLoaiSP" runat="server" Height="480px" Width="1470px" AutoGenerateColumns="False" DataKeyNames="IDLoai" DataSourceID="SqlDataSourceLSP" OnSelectedIndexChanged="grvLoaiSP_SelectedIndexChanged" CssClass="newStyle5">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="IDLoai" HeaderText="IDLoai" ReadOnly="True" SortExpression="IDLoai" />
                            <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai" />
                        </Columns>
                    </asp:GridView>
                    </strong>
                    <asp:SqlDataSource ID="SqlDataSourceLSP" runat="server" ConnectionString="<%$ ConnectionStrings:QLCaffe3ConnectionString2 %>" SelectCommand="SELECT * FROM [LoaiSP]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
