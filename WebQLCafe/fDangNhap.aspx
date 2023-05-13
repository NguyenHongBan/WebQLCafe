<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fDangNhap.aspx.cs" Inherits="WebQLCafe.fDangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QUẢN LÝ CÀ PHÊ</title>
    <style type="text/css">
        .auto-style1 {
            width: 199px;
            text-align: center;
            background-color: #CC9966;
        }
        .auto-style2 {
            width: 534px;
            background-color: #CC9966;
            font: bold; 
            font-family:Arial; 
            font-size: 20px; 
            color: #663300;
            
        }
        .auto-style3 {
            width: 199px;
            height: 23px;
            background-color: #CC9966;
        }
        .auto-style4 {
            width: 534px;
            height: 23px;
            background-color: #CC9966;
        }
        .auto-style5 {
            width: 199px;
            text-align: center;
            height: 52px;
            background-color: #CC9966;
        }
        .auto-style6 {
            width: 534px;
            height: 52px;
            background-color: #CC9966;
        }
        .auto-style7 {
            width: 78%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style7">
                <tr>
                    <td colspan="2" style="font: bold; text-align:center; font-size: 40px; font-family:Arial; background-color: #CC9900; color: #663300">Đăng Nhập</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" style="font: bold; font-family:Arial; font-size: 20px; color: #663300">Mã Nhân Viên</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtMaNV" runat="server" Height="42px" Width="705px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font: bold; font-family:Arial; font-size: 20px; color: #663300">Mật Khẩu</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMatKhau" runat="server" Height="42px" Width="705px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font: bold; font-family:Arial; font-size: 20px; color: #663300">Quyền</td>
                    <td class="auto-style2">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Value="NVQL">NV Quản Lý</asp:ListItem>
                            <asp:ListItem Value="NVQLSP">NV Quản Lý Sản Phẩm</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnDangNhap" runat="server" Text="Đăng Nhập" Height="47px" Width="182px" BackColor="#FFCC00" Font-Bold="true" Font-Size="20px" OnClick="btnDangNhap_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
