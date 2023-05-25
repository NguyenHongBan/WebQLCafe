<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fDoanhThu.aspx.cs" Inherits="WebQLCafe.fDoanhThu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
            text-align: right;
            width: 651px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 100%;
            height: 149px;
        }
        .auto-style5 {
            font-size: large;
            text-align: center;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4" style="background-color: #FFCC99;">
                <tr>
                    <td class="auto-style1" colspan="2" style="background-color: #FFCC66"><strong>DOANH THU</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #FFCC66">Tìm kiếm theo ngày</td>
                    <td class="auto-style3" style="background-color: #FFCC66">
                        <asp:TextBox ID="txtTKTheoNgay" runat="server" CssClass="auto-style6" Height="24px" Width="298px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #FFCC66">Tổng tiền</td>
                    <td style="background-color: #FFCC66">
                        <asp:TextBox ID="txtTongTien" runat="server" Height="24px" Width="298px"></asp:TextBox>
                        ( Đơn vị: VNĐ)</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2" style="background-color: #FFCC66">
                        <asp:GridView ID="GrvDT" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1453px">
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
