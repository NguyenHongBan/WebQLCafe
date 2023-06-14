<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fSanPhamnvt.aspx.cs" Inherits="WebQLCafe.fSanPham_NVT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1010px;
        }
        .auto-style2 {
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
        .auto-style36 {
            text-align: center;
        }
        .newStyle1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style37 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            color: #000000;
            text-decoration: none;
        }
        .auto-style38 {
            width: 419px;
        }
        .auto-style39 {
            text-align: center;
            width: 419px;
        }
        .auto-style51 {
            width: 334px;
            height: 418px;
        }
        .auto-style52 {
            height: 418px;
        }
        .auto-style8 {
            font-size: 14pt;
            font-weight: bold;
        }
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style53 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
            width: 492px;
        }
        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style54 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
            width: 494px;
        }
        .auto-style55 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
            width: 494px;
            height: 40px;
        }
        .auto-style56 {
            height: 40px;
        }
        .auto-style57 {
            width: 100%;
            height: 97px;
        }
        .auto-style58 {
            height: 43px;
        }
        .auto-style59 {
            height: 43px;
            text-align: center;
        }
        .auto-style60 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
            width: 492px;
            color: #FF0000;
        }
        .newStyle4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style61 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
        .newStyle5 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: medium;
        }
        .image{
            height: 10rem;
            width: 10rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3" style="background-color: #CB853F">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="141px" ImageUrl="~/Models/images/anhlogo/3.png" Width="133px" />
                    </td>
                    <td class="auto-style5" style="background-color: #CB853F">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style38">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style35"><strong>
                                    <asp:Button ID="btnDangXuat" runat="server" CssClass="auto-style34" Height="40px" Text="Đăng Xuất" Width="150px" OnClick="btnDangXuat_Click" />
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style39"><strong>
                                    <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style37" OnClick="lbtLoaiSP_Click">Loại Sản Phẩm</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style36"><strong>
                                    <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style37" OnClick="lbtSanPham_Click">Sản Phẩm</asp:LinkButton>
                                    </strong></td>
                                <td class="auto-style36"><strong>
                                    <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style37" OnClick="lbtHoaDon_Click">Hóa Đơn</asp:LinkButton>
                                    </strong></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style38">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style51" style="background-color: #FFCC99"></td>
                    <td class="auto-style52">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style54" style="background-color: #FFCC99"><strong>Mã sản phẩm</strong></td>
                                <td style="background-color: #FFCC99">
                                    <strong>
                            <asp:TextBox ID="txtMaSP" runat="server" Height="30px" Width="450px" CssClass="auto-style61"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style55" style="background-color: #FFCC99"><strong>Tên sản phẩm</strong></td>
                                <td class="auto-style56" style="background-color: #FFCC99">
                                    <strong>
                            <asp:TextBox ID="txtTenSP" runat="server" Height="30px" Width="450px" CssClass="auto-style61"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54" style="background-color: #FFCC99"><strong>Loại sản phẩm</strong></td>
                                <td style="background-color: #FFCC99">
                                    <strong>
                            <asp:DropDownList ID="ddlLoaiSP" runat="server" Height="30px" Width="450px" CssClass="auto-style61">
                            </asp:DropDownList>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54" style="background-color: #FFCC99"><strong>Kích cỡ</strong></td>
                                <td style="background-color: #FFCC99">
                                    <strong>
                                    <asp:TextBox ID="txtKichCo" runat="server" Height="30px" Width="450px" CssClass="auto-style61"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54" style="background-color: #FFCC99"><strong>Số lượng</strong></td>
                                <td style="background-color: #FFCC99">
                                    <strong>
                            <asp:TextBox ID="txtSoLuong" runat="server" Height="30px" Width="450px" CssClass="auto-style61"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54" style="background-color: #FFCC99"><strong>Giá bán</strong></td>
                                <td style="background-color: #FFCC99">
                                    <strong>
                            <asp:TextBox ID="txtGiaBan" runat="server" Height="30px" Width="450px" CssClass="auto-style61"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                        </table>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style53" style="background-color: #FFCC99"><strong>Mô tả</strong></td>
                                <td style="background-color: #FFCC99">
                                    <strong>
                            <asp:TextBox ID="txtMota" runat="server" Height="100px" Width="450px" CssClass="auto-style61"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style53" style="background-color: #FFCC99"><strong>Hình ảnh</strong></td>
                                <td style="background-color: #FFCC99"><strong>
                            <asp:FileUpload ID="fulHinhAnh" runat="server" CssClass="auto-style61" Height="35px" Width="621px" />
                            </strong></td>
                            </tr>
                            </table>
                        <table class="auto-style57">
                            <tr>
                                <td class="auto-style58" style="background-color: #FFCC99"></td>
                                <td class="auto-style59" style="background-color: #FFCC99" colspan="2"><strong>
                            <asp:Label ID="lblThongbao" runat="server" CssClass="auto-style60" Text="Thông báo"></asp:Label>
                            </strong></td>
                                <td class="auto-style58" style="background-color: #FFCC99"></td>
                            </tr>
                            <tr>
                                <td class="auto-style36" style="background-color: #FFCC99">
                        <asp:Button ID="btnThem" runat="server" CssClass="auto-style8" Height="35px" Text="Thêm " Width="100px" OnClick="btnThem_Click" />
                                </td>
                                <td class="auto-style36" style="background-color: #FFCC99">
                        <asp:Button ID="btnSua" runat="server" CssClass="auto-style8" Height="35px" Text="Sửa" Width="100px" OnClick="btnSua_Click" />
                                </td>
                                <td class="auto-style36" style="background-color: #FFCC99">
                        <asp:Button ID="btnXoa" runat="server" CssClass="auto-style8" Height="35px" Text="Xóa" Width="100px" OnClick="btnXoa_Click" />
                                </td>
                                <td class="auto-style36" style="background-color: #FFCC99">
                        <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style8" Height="35px" Text="Làm Mới" Width="100px" OnClick="btnLamMoi_Click" />
                                </td>
                            </tr>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #FFCC99">&nbsp;</td>
                    <td style="background-color: #FFFFCC">
                        <div class="auto-style36">
                            <strong>
                        <asp:GridView ID="GridViewSanPhamNVT" runat="server" Height="290px" Width="1473px" AutoGenerateColumns="False" DataKeyNames="IDSanPham" DataSourceID="SqlDataSourceSP" OnSelectedIndexChanged="GridViewSanPhamNVT_SelectedIndexChanged" CssClass="newStyle5">
                            <Columns>
                                <asp:BoundField DataField="IDSanPham" HeaderText="IDSanPham" ReadOnly="True" SortExpression="IDSanPham" />
                                <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
                                <asp:BoundField DataField="IDLoai" HeaderText="IDLoai" SortExpression="IDLoai" />
                                <asp:BoundField DataField="KichCo" HeaderText="KichCo" SortExpression="KichCo" />
                                <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
                                <asp:BoundField DataField="GiaBan" HeaderText="GiaBan" SortExpression="GiaBan" />
                                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                                <asp:ImageField DataImageUrlField="Anh" DataImageUrlFormatString="~/Images/{0}" HeaderText="Anh" ControlStyle-CssClass="image">
                                </asp:ImageField>
                                <asp:CommandField ShowSelectButton="True" SelectText="chọn" />
                            </Columns>
                        </asp:GridView>
                            </strong>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSourceSP" runat="server" ConnectionString="<%$ ConnectionStrings:QLCaffe3ConnectionString2 %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
