<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fNhanVien.aspx.cs" Inherits="WebQLCafe.fNhanVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style10 {
            height: 55px;
            text-align: left;
            width: 480px;
        }
        .auto-style32 {
            width: 100%;
            height: 346px;
        }
        .auto-style33 {
            height: 49px;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style36 {
            height: 55px;
            font-size: large;
            width: 401px;
            text-align: right;
        }
        .auto-style38 {
            font-size: large;
        }
        .auto-style42 {
            height: 48px;
            width: 401px;
            text-align: right;
        }
        .auto-style44 {
            height: 53px;
            font-size: large;
            width: 401px;
            text-align: right;
        }
        .auto-style45 {
            height: 48px;
            width: 363px;
            text-align: left;
        }
        .auto-style46 {
            height: 53px;
            font-size: large;
            width: 363px;
            text-align: left;
        }
        .auto-style47 {
            height: 55px;
            font-size: large;
            width: 363px;
            text-align: left;
        }
        .auto-style48 {
            height: 48px;
            text-align: right;
            width: 260px;
        }
        .auto-style49 {
            height: 53px;
            text-align: right;
            width: 260px;
        }
        .auto-style50 {
            height: 55px;
            text-align: right;
            width: 260px;
        }
        .auto-style51 {
            height: 48px;
            width: 480px;
            text-align: left;
        }
        .auto-style52 {
            height: 53px;
            text-align: left;
            width: 480px;
        }
        .auto-style53 {
            height: 53px;
            font-size: large;
            text-align: center;
        }
        .auto-style54 {
            font-weight: bold;
            font-size: medium;
            margin-bottom: 0px;
        }
        .auto-style55 {
            height: 53px;
            text-align: center;
        }
        .auto-style56 {
            font-size: medium;
        }
        .auto-style57 {
            height: 53px;
            text-align: right;
        }
    </style>
</head>
<body style="height: 521px">
    <form id="form1" runat="server">
        <table class="auto-style32">
            <tr>
                <td class="auto-style33" colspan="4" style="background-color: #FFCC66"><strong>NHÂN VIÊN</strong></td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #FFCC66"><span class="auto-style38">Mã nhân viên</span></td>
                <td class="auto-style45" style="background-color: #FFCC66">
                    <asp:TextBox ID="TextBox1" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style48" style="background-color: #FFCC66"><span class="auto-style38"> Giới tính</span></td>
                <td class="auto-style51" style="background-color: #FFCC66"><span class="auto-style38"> &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="213px">
                    <asp:ListItem Value="True">Nam</asp:ListItem>
                    <asp:ListItem Value="False">Nữ</asp:ListItem>
                    </asp:DropDownList>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style44" style="background-color: #FFCC66">Tên nhân viên</td>
                <td class="auto-style46" style="background-color: #FFCC66">&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style49" style="background-color: #FFCC66"><span class="auto-style38"> Điện thoại</span></td>
                <td class="auto-style52" style="background-color: #FFCC66">&nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="209px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36" style="background-color: #FFCC66">Ngày sinh</td>
                <td class="auto-style47" style="background-color: #FFCC66">&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style50" style="background-color: #FFCC66"><span class="auto-style38"> Email</span></td>
                <td class="auto-style10" style="background-color: #FFCC66">&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="209px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style44" style="background-color: #FFCC66">Địa chỉ
                    </td>
                <td class="auto-style46" style="background-color: #FFCC66">
                    <asp:TextBox ID="TextBox4" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style57" style="background-color: #FFCC66" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style53" style="background-color: #FFCC66" colspan="2"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style54" ForeColor="#FF3300" Height="35px" Text="Đóng" Width="133px" />
                    </strong>
                    </td>
                <td class="auto-style55" style="background-color: #FFCC66" colspan="2">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style56" Height="33px" Text="Thêm" Width="92px" />
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style56" Height="33px" Text="Sửa" Width="92px" />
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style56" Height="33px" Text="Xóa" Width="92px" />
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style56" Height="33px" Text="Làm mới" Width="92px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style53" style="background-color: #FFCC66" colspan="4">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="193px" Width="1453px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    </td>
            </tr>
            </table>
    </form>
</body>
</html>
