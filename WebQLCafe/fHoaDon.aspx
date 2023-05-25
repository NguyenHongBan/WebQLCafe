<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fHoaDon.aspx.cs" Inherits="WebQLCafe.fHoaDon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style33 {
            height: 49px;
            text-align: center;
            font-size: x-large;
        }
        .auto-style42 {
            height: 48px;
            width: 401px;
            text-align: right;
        }
        .auto-style38 {
            font-size: large;
        }
        .auto-style45 {
            height: 48px;
            width: 363px;
            text-align: left;
        }
        .auto-style48 {
            height: 48px;
            text-align: right;
            width: 260px;
            font-size: large;
        }
        .auto-style51 {
            height: 48px;
            width: 480px;
            text-align: left;
            font-size: large;
            background-color: #FFCC66;
        }
        .auto-style44 {
            height: 53px;
            font-size: large;
            width: 401px;
            text-align: right;
        }
        .auto-style46 {
            height: 53px;
            font-size: large;
            width: 363px;
            text-align: left;
        }
        .auto-style49 {
            height: 53px;
            text-align: right;
            width: 260px;
            font-size: large;
        }
        .auto-style52 {
            height: 53px;
            text-align: left;
            width: 480px;
        }
        .auto-style36 {
            height: 55px;
            font-size: large;
            width: 401px;
            text-align: right;
        }
        .auto-style47 {
            height: 55px;
            font-size: large;
            width: 363px;
            text-align: left;
        }
        .auto-style50 {
            height: 55px;
            text-align: right;
            width: 260px;
            font-size: large;
        }
        .auto-style10 {
            height: 55px;
            text-align: left;
            width: 480px;
        }
        .auto-style57 {
            height: 53px;
            text-align: right;
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
        .auto-style32 {
            width: 100%;
            height: 340px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style32">
            <tr>
                <td class="auto-style33" colspan="4" style="background-color: #FFCC66"><strong>HÓA ĐƠN</strong></td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #FFCC66"><span class="auto-style38">Mã đơn hàng</span></td>
                <td class="auto-style45" style="background-color: #FFCC66">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="24px" Width="251px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style48" style="background-color: #FFCC66">Mã khách hàng</td>
                <td class="auto-style51">
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="24px" Width="251px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style44" style="background-color: #FFCC66">Mã sản phẩm</td>
                <td class="auto-style46" style="background-color: #FFCC66">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="24px" Width="251px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style49" style="background-color: #FFCC66">Ngày</td>
                <td class="auto-style52" style="background-color: #FFCC66">
                    <asp:TextBox ID="TextBox8" runat="server" Height="19px" Width="241px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36" style="background-color: #FFCC66">Mã nhân viên</td>
                <td class="auto-style47" style="background-color: #FFCC66">
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="24px" Width="251px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style50" style="background-color: #FFCC66">Giờ</td>
                <td class="auto-style10" style="background-color: #FFCC66">
                    <asp:TextBox ID="TextBox9" runat="server" Height="19px" Width="241px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style44" style="background-color: #FFCC66">Địa chỉ
                    </td>
                <td class="auto-style46" style="background-color: #FFCC66">
                    <asp:TextBox ID="TextBox7" runat="server" Height="19px" Width="241px"></asp:TextBox>
                </td>
                <td class="auto-style57" style="background-color: #FFCC66" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style53" style="background-color: #FFCC66" colspan="2"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style54" ForeColor="#FF3300" Height="35px" Text="Đóng" Width="133px" />
                    </strong>
                    </td>
                <td class="auto-style55" style="background-color: #FFCC66" colspan="2">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style56" Height="33px" Text="Tìm kiếm" Width="92px" />
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style56" Height="33px" Text="Làm mới" Width="92px" />
                </td>
            </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="164px" Width="1485px">
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
    </form>
</body>
</html>
