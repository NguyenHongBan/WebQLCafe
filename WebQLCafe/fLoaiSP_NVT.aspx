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
            height: 995px;
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
        .auto-style49 {
            width: 334px;
            height: 250px;
        }
        .auto-style50 {
            height: 250px;
        }
        .auto-style51 {
            height: 38px;
        }
        .auto-style53 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            color: #FF0000;
        }
        .auto-style54 {
            height: 38px;
            text-align: center;
        }
        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style55 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
        .newStyle4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
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
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" OnClick="btnDangXuat_Click" />
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
                                    <strong>
                                    <asp:TextBox ID="txtIDLoai" runat="server" Height="30px" Width="450px" CssClass="auto-style55"></asp:TextBox>
                                    </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style43"><strong>
                                    <asp:Label ID="lblTenLoai" runat="server" CssClass="newStyle2" Text="Tên Loại"></asp:Label>
                                    </strong></td>
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
                            <td class="auto-style51"></td>
                            <td class="auto-style54" colspan="2"><strong>
                            <asp:Label ID="lblThongbao" runat="server" CssClass="auto-style53" Text="Thông báo"></asp:Label>
                            </strong></td>
                            <td class="auto-style51"></td>
                        </tr>
                        <tr>
                            <td class="auto-style37">
                        <asp:Button ID="btnThem" runat="server" CssClass="auto-style8" Height="35px" Text="Thêm " Width="100px" OnClick="btnThem_Click" />
                            </td>
                            <td class="auto-style37">
                        <asp:Button ID="btnSua" runat="server" CssClass="auto-style8" Height="35px" Text="Sửa" Width="100px" OnClick="btnSua_Click" />
                            </td>
                            <td class="auto-style37">
                        <asp:Button ID="btnXoa" runat="server" CssClass="auto-style8" Height="35px" Text="Xóa" Width="100px" OnClick="btnXoa_Click" />
                            </td>
                            <td class="auto-style37">
                        <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style8" Height="35px" Text="Làm Mới" Width="100px" OnClick="btnLamMoi_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #FFCC99">
                    &nbsp;</td>
                <td style="background-color: #FFFFCC" class="auto-style37">
                    <strong>
                    <asp:GridView ID="GridViewLoaiSP" runat="server" Height="482px" Width="1468px" AutoGenerateColumns="False" DataKeyNames="IDLoai" DataSourceID="SqlDataSourceLSP" OnSelectedIndexChanged="GridViewLoaiSP_SelectedIndexChanged" CssClass="newStyle4">
                        <Columns>
                            <asp:BoundField DataField="IDLoai" HeaderText="IDLoai" ReadOnly="True" SortExpression="IDLoai" />
                            <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai" />
                            <asp:CommandField ShowSelectButton="True" SelectText="chọn" />
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
