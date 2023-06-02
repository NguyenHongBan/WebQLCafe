using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQLCafe
{
    public partial class fDangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDN_Click(object sender, EventArgs e)
        {
            Data.QLCaffe3Entities db = new Data.QLCaffe3Entities();

            if (txtMaNV.Text == "")
            {

                lblThongbao.Text = "Mã Nhân Viên đang trống";
                txtMaNV.Focus();

            }
            else if (txtMK.Text == "")
            {
                lblThongbao.Text = "Mật Khẩu đang trống";
                txtMK.Focus();
            }
            else
            {
                var query1 = from a in db.NhanViens select a.MaNV;

                foreach (var a in query1)
                {
                    if (a == txtMaNV.Text)
                    {
                        var query2 = from b in db.NhanViens where b.MaNV == a select b.MatKhau;
                        foreach (var b in query2)
                        {
                            if (b == txtMK.Text)
                            {
                                var query3 = from c in db.NhanViens where c.MaNV == a select c.Quyen;
                                foreach (var c in query3)
                                {
                                    if (c == "Quan Ly")
                                    {
                                        Session.Abandon();
                                        Response.Redirect("fNhanVien.aspx");
                                    }
                                    else if (c == "Nhan Vien")
                                    {
                                        Session.Abandon();
                                        Response.Redirect("fLoaiSP_NVT.aspx");
                                    }
                                }
                            }
                            else
                            {
                                lblThongbao.Text = "Mật Khẩu không chính xác!";
                            }
                        }
                    }
                    else
                    {
                        lblThongbao.Text = "Mã Nhân Viên không chính xác!";
                    }
                }
            }
            Response.Redirect("fNhanVien.aspx");
        }

        protected void ckhHienMK_CheckedChanged(object sender, EventArgs e)
        {
            if (ckhHienMK.Checked)
            {
                txtMK.TextMode = TextBoxMode.SingleLine;
            }
            else
            {
                txtMK.TextMode = TextBoxMode.Password;
            }
        }
    }
}