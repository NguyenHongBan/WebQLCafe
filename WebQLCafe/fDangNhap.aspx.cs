using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WebQLCafe
{
    public partial class fDangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        #region Ham
        void DangNhap()
        {

        }
        #endregion

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            QLCaffe3Entities db = new QLCaffe3Entities();

            if (txtMaNhanVien.Text == "")
            {

                lblThongBao.Text = "Mã Nhân Viên đang trống";
                txtMaNhanVien.Focus();

            }
            else if (txtMK.Text == "")
            {
                lblThongBao.Text = "Mật Khẩu đang trống";
                txtMK.Focus();            }
            else
            {
                var query1 = from a in db.NhanViens select a.MaNV;
                
                foreach(var a in query1)
                {
                    if (a == txtMaNhanVien.Text)
                    {
                        var query2 = from b in db.NhanViens where b.MaNV == a select b.MatKhau;
                        foreach (var b in query2)
                        {
                            if (b == txtMK.Text)
                            {
                                var query3 = from c in db.NhanViens where c.MaNV == a select c.Quyen;
                                foreach (var c in query3)
                                {
                                    if (c == "1")
                                    {
                                        Session.Abandon();
                                        Response.Redirect("fNhanVien.aspx");
                                    }
                                    else if (c == "0")
                                    {
                                        Session.Abandon();
                                        Response.Redirect("fLoaiSP_NVT.aspx");
                                    }
                                }
                            }
                            else
                            {
                                lblThongBao.Text = "Mật Khẩu không chính xác!";
                            }
                        }
                    }
                    else
                    {
                        lblThongBao.Text = "Mã Nhân Viên không chính xác!";
                    }
                }
            }
        }

        protected void ckbHienMK_CheckedChanged1(object sender, EventArgs e)
        {
            if (ckbHienMK.Checked)
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