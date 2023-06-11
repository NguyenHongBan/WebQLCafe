<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fNhanVien.aspx.cs" Inherits="WebQLCafe.fNhanVien" %>

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
        .auto-style6 {
            width: 468px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-size: 14pt;
            font-weight: bold;
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
        .newStyle2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style42 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style44 {
            height: 44px;
        }
        .auto-style45 {
            width: 100%;
            height: 43px;
        }
        .auto-style46 {
            height: 31px;
        }
        .auto-style47 {
            width: 334px;
            height: 401px;
        }
        .auto-style48 {
            height: 401px;
        }
        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style49 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: center;
        }
        .newStyle4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .auto-style50 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            text-align: right;
            width: 759px;
        }
        .newStyle5 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
        }
        .newStyle6 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            font-weight: 700;
            color: #000000;
        }
        .newStyle7 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
        }
        .auto-style36 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: x-large;
            text-decoration: none;
            color: #000000;
        }
        .auto-style51 {
            font-size: 14pt;
            font-weight: bold;
            margin-bottom: 0px;
        }
        .auto-style53 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            color: #FF0000;
        }
        .auto-style54 {
            height: 31px;
            text-align: center;
        }
        .newStyle8 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle9 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        </style>
    </head>
<body style="height: 1010px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="background-color: #CB853F">
                    <asp:Image ID="Image1" runat="server" Height="141px" Width="133px" ImageUrl="~/Models/images/anhlogo/3.png" />
                </td>
                <td class="auto-style4" style="background-color: #CB853F">
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
                            <td class="auto-style7">
                                <strong>
                                <asp:LinkButton ID="lbtNhanVien" runat="server" CssClass="auto-style36" OnClick="lbtNhanVien_Click">Nhân Viên</asp:LinkButton>
                                </strong>
                            </td>
                            <td class="auto-style7"><strong>
                                <asp:LinkButton ID="lbtLoaiSP" runat="server" CssClass="auto-style36" OnClick="lbtLoaiSP_Click">Loại Sản Phẩm</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style7"><strong>
                                <asp:LinkButton ID="lbtSanPham" runat="server" CssClass="auto-style36" OnClick="lbtSanPham_Click">Sản Phẩm</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style7"><strong>
                                <asp:LinkButton ID="lbtHoaDon" runat="server" CssClass="auto-style36" OnClick="lbtHoaDon_Click">Hóa Đơn</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style7"><strong>
                                <asp:LinkButton ID="lbtDoanhThu" runat="server" CssClass="auto-style36" OnClick="lbtDoanhThu_Click">Doanh Thu</asp:LinkButton>
                                </strong></td>
                            <td class="auto-style7">&nbsp;</td>
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
                <td class="auto-style47" style="background-color: #FFCC99"></td>
                <td class="auto-style48" style="background-color: #FFCC99">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style49"><strong>Mã nhân viên</strong></td>
                            <td class="auto-style44">
                                <strong>
                                <asp:TextBox ID="txtMaNV" runat="server" Height="30px" Width="300px" CssClass="auto-style42"></asp:TextBox>
                                </strong>
                            </td>
                            <td class="auto-style49"><strong>Mật khẩu</strong></td>
                            <td class="auto-style44">
                                <strong>
                                <asp:TextBox ID="txtMatKhau" runat="server" Height="30px" Width="300px" CssClass="auto-style42"></asp:TextBox>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style49"><strong>Tên nhân viên</strong></td>
                            <td class="auto-style44">
                                <strong>
                                <asp:TextBox ID="txtTenNV" runat="server" Height="30px" Width="300px" CssClass="auto-style42"></asp:TextBox>
                                </strong>
                            </td>
                            <td class="auto-style49"><strong>Điện thoại</strong></td>
                            <td class="auto-style44">
                                <strong>
                                <asp:TextBox ID="txtDienThoai" runat="server" Height="30px" Width="300px" CssClass="auto-style42"></asp:TextBox>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style49"><strong>Giới tính</strong></td>
                            <td class="auto-style44">
                                <strong>
                                <asp:DropDownList ID="ddlGioiTinh" runat="server" Height="30px" Width="300px" CssClass="auto-style42">
                                    <asp:ListItem Value="True">Nam</asp:ListItem>
                                    <asp:ListItem Value="False">Nữ</asp:ListItem>
                                </asp:DropDownList>
                                </strong>
                            </td>
                            <td class="auto-style49"><strong>Email</strong></td>
                            <td class="auto-style44">
                                <strong>
                                <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="300px" CssClass="auto-style42"></asp:TextBox>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style49"><strong>Ngày sinh</strong></td>
                            <td class="auto-style44">
                                <strong>
                                <asp:TextBox ID="txtNgaySinh" runat="server" Height="30px" Width="300px" CssClass="auto-style42"></asp:TextBox>
                                </strong>
                            </td>
                            <td class="auto-style49"><strong>Quyền đăng nhập</strong></td>
                            <td class="auto-style44">
                                <strong>
                                <asp:DropDownList ID="ddlQuyenDN" runat="server" Height="30px" Width="300px" CssClass="auto-style42">

                                    <asp:ListItem>Quan Ly</asp:ListItem>

                                    <asp:ListItem>Nhan Vien</asp:ListItem>

                                </asp:DropDownList>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style49"><strong>Địa chỉ</strong></td>
                            <td class="auto-style44">
                                <strong>
                                <asp:TextBox ID="txtDiaChi" runat="server" Height="30px" Width="300px" CssClass="auto-style42"></asp:TextBox>
                                </strong>
                            </td>
                            <td class="auto-style49"></td>
                            <td class="auto-style44"></td>
                        </tr>
                        <tr>
                            <td class="auto-style49">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style49">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <table class="auto-style45">
                        <tr>
                            <td class="auto-style50"><strong>Tìm kiếm theo mã nhân viên</strong></td>
                            <td class="auto-style6">
                                <strong>
                                <asp:TextBox ID="txtTimKiem" runat="server" Height="30px" Width="350px" CssClass="auto-style42"></asp:TextBox>
                                </strong>
                            </td>
                            <td>
                                <strong>
                                <asp:Button ID="btnTimKiem" runat="server" CssClass="auto-style42" Height="35px" Text="Tìm Kiếm" Width="100px" OnClick="btnTimKiem_Click" />
                                </strong>
                            </td>
                        </tr>
                    </table>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style46"></td>
                            <td class="auto-style54" colspan="2"><strong>
                            <asp:Label ID="lblThongbao" runat="server" CssClass="auto-style53" Text="Thông báo"></asp:Label>
                            </strong></td>
                            <td class="auto-style46"></td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><strong>
                        <asp:Button ID="btnThem" runat="server" CssClass="auto-style51" Height="35px" Text="Thêm " Width="100px" OnClick="btnThem_Click"  />
                        </strong></td>
                            <td class="auto-style7"><strong>
                        <asp:Button ID="btnSua" runat="server" CssClass="auto-style8" Height="35px" Text="Sửa" Width="100px" OnClick="btnCapNhat_Click" />
                        </strong></td>
                            <td class="auto-style7"><strong>
                        <asp:Button ID="btnXoa" runat="server" CssClass="auto-style8" Height="35px" Text="Xóa" Width="100px" OnClick="btnXoa_Click" />
                        </strong></td>
                            <td class="auto-style7"><strong>
                        <asp:Button ID="btnLamMoi" runat="server" CssClass="auto-style8" Height="35px" Text="Làm Mới" Width="100px" OnClick="btnLamMoi_Click" />
                        </strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #FFCC99">&nbsp;</td>
                <td style="background-color: #FFFFCC" class="auto-style7">
                    <strong>
                    <asp:GridView ID="grvNhanVien" runat="server" Height="348px" Width="1469px" AutoGenerateColumns="False" CssClass="newStyle9" OnSelectedIndexChanged="gvNhanVien_SelectedIndexChanged1" DataKeyNames="MaNV" DataSourceID="SqlDataSourceNV">
                        <Columns>
                            <asp:BoundField DataField="MaNV" HeaderText="MaNV" ReadOnly="True" SortExpression="MaNV" />
                            <asp:BoundField DataField="MatKhau" HeaderText="MatKhau" SortExpression="MatKhau" />
                            <asp:BoundField DataField="TenNhanVien" HeaderText="TenNhanVien" SortExpression="TenNhanVien" />
                            <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
                            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
                            <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai" />
                            <asp:BoundField DataField="EmailNV" HeaderText="EmailNV" SortExpression="EmailNV" />
                            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                            <asp:BoundField DataField="Quyen" HeaderText="Quyen" SortExpression="Quyen" />
                            <asp:CommandField SelectText="chọn" ShowSelectButton="True" />
                        </Columns>
                        
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceNV" runat="server" ConnectionString="<%$ ConnectionStrings:QLCaffe3ConnectionString4 %>" SelectCommand="SELECT * FROM [NhanVien]"></asp:SqlDataSource>
                    </strong>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
