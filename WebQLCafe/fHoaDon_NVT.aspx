<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fHoaDon_NVT.aspx.cs" Inherits="WebQLCafe.fHoaDon_NVT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 334px;
            height: 215px;
        }
        .auto-style2 {
            width: 100%;
            height: 1000px;
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
        }
        .auto-style36 {
            text-align: center;
        }
        .auto-style7 {
            width: 100%;
            height: 220px;
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
        .newStyle13 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
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
        .newStyle15 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
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
        .newStyle14 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
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
        .newStyle16 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
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
        .auto-style33 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            font-size: large;
        }
        .auto-style39 {
            text-align: left;
        }
        .auto-style40 {
            width: 334px;
            height: 327px;
        }
        .auto-style41 {
            height: 327px;
        }
        .newStyle17 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style42 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            text-decoration: none;
            color: #000000;
        }
        .auto-style43 {
            width: 419px;
        }
        .auto-style44 {
            text-align: center;
            width: 419px;
        }
        .newStyle18 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle19 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style45 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
        .newStyle20 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
</head>
<body style="height: 1010px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1" style="background-color: #CB853F">
                        <asp:Image ID="Image1" runat="server" Height="141px" ImageUrl="~/Models/images/anhlogo/3.png" Width="133px" />
                    </td>
                    <td class="auto-style4" style="background-color: #CB853F">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style43">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style35"><strong>
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" />
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style44"><strong>
                                    <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style42" OnClick="lbtLoaiSP_Click">Loại Sản Phẩm</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style36"><strong>
                                    <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style42" OnClick="lbtSanPham_Click">Sản Phẩm</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style36"><strong>
                                    <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style42" OnClick="lbtHoaDon_Click">Hóa Đơn</asp:LinkButton>
                                    </strong></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style43">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="background-color: #FFCC99">
                    <td class="auto-style40"></td>
                    <td class="auto-style41">
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style29"><strong>Mã Đơn Hàng</strong></td>
                                <td class="auto-style30">
                                    <strong>
                                    <asp:DropDownList ID="ddlMaDH" runat="server" CssClass="auto-style45" Height="30px" Width="450px">
                                    </asp:DropDownList>
                                    </strong>
                                </td>
                                <td class="auto-style31"><strong>Mã Khách Hàng</strong></td>
                                <td class="auto-style32">
                                    <strong>
                                    <asp:DropDownList ID="ddlMaKH" runat="server" CssClass="auto-style45" Height="30px" Width="450px">
                                    </asp:DropDownList>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style25"><strong>Mã Nhân Viên</strong></td>
                                <td class="auto-style26">
                                    <strong>
                                    <asp:DropDownList ID="ddlMaNV" runat="server" CssClass="auto-style45" Height="30px" Width="450px">
                                    </asp:DropDownList>
                                    </strong>
                                </td>
                                <td class="auto-style27"><strong>Ngày</strong></td>
                                <td class="auto-style28">
                                    <strong>
                                    <asp:TextBox ID="txtNgay" runat="server" CssClass="auto-style45" Height="30px" Width="450px"></asp:TextBox>
                                    </strong>
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
                    <td class="auto-style3" style="background-color: #FFCC99">&nbsp;</td>
                    <td style="background-color: #FFFFCC" class="auto-style36">
                        <strong>
                        <asp:GridView ID="GridViewHoaDonNVT" runat="server" Height="424px" Width="1470px" CssClass="newStyle18">
                        </asp:GridView>
                        </strong>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
