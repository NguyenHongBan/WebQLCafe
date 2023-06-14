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
            string maNV = txtMaNV.Text;
            string matKhau = txtMK.Text;

            using (Data.QLCaffe3Entities db = new Data.QLCaffe3Entities())
            {
                var nhanVien = db.NhanViens.FirstOrDefault(nv => nv.MaNV == maNV);
                if (nhanVien == null)
                {
                    lblThongbao.Text = "Sai mã nhân viên, vui lòng nhập lại.";
                    return;
                }

                if (nhanVien.MatKhau != matKhau)
                {
                    lblThongbao.Text = "Sai mật khẩu, vui lòng nhập lại.";
                    return;
                }

                if (nhanVien.Quyen == "Quan Ly")
                {
                    Response.Redirect("fNhanVien.aspx");
                }
                else if (nhanVien.Quyen == "Nhan Vien")
                {
                    Response.Redirect("fLoaiSP_NVT.aspx");
                }

                HttpCookie userCookie = new HttpCookie("UserInfo");
                userCookie["MaNV"] = nhanVien.MaNV;
                userCookie["MatKhau"] = nhanVien.MatKhau;
                userCookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(userCookie);
            }
        }
    }
}