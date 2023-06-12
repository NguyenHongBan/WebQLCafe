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
                lblThongbao.Text = "Mã nhân viên đang trống";
                txtMaNV.Focus();
            }
            else if(txtMK.Text == "")
            {
                lblThongbao.Text = "Mật khẩu đang trống";
                txtMK.Focus();
            }
            else
            {
                var nhanVien = db.NhanViens.FirstOrDefault(nv => nv.MaNV == txtMaNV.Text);
                if(nhanVien == null)
                {
                    lblThongbao.Text = "Sai mã nhân viên vui lòng nhập lại";
                    txtMaNV.Focus();
                }
                else if (nhanVien.MatKhau == txtMK.Text)
                {
                    if (nhanVien.Quyen == "Quan Ly")
                    {
                        Session.Abandon();
                        Response.Redirect("fNhanVien.aspx");
                    }
                    else if(nhanVien.Quyen == "Nhan Vien")
                    {
                        Session.Abandon();
                        Response.Redirect("fLoaiSP_NVT.aspx");
                    }
                }
                else
                {
                    lblThongbao.Text = "Sai mật khẩu vui lòng nhập lại";
                    txtMK.Focus();
                }
                
            }
        }
    }
}