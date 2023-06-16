<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fSanPham.aspx.cs" Inherits="WebQLCafe.fSanPham" %>

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
        }
        .auto-style34 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            color: #FF0000;
            font-size: large;
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
            height: 37px;
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
        .auto-style51 {
            text-align: left;
        }
        .auto-style52 {
            height: 37px;
            text-align: center;
        }
        .newStyle6 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style53 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            color: #FF0000;
        }
        .newStyle7 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style54 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
        .newStyle8 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: medium;
        }
        .image{
            height: 10rem;
            width: 10rem;
        }
        .newStyle9 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style55 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            font-weight: bold;
        }
    </style>
    </head>
<body style="height: 1008px">
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
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" OnClick="btnDangXuat_Click" />
                                    </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>
                            <asp:LinkButton ID="lbtNhanVien" runat="server" CssClass="auto-style40" OnClick="lbtNhanVien_Click">Nhân Viên</asp:LinkButton>
                            </strong></td>
                        <td class="auto-style2"><strong>
                            <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style40" OnClick="lbtLoaiSP_Click">Loại Sản Phẩm</asp:LinkButton>
                            </strong></td>
                        <td class="auto-style2"><strong>
                            <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style40" OnClick="lbtSanPham_Click">Sản Phẩm</asp:LinkButton>
                            </strong></td>
                        <td class="auto-style2"><strong>
                            <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style40" OnClick="lbtHoaDon_Click">Hóa Đơn</asp:LinkButton>
                            </strong></td>
                        <td class="auto-style2"><strong>
                            <asp:LinkButton ID="lbtDoanhThu" runat="server" CssClass="auto-style40" OnClick="lbtDoanhThu_Click">Doanh Thu</asp:LinkButton>
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
                            <strong>
                            <asp:TextBox ID="txtMaSP" runat="server" Height="30px" Width="450px" CssClass="auto-style54"></asp:TextBox>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Tên sản phẩm</strong></td>
                        <td style="background-color: #FFCC99">
                            <strong>
                            <asp:TextBox ID="txtTenSP" runat="server" Height="30px" Width="450px" CssClass="auto-style54"></asp:TextBox>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Loại sản phẩm</strong></td>
                        <td style="background-color: #FFCC99">
                            <strong>
                            <asp:DropDownList ID="ddlLoaiSP" runat="server" CssClass="auto-style55" Height="30px" Width="450px">
                            </asp:DropDownList>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Kích cỡ</strong></td>
                        <td style="background-color: #FFCC99">
                            <strong>
                            <asp:TextBox ID="txtKichCo" runat="server" Height="30px" Width="450px" CssClass="auto-style54"></asp:TextBox>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Số lượng</strong></td>
                        <td style="background-color: #FFCC99">
                            <strong>
                            <asp:TextBox ID="txtSoLuong" runat="server" Height="30px" Width="450px" CssClass="auto-style54"></asp:TextBox>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="background-color: #FFCC99"><strong>Giá bán</strong></td>
                        <td style="background-color: #FFCC99">
                            <strong>
                            <asp:TextBox ID="txtGiaBan" runat="server" Height="30px" Width="450px" CssClass="auto-style54"></asp:TextBox>
                            </strong>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style45" style="background-color: #FFCC99"><strong>Mô tả</strong></td>
                        <td style="background-color: #FFCC99">
                            <strong>
                            <asp:TextBox ID="txtMota" runat="server" Height="58px" Width="450px" CssClass="auto-style54"></asp:TextBox>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style45" style="background-color: #FFCC99"><strong>Hình ảnh</strong></td>
                        <td class="auto-style51" style="background-color: #FFCC99"><strong>
                            <asp:FileUpload ID="fulHinhAnh" runat="server" CssClass="auto-style54" Height="35px" Width="591px" />
                            </strong></td>
                    </tr>
                </table>
                <table class="auto-style47">
                    <tr>
                        <td class="auto-style46" style="background-color: #FFCC99"></td>
                        <td class="auto-style52" style="background-color: #FFCC99" colspan="2"><strong>
                            <asp:Label ID="lblThongbao" runat="server" CssClass="auto-style53" Text="Thông báo"></asp:Label>
                            </strong></td>
                        <td class="auto-style46" style="background-color: #FFCC99"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="background-color: #FFCC99">
                        <asp:Button ID="btnThem" runat="server" CssClass="auto-style8" Height="35px" Text="Thêm " Width="100px" OnClick="btnThem_Click" />
                        </td>
                        <td class="auto-style2" style="background-color: #FFCC99">
                        <asp:Button ID="btnSua" runat="server" CssClass="auto-style8" Height="35px" Text="Sửa" Width="100px" OnClick="btnSua_Click" />
                        </td>
                        <td class="auto-style2" style="background-color: #FFCC99">
                        <asp:Button ID="btnXoa" runat="server" CssClass="auto-style8" Height="35px" Text="Xóa" Width="100px" OnClick="btnXoa_Click" />
                        </td>
                        <td class="auto-style2" style="background-color: #FFCC99">
                        <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style8" Height="35px" Text="Làm Mới" Width="100px" OnClick="btnLamMoi_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style38" style="background-color: #FFCC99">&nbsp;</td>
            <td style="background-color: #FFFFCC">
                <div class="auto-style2">
                </div>
                    <div class="auto-style2">
                        <strong>
                    <asp:GridView ID="GridViewSanPham" runat="server" AutoGenerateColumns="False" DataKeyNames="IDSanPham" DataSourceID="SqlDataSourceSP" Height="282px" Width="1468px" OnSelectedIndexChanged="GridViewSanPham_SelectedIndexChanged" CssClass="newStyle8">
                        <Columns>
                            <asp:BoundField DataField="IDSanPham" HeaderText="IDSanPham" ReadOnly="True" SortExpression="IDSanPham" />
                            <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
                            <asp:BoundField DataField="IDLoai" HeaderText="IDLoai" SortExpression="IDLoai" />
                            <asp:BoundField DataField="KichCo" HeaderText="KichCo" SortExpression="KichCo" />
                            <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
                            <asp:BoundField DataField="GiaBan" HeaderText="GiaBan" SortExpression="GiaBan" />
                            <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                            <asp:ImageField DataImageUrlField="Anh" DataImageUrlFormatString="~/Images/{0}" HeaderText="Anh" ControlStyle-CssClass="image">
<ControlStyle CssClass="image"></ControlStyle>
                            </asp:ImageField>
                            <asp:CommandField ShowSelectButton="True" SelectText="chọn" />
                        </Columns>
                    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceSP" runat="server" ConnectionString="<%$ ConnectionStrings:QLCaffe3ConnectionString4 %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>
                        </strong>
                    </div>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
