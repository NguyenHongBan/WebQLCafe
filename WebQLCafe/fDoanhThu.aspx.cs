﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQLCafe
{
    public partial class fDoanhThu : System.Web.UI.Page
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

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string ngayTimKiem = txtTKtheoNgay.Text;
            using (var context = new QLCaffe3Entities())
            {
                var doanhThu = context.DoanhThus.FirstOrDefault(dt => dt.Ngay == ngayTimKiem);

                if (doanhThu != null)
                {
                    txtTongTien.Text = doanhThu.SoTien;
                }
                else
                {
                    txtTongTien.Text = "Không có kết quả";
                }
            }
        }

        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fDangNhap.aspx");
        }
    }
}