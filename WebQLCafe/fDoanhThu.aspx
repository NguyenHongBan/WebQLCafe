<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fDoanhThu.aspx.cs" Inherits="WebQLCafe.fDoanhThu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 1000px;
        }
        .auto-style2 {
            text-align: center;
            width: 334px;
            height: 215px;
        }
        .auto-style3 {
            width: 334px;
        }
        .auto-style4 {
            height: 215px;
        }
        .auto-style34 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style35 {
            text-align: right;
            height: 50px;
        }
        .newStyle1 {
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
            height: 22px;
        }
        .auto-style39 {
            width: 100%;
            height: 104px;
        }
        .auto-style40 {
            height: 50px;
        }
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style41 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
        }
        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style42 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
        }
        .auto-style43 {
            width: 334px;
            height: 226px;
        }
        .auto-style44 {
            height: 226px;
        }
    </style>
    </head>
<body style="height: 1010px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr style="background-color: #CB853F">
                <td class="auto-style2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="141px" ImageUrl="~/Models/images/anhlogo/3.png" Width="133px" OnClick="ImageButton1_Click" />
                </td>
                <td class="auto-style4">
                    <table class="auto-style39">
                        <tr>
                            <td class="auto-style40"></td>
                            <td class="auto-style40"></td>
                            <td class="auto-style40"></td>
                            <td class="auto-style40"></td>
                            <td class="auto-style40"></td>
                            <td class="auto-style35"><strong>
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" />
                                    </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style37"><strong>
                                <asp:LinkButton ID="lbtNhanVien" runat="server" CssClass="auto-style36" OnClick="lbtNhanVien_Click">Nhân Viên</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style37"><strong>
                                <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style36" OnClick="lbtLoaiSP_Click">Loại Sản Phẩm</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style37"><strong>
                                <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style36" OnClick="lbtSanPham_Click">Sản Phẩm</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style37"><strong>
                                <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style36" OnClick="lbtHoaDon_Click">Hóa Đơn</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style37"><strong>
                                <asp:LinkButton ID="lbtDoanhThu" runat="server" CssClass="auto-style36" OnClick="lbtDoanhThu_Click">Doanh Thu</asp:LinkButton>
                                </strong></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style38"></td>
                            <td class="auto-style38"></td>
                            <td class="auto-style38"></td>
                            <td class="auto-style38"></td>
                            <td class="auto-style38"></td>
                            <td class="auto-style38"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style43" style="background-color: #FFCC99"></td>
                <td class="auto-style44" style="background-color: #FFCC99">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style41"><strong>Tìm kiếm theo ngày</strong></td>
                            <td>
                                <asp:TextBox ID="txtTKtheoNgay" runat="server" Height="30px" Width="450px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style41"><strong>Tổng Tiền</strong></td>
                            <td>
                                <asp:TextBox ID="txtTongTien" runat="server" Height="30px" Width="450px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style41">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style41">&nbsp;</td>
                            <td><strong>
                                <asp:Button ID="btnTimKiem" runat="server" CssClass="auto-style42" Height="35px" Text="Tìm Kiếm" Width="100px" />
                                </strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #FFCC99">&nbsp;</td>
                <td style="background-color: #FFFFCC">
                    <asp:GridView ID="GridView1" runat="server" Height="521px" Width="1472px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
