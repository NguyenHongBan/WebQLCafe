﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebQLCafe
{
    public partial class fNhanVien : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtNhanVien_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fNhanVien.aspx");
        }

        protected void lbtLoaiSP_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fLoaiSP.aspx");
        }

        protected void lbtSanPham_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fSanPham.aspx");
        }

        protected void lbtHoaDon_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fHoaDon.aspx");
        }

        protected void lbtDoanhThu_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fDoanhThu.aspx");
        }

        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                HttpCookie userCookie = new HttpCookie("UserInfo");
                userCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(userCookie);
            }
            Response.Redirect("fDangNhap.aspx");
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Data.QLCaffe3Entities db = new Data.QLCaffe3Entities();
            Data.NhanVien nv = new Data.NhanVien();
            if (txtMaNV.Text == "")
            {
                lblThongbao.Text = "Mã nhân viên đang trống!";
                txtMaNV.Focus();
            }
            if (txtMatKhau.Text == "")
            {
                lblThongbao.Text = "Mật khẩu đang trống!";
                txtMatKhau.Focus();
            }
            if (txtTenNV.Text == "")
            {
                lblThongbao.Text = "Tên nhân viên đang trống!";
                txtTenNV.Focus();
            }
            if (txtNgaySinh.Text == "")
            {
                lblThongbao.Text = "Ngày sinh đang trống!";
                txtNgaySinh.Focus();
            }
            if (txtDienThoai.Text == "")
            {
                lblThongbao.Text = "Số điện thoại đang trống!";
                txtDienThoai.Focus();
            }
            if (txtEmail.Text == "")
            {
                lblThongbao.Text = "Email đang trống!";
                txtEmail.Focus();
            }
            if (txtDiaChi.Text == "")
            {
                lblThongbao.Text = "Địa chỉ đang trống!";
                txtDiaChi.Focus();
            }
            else
            {
                var lst = (from n in db.NhanViens 
                           where n.MaNV.Contains(txtMaNV.Text) 
                           select n).ToList();
                if (lst.Count() > 0)
                {
                    lblThongbao.Text = "Mã nhân viên đã tồn tại";
                    txtMaNV.Focus();
                }
                else
                {
                    nv.MaNV = txtMaNV.Text;
                    nv.MatKhau = txtMatKhau.Text;
                    nv.TenNhanVien = txtTenNV.Text;
                    nv.GioiTinh = ddlGioiTinh.Text;
                    nv.NgaySinh = txtNgaySinh.Text;
                    nv.DienThoai = txtDienThoai.Text;
                    nv.EmailNV = txtEmail.Text;
                    nv.DiaChi = txtDiaChi.Text;
                    nv.Quyen = ddlQuyenDN.Text;

                    db.NhanViens.Add(nv);
                    db.SaveChanges();
                    lblThongbao.Text = "Đã thêm thành công!";
                    grvNhanVien.DataBind();
                }
            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            Data.QLCaffe3Entities db = new Data.QLCaffe3Entities();
            Data.NhanVien nv = new Data.NhanVien();
            nv = db.NhanViens.Where(s => s.MaNV == txtMaNV.Text).Single();
            nv.MaNV = txtMaNV.Text;
            nv.MatKhau = txtMatKhau.Text;
            nv.TenNhanVien = txtTenNV.Text;
            nv.GioiTinh = ddlGioiTinh.Text;
            nv.NgaySinh = txtNgaySinh.Text;
            nv.DienThoai = txtDienThoai.Text;
            nv.EmailNV = txtEmail.Text;
            nv.DiaChi = txtDiaChi.Text;
            nv.Quyen = ddlQuyenDN.Text;

            db.SaveChanges();
            lblThongbao.Text = "Đã sửa thông tin thành công!";
            grvNhanVien.DataBind();

        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            string maNhanVien = txtMaNV.Text;
            Data.QLCaffe3Entities db = new Data.QLCaffe3Entities();
            Data.NhanVien nhanVien = db.NhanViens.FirstOrDefault(nv => nv.MaNV == maNhanVien);
            if (nhanVien != null)
            {
                db.NhanViens.Remove(nhanVien);
                db.SaveChanges();
                lblThongbao.Text = "Đã xóa thành công!";
                grvNhanVien.DataBind();
                txtMaNV.Text = string.Empty;
                txtMatKhau.Text = string.Empty;
                txtTenNV.Text = string.Empty;
                ddlGioiTinh.SelectedIndex = 0;
                txtNgaySinh.Text = string.Empty;
                txtDienThoai.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtDiaChi.Text = string.Empty;
                ddlQuyenDN.Text = string.Empty;
            }
        }

        protected void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaNV.Text = string.Empty;
            txtMatKhau.Text = string.Empty;
            txtTenNV.Text = string.Empty;
            ddlGioiTinh.SelectedIndex = 0;
            txtNgaySinh.Text = string.Empty;
            txtDienThoai.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtDiaChi.Text = string.Empty;
            ddlQuyenDN.Text = string.Empty;
        }

        private Data.NhanVien TimKiemNhanVienTheoMa(string maNV)
        {
            using (var context = new Data.QLCaffe3Entities())
            {
                return context.NhanViens.FirstOrDefault(nv => nv.MaNV == maNV);
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string maNV = txtTimKiem.Text;
            Data.NhanVien nv = TimKiemNhanVienTheoMa(maNV);
            if (nv != null)
            {
                txtMaNV.Text = nv.MaNV;
                txtMatKhau.Text = nv.MatKhau;
                txtTenNV.Text = nv.TenNhanVien;
                ddlGioiTinh.SelectedValue = nv.GioiTinh;
                txtNgaySinh.Text = nv.NgaySinh;
                txtDienThoai.Text = nv.DienThoai;
                txtEmail.Text = nv.EmailNV;
                txtDiaChi.Text = nv.DiaChi;
                ddlQuyenDN.SelectedValue = nv.Quyen;
                grvNhanVien.DataBind();
                grvNhanVien.SelectedIndex = 0;
            }
            else
            {
                txtMaNV.Text = "";
                txtMatKhau.Text = "";
                txtTenNV.Text = "";
                ddlGioiTinh.SelectedIndex = 0;
                txtNgaySinh.Text = "";
                txtDienThoai.Text = "";
                txtEmail.Text = "";
                txtDiaChi.Text = "";
                ddlQuyenDN.SelectedIndex = 0;
                lblThongbao.Text = "Không có kết quả!";
                grvNhanVien.DataBind();
            }
        }

        protected void gvNhanVien_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int selectedIndex = grvNhanVien.SelectedIndex;

            GridViewRow selectedRow = grvNhanVien.Rows[selectedIndex];

            string maMV = selectedRow.Cells[0].Text;
            string matKhau = selectedRow.Cells[1].Text;
            string tenNV = selectedRow.Cells[2].Text;
            string gioiTinh = selectedRow.Cells[3].Text;
            string ngaySinh = selectedRow.Cells[4].Text;
            string dienThoai = selectedRow.Cells[5].Text;
            string emailNV = selectedRow.Cells[6].Text;
            string diaChi = selectedRow.Cells[7].Text;
            string quyen = selectedRow.Cells[8].Text;

            string decodedmaNV = HttpUtility.HtmlDecode(maMV);
            string decodedmatKhau = HttpUtility.HtmlDecode(matKhau);
            string decodedtenNV = HttpUtility.HtmlDecode(tenNV);
            string decodedgioiTinh = HttpUtility.HtmlDecode(gioiTinh);
            string decodedngaySinh = HttpUtility.HtmlDecode(ngaySinh);
            string decodeddienThoai = HttpUtility.HtmlDecode(dienThoai);
            string decodedemailNV = HttpUtility.HtmlDecode(emailNV);
            string decodeddiaChi = HttpUtility.HtmlDecode(diaChi);
            string decodedquyen = HttpUtility.HtmlDecode(quyen);

            txtMaNV.Text = decodedmaNV;
            txtMatKhau.Text = decodedmatKhau;
            txtTenNV.Text = decodedtenNV;
            ddlGioiTinh.Text = decodedgioiTinh;
            txtNgaySinh.Text = decodedngaySinh;
            txtDienThoai.Text = decodeddienThoai;
            txtEmail.Text = decodedemailNV;
            txtDiaChi.Text = decodeddiaChi;
            ddlQuyenDN.SelectedIndex = 0;
            ddlQuyenDN.Text = decodedquyen;
        }
    }
}
