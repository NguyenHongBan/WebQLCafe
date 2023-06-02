using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQLCafe
{
    public partial class fHoaDon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadMaHD();
            LoadMaKH();
            LoadMaNV();
        }

        protected void lbtNhanVien_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fNhanVien.aspx");
        }

        protected void lbtLoaiSP_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fLoaiSP.aspx");
        }

        protected void lbtSanPham_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fSanPham.aspx");
        }

        protected void lbtHoaDon_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fHoaDon.aspx");
        }

        protected void lbtDoanhThu_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fDoanhThu.aspx");
        }

        public void LoadMaHD()
        {
            QLCaffe3Entities db = new QLCaffe3Entities();
            var lst = (from i in db.HoaDons select i.IDHoaDon).ToList();
            ddlMaHD.DataSource = lst;
            ddlMaHD.DataBind();
        }

        public void LoadMaKH()
        {
            QLCaffe3Entities db = new QLCaffe3Entities();
            var lst = (from i in db.KhachHangs select i.IDKhachHang).ToList();
            ddlMaKH.DataSource = lst;
            ddlMaKH.DataBind();
        }

        public void LoadMaNV()
        {
            QLCaffe3Entities db = new QLCaffe3Entities();
            var lst = (from i in db.NhanViens select i.MaNV).ToList();
            ddlMaNV.DataSource = lst;
            ddlMaNV.DataBind();
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            QLCaffe3Entities db = new QLCaffe3Entities();
        }

        protected void btnLamMoi_Click(object sender, EventArgs e)
        {

        }

        protected void GridViewHoaDon_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}