<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fSanPham.aspx.cs" Inherits="WebQLCafe.fSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style42 {
            height: 48px;
            width: 401px;
            text-align: right;
        }
        .auto-style38 {
            font-size: large;
        }
        .auto-style51 {
            height: 48px;
            width: 480px;
            text-align: left;
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
            width: 503px;
            text-align: left;
        }
        .auto-style49 {
            height: 53px;
            text-align: center;
            width: 534px;
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
            width: 503px;
            text-align: left;
        }
        .auto-style50 {
            height: 55px;
            text-align: center;
            font-size: large;
        }
        .auto-style57 {
            height: 53px;
            text-align: center;
        }
        .auto-style58 {
            height: 52px;
            font-size: large;
            text-align: center;
        }
        .auto-style61 {
            height: 48px;
            width: 534px;
            text-align: right;
            font-size: large;
        }
        .auto-style62 {
            height: 48px;
            width: 503px;
            text-align: left;
        }
        .auto-style63 {
            height: 53px;
            text-align: right;
            width: 534px;
            font-size: large;
        }
        .auto-style64 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                <td class="auto-style42" style="background-color: #FFCC66"><span class="auto-style38">Mã sản phẩm</span></td>
                <td class="auto-style62" style="background-color: #FFCC66">
                    <asp:TextBox ID="txxMSP" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style61" style="background-color: #FFCC66">Loại sản phẩm</td>
                <td class="auto-style51" style="background-color: #FFCC66">
                    <asp:DropDownList ID="ddlLSP" runat="server" Height="19px" Width="220px">
                    </asp:DropDownList>
                </td>
                </tr>
                <tr>
                <td class="auto-style44" style="background-color: #FFCC66">Tên sản phẩm </td>
                <td class="auto-style46" style="background-color: #FFCC66"><asp:TextBox ID="txtSP" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style63" style="background-color: #FFCC66">Giá sản phẩm</td>
                <td class="auto-style52" style="background-color: #FFCC66">
                    <asp:TextBox ID="txtGSP" runat="server" Width="209px" CssClass="auto-style38"></asp:TextBox>
                    <span class="auto-style38">(đơn vị:VNĐ)</span></td>
                </tr>
                <tr>
                <td class="auto-style36" style="background-color: #FFCC66">Kích cỡ</td>
                <td class="auto-style47" style="background-color: #FFCC66">
                    <asp:DropDownList ID="ddlSize" runat="server" Height="30px" Width="218px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style50" style="background-color: #FFCC66" colspan="2">Tìm kiếm theo sản phẩm <asp:TextBox ID="txtSearchSP" runat="server" Height="21px" Width="282px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td class="auto-style44" style="background-color: #FFCC66">&nbsp;</td>
                <td class="auto-style46" style="background-color: #FFCC66">
                    &nbsp;</td>
                <td class="auto-style49" style="background-color: #FFCC66">
                    <asp:Button ID="btnThem" runat="server" CssClass="auto-style64" Height="42px" Text="Thêm" Width="115px" />
                    <asp:Button ID="btnSua" runat="server" CssClass="auto-style64" Height="42px" Text="Sửa" Width="115px" />
                    </td>
                <td class="auto-style57" style="background-color: #FFCC66">
                    <asp:Button ID="btnXoa" runat="server" CssClass="auto-style64" Height="42px" Text="Xóa" Width="115px" />
                    <asp:Button ID="btnReset" runat="server" CssClass="auto-style64" Height="42px" Text="Làm mới" Width="115px" />
                    </td>
                </tr>
                <tr>
                <td class="auto-style58" style="background-color: #FFCC66" colspan="4">
                    <asp:GridView ID="GrvSP" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1455px">
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
        </div>
    </form>
</body>
</html>
