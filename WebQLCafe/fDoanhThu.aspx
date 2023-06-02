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
            font-size: large;
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
        .newStyle4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle5 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style45 {
            text-align: right;
        }
        .newStyle6 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style46 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            font-weight: bold;
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
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style45"><strong>
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" OnClick="btnDangXuat_Click" />
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
                <td class="auto-style43" style="background-color: #FFCC99">&nbsp;</td>
                <td class="auto-style44" style="background-color: #FFCC99">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style41"><strong>Tìm kiếm theo ngày</strong></td>
                            <td>
                                <strong>
                                <asp:DropDownList ID="ddlTKTN" runat="server" CssClass="auto-style46" Height="30px" Width="450px">
                                </asp:DropDownList>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style41"><strong>Tổng Tiền</strong></td>
                            <td>
                                <strong>
                                <asp:TextBox ID="txtTongTien" runat="server" Height="30px" Width="450px" CssClass="auto-style42"></asp:TextBox>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style41">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style41">&nbsp;</td>
                            <td><strong>
                                <asp:Button ID="btnTimKiem" runat="server" CssClass="auto-style42" Height="35px" Text="Tìm Kiếm" Width="100px" OnClick="btnTimKiem_Click" />
                                </strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #FFCC99">&nbsp;</td>
                <td style="background-color: #FFFFCC">
                    <div class="auto-style37">
                        <strong>
                    <asp:GridView ID="grvDoanhThu" runat="server" Height="521px" Width="1459px" AutoGenerateColumns="False" CssClass="newStyle4" DataKeyNames="IDDoanhThu" DataSourceID="SqlDataSourceDT">
                        <Columns>
                            <asp:BoundField DataField="IDDoanhThu" HeaderText="IDDoanhThu" ReadOnly="True" SortExpression="IDDoanhThu" />
                            <asp:BoundField DataField="Ngay" HeaderText="Ngay" SortExpression="Ngay" />
                            <asp:BoundField DataField="SoTien" HeaderText="SoTien" SortExpression="SoTien" />
                        </Columns>
                    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceDT" runat="server" ConnectionString="<%$ ConnectionStrings:QLCaffe3ConnectionString3 %>" SelectCommand="SELECT * FROM [DoanhThu]"></asp:SqlDataSource>
                        </strong>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
