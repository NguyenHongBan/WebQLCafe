using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.Entity;

namespace WebQLCafe
{
    public partial class fSanPham_NVT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadSP();
        }

        protected void lbtLoaiSP_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fLoaiSP_NVT.aspx");
        }

        protected void lbtSanPham_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fSanPham_NVT.aspx");
        }

        protected void lbtHoaDon_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("fHoaDon_NVT.aspx");
        }

        public void loadSP()
        {
            QLCaffe3Entities db = new QLCaffe3Entities();
            var lst = (from l in db.LoaiSPs select l.IDLoai).ToList();
            ddlLoaiSP.DataSource = lst;
            ddlLoaiSP.DataBind();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (fulHinhAnh.HasFile)
            {
                string fileName = Path.GetFileName(fulHinhAnh.PostedFile.FileName);

                string directoryPath = Server.MapPath("~/Images/");

                if (!Directory.Exists(directoryPath))
                {
                    Directory.CreateDirectory(directoryPath);
                }

                string filePath = Path.Combine(directoryPath, fileName);
                fulHinhAnh.PostedFile.SaveAs(filePath);

                using (QLCaffe3Entities db = new QLCaffe3Entities())
                {
                    SanPham sanPham = new SanPham
                    {
                        IDSanPham = txtMaSP.Text,
                        TenSanPham = txtTenSP.Text,
                        IDLoai = ddlLoaiSP.Text,
                        KichCo = txtKichCo.Text,
                        Soluong = int.Parse(txtSoLuong.Text),
                        GiaBan = txtGiaBan.Text,
                        MoTa = txtMota.Text,
                        Anh = fileName
                    };

                    db.SanPhams.Add(sanPham);
                    db.SaveChanges();
                    lblThongbao.Text = "Đã Thêm thành công";
                    GridViewSanPhamNVT.DataBind();
                }
            }
        }

        private SanPham GetSanPham(string maSanPham)
        {
            using (QLCaffe3Entities db = new QLCaffe3Entities())
            {
                return db.SanPhams.FirstOrDefault(sp => sp.IDSanPham == maSanPham);
            }
        }
        protected void btnSua_Click(object sender, EventArgs e)
        {
            string maSP = txtMaSP.Text;
            SanPham sanPham = GetSanPham(maSP);
            if (sanPham != null)
            {
                sanPham.TenSanPham = txtTenSP.Text;
                sanPham.IDLoai = ddlLoaiSP.SelectedValue;
                sanPham.KichCo = txtKichCo.Text;
                sanPham.Soluong = int.Parse(txtSoLuong.Text);
                sanPham.GiaBan = txtGiaBan.Text;
                sanPham.MoTa = txtMota.Text;

                if (fulHinhAnh.HasFile)
                {
                    string fileName = Path.GetFileName(fulHinhAnh.FileName);
                    string filePath = Server.MapPath("~/Images/" + fileName);
                    fulHinhAnh.SaveAs(fileName);
                    sanPham.Anh = fileName;
                }
                using (QLCaffe3Entities db = new QLCaffe3Entities())
                {
                    db.Entry(sanPham).State = EntityState.Modified;
                    db.SaveChanges();
                    lblThongbao.Text = "Đã Sửa thông tin thành công";
                }
                GridViewSanPhamNVT.DataBind();
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            string maSanPham = txtMaSP.Text;
            using (QLCaffe3Entities db = new QLCaffe3Entities())
            {
                SanPham sanPham = db.SanPhams.FirstOrDefault(sp => sp.IDSanPham == maSanPham);
                if (sanPham != null)
                {
                    db.SanPhams.Remove(sanPham);
                    db.SaveChanges();
                    lblThongbao.Text = "Đã xóa thành công";
                    GridViewSanPhamNVT.DataBind();
                    txtMaSP.Text = string.Empty;
                    txtTenSP.Text = string.Empty;
                    ddlLoaiSP.SelectedIndex = 0;
                    txtKichCo.Text = string.Empty;
                    txtSoLuong.Text = string.Empty;
                    txtGiaBan.Text = string.Empty;
                    txtMota.Text = string.Empty;
                    fulHinhAnh.Attributes.Clear();
                }
            }
        }

        protected void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaSP.Text = string.Empty;
            txtTenSP.Text = string.Empty;
            ddlLoaiSP.SelectedIndex = 0;
            txtKichCo.Text = string.Empty;
            txtSoLuong.Text = string.Empty;
            txtGiaBan.Text = string.Empty;
            txtMota.Text = string.Empty;
            fulHinhAnh.Attributes.Clear();
        }

        protected void GridViewSanPhamNVT_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedIndex = GridViewSanPhamNVT.SelectedIndex;

            GridViewRow selectedRow = GridViewSanPhamNVT.Rows[selectedIndex];

            string value1 = selectedRow.Cells[1].Text;
            string value2 = selectedRow.Cells[2].Text;
            string value3 = selectedRow.Cells[3].Text;
            string value4 = selectedRow.Cells[4].Text;
            string value5 = selectedRow.Cells[5].Text;
            string value6 = selectedRow.Cells[6].Text;
            string value7 = selectedRow.Cells[7].Text;

            string decodedValue1 = HttpUtility.HtmlDecode(value1);
            string decodedValue2 = HttpUtility.HtmlDecode(value2);
            string decodedValue3 = HttpUtility.HtmlDecode(value3);
            string decodedValue4 = HttpUtility.HtmlDecode(value4);
            string decodedValue5 = HttpUtility.HtmlDecode(value5);
            string decodedValue6 = HttpUtility.HtmlDecode(value6);
            string decodedValue7 = HttpUtility.HtmlDecode(value7);

            txtMaSP.Text = decodedValue1;
            txtTenSP.Text = decodedValue2;
            ddlLoaiSP.Text = decodedValue3;
            txtKichCo.Text = decodedValue4;
            txtSoLuong.Text = decodedValue5;
            txtGiaBan.Text = decodedValue6;
            txtMota.Text = decodedValue7;
        }
    }
}