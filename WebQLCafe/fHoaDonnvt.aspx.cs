﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQLCafe
{
    public partial class fHoaDon_NVT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtLoaiSP_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fLoaiSPnvt.aspx");
        }

        protected void lbtSanPham_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fSanPhamnvt.aspx");
        }

        protected void lbtHoaDon_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fHoaDonnvt.aspx");
        }

        public void loadMaHD()
        {
            Data.QLCaffe3Entities db = new Data.QLCaffe3Entities();
            var lst = (from l in db.HoaDons select l.IDHoaDon).ToList();
            ddlMaHD.DataSource = lst;
            ddlMaHD.DataBind();
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string idHoaDon = ddlMaHD.Text;
            using (var context = new Data.QLCaffe3Entities())
            {
                var hoaDon = (from hd in context.HoaDons
                              where hd.IDHoaDon == idHoaDon
                              select hd).FirstOrDefault();

                if (hoaDon != null)
                {
                    txtMaKH.Text = hoaDon.IDKhachHang;
                    txtMaNV.Text = hoaDon.MaNV;
                    txtNgay.Text = hoaDon.NgayDatHang;
                }
            }
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
    }
}