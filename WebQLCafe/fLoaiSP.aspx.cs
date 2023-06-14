using System;
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
    public partial class fLoaiSP : System.Web.UI.Page
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
            Data.LoaiSP lsp = new Data.LoaiSP();

            var lst = (from n in db.LoaiSPs where n.IDLoai.Contains(txtIDLoai.Text) select n).ToList();
            if (lst.Count() >0 )
            {
                lblThongbao.Text = "Mã Loại sản phẩm đã được sử dụng";
                txtIDLoai.Focus();
            }
            else
            {
                lsp.IDLoai = txtIDLoai.Text;
                lsp.TenLoai = txtTenLoai.Text;
                db.LoaiSPs.Add(lsp);
                db.SaveChanges();
                lblThongbao.Text = "Đã thêm thành công";
                grvLoaiSP.DataBind();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            Data.QLCaffe3Entities db = new Data.QLCaffe3Entities();
            Data.LoaiSP lsp = new Data.LoaiSP();

            lsp = db.LoaiSPs.Where(s => s.IDLoai == txtIDLoai.Text).Single();
            lsp.IDLoai = txtIDLoai.Text;
            lsp.TenLoai = txtTenLoai.Text;

            db.SaveChanges();
            lblThongbao.Text = "Đã sửa thành công";
            grvLoaiSP.DataBind();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            Data.QLCaffe3Entities db = new Data.QLCaffe3Entities();
            Data.LoaiSP lsp = new Data.LoaiSP();
            lsp = db.LoaiSPs.Where(s => s.IDLoai == txtIDLoai.Text).Single();
            lsp.IDLoai = txtIDLoai.Text;
            lsp.TenLoai = txtTenLoai.Text;
            db.LoaiSPs.Remove(lsp);
            db.SaveChanges();
            lblThongbao.Text = "Đã xóa thành công";
            txtIDLoai.Text = string.Empty;
            txtTenLoai.Text = string.Empty;
            grvLoaiSP.DataBind();
        }

        protected void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtIDLoai.Text = string.Empty;
            txtTenLoai.Text = string.Empty;
        }

        protected void grvLoaiSP_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedIndex = grvLoaiSP.SelectedIndex;
            GridViewRow selectedRow = grvLoaiSP.Rows[selectedIndex];
            string value = selectedRow.Cells[0].Text;
            string value1 = selectedRow.Cells[1].Text;

            string decodedValue = HttpUtility.HtmlDecode(value);
            string decodedValue1 = HttpUtility.HtmlDecode(value1);

            txtIDLoai.Text = decodedValue;
            txtTenLoai.Text = decodedValue1;
        }
    }
}