<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fHoaDon.aspx.cs" Inherits="WebQLCafe.fHoaDon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .newStyle1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: 16px;
        }
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle5 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle6 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style2 {
            width: 334px;
        }
        .auto-style4 {
            text-align: center;
        }
        .newStyle7 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style5 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            text-decoration: none;
            color: #000000;
        }
        .auto-style6 {
            width: 100%;
            height: 1001px;
        }
        .auto-style7 {
            width: 100%;
            height: 220px;
        }
        .auto-style8 {
            width: 334px;
            height: 327px;
        }
        .auto-style9 {
            height: 327px;
        }
        .auto-style11 {
            width: 185px;
        }
        .auto-style12 {
            width: 561px;
        }
        .auto-style14 {
            width: 173px;
            text-align: center;
        }
        .auto-style25 {
            text-align: center;
            width: 185px;
            height: 76px;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style26 {
            width: 561px;
            height: 76px;
        }
        .auto-style27 {
            text-align: center;
            width: 173px;
            height: 76px;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style28 {
            height: 76px;
        }
        .auto-style29 {
            text-align: center;
            width: 185px;
            height: 82px;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style30 {
            width: 561px;
            height: 82px;
        }
        .auto-style31 {
            text-align: center;
            width: 173px;
            height: 82px;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style32 {
            height: 82px;
        }
        .newStyle8 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style33 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            font-size: large;
        }
        .newStyle9 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle10 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle11 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle12 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle13 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle14 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle15 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle16 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle17 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle18 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style34 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style35 {
            width: 100%;
            height: 101px;
        }
        .newStyle19 {
            background-color: #CB853F;
        }
        .auto-style36 {
            background-color: #CB853F;
            height: 215px;
        }
        .auto-style37 {
            background-color: #CB853F;
            height: 215px;
            text-align: center;
        }
        .auto-style38 {
            text-align: right;
        }
        .auto-style39 {
            text-align: left;
        }
        .newStyle20 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        </style>
</head>
<body style="height: 1010px">
    <form id="form1" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style37">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="141px" ImageUrl="~/Models/images/anhlogo/3.png" Width="133px" />
                </td>
                <td class="auto-style36">
                    <table class="auto-style35">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style38"><strong>
                                <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" />
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><strong>
                                <asp:LinkButton ID="lbtNhanVien" runat="server" CssClass="auto-style5" OnClick="lbtNhanVien_Click1">Nhân Viên</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style4"><strong>
                                <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style5" OnClick="lbtLoaiSP_Click1">Loại Sản Phẩm</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style4"><strong>
                                <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style5" OnClick="lbtSanPham_Click">Sản Phẩm</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style4"><strong>
                                <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style5" OnClick="lbtHoaDon_Click1">Hóa Đơn</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style4"><strong>
                                <asp:LinkButton ID="lbtDoanhThu" runat="server" CssClass="auto-style5" OnClick="lbtDoanhThu_Click">Doanh Thu</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style4">&nbsp;</td>
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
            <tr style="background-color: #FFCC99">
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style29"><strong>Mã Đơn Hàng</strong></td>
                            <td class="auto-style30">
                                <asp:DropDownList ID="ddlMaDH" runat="server" CssClass="newStyle13" Height="30px" Width="450px">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style31"><strong>Mã Khách Hàng</strong></td>
                            <td class="auto-style32">
                                <asp:DropDownList ID="ddlMaKH" runat="server" CssClass="newStyle15" Height="30px" Width="450px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25"><strong>Mã Nhân Viên</strong></td>
                            <td class="auto-style26">
                                <asp:DropDownList ID="ddlMaNV" runat="server" CssClass="newStyle14" Height="30px" Width="450px">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style27"><strong>Ngày</strong></td>
                            <td class="auto-style28">
                                <asp:TextBox ID="txtNgay" runat="server" CssClass="newStyle16" Height="30px" Width="450px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style12">&nbsp;</td>
                            <td class="auto-style14"><strong>
                                <asp:Button ID="btnTimKiem" runat="server" CssClass="auto-style33" Height="35px" Text="Tìm Kiếm" Width="100px" />
                                </strong></td>
                            <td class="auto-style39"><strong>
                                <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style33" Height="35px" Text="Làm Mới" Width="100px" />
                                </strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="background-color: #FFCC99">&nbsp;</td>
                <td style="background-color: #FFFFCC">
                    <asp:GridView ID="GridViewHoaDon" runat="server" CssClass="newStyle17" Height="430px" Width="1470px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
