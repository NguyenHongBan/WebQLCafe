using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Entity;
using System.Data;

namespace WebQLCafe
{
    public partial class fSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadSP();
        }

        public void kiemTraform()
        {
            if (txtMaSP.Text == "")
            {
                lblThongbao.Text = "Mã sản phẩm đang trống!";
                txtMaSP.Focus();
            }
            if (txtTenSP.Text == "")
            {
                lblThongbao.Text = "Tên sản phẩm đang trống!";
                txtTenSP.Focus();
            }
            if (txtSoLuong.Text == "")
            {
                lblThongbao.Text = "Số lượng đang trống!";
                txtSoLuong.Focus();
            }
            if (txtGiaBan.Text =="")
            {
                lblThongbao.Text = "Giá bán đang trống";
                txtGiaBan.Focus();
            }
            if (txtMota.Text == "")
            {
                lblThongbao.Text = "Mô tả đang trống!";
                txtMota.Focus();
            }
        }

        public void loadSP()
        {
            QLCaffe3Entities db = new QLCaffe3Entities();
            var lst = (from l in db.LoaiSPs select l.IDLoai).ToList();
            ddlLoaiSP.DataSource = lst;
            ddlLoaiSP.DataBind();
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

        protected void btnThem_Click(object sender, EventArgs e)
        {
            QLCaffe3Entities db = new QLCaffe3Entities();
            SanPham sp = new SanPham();
            var lst = (from n in db.SanPhams where n.IDSanPham.Contains(txtMaSP.Text) select n).ToList();
            if (lst.Count() > 0)
            {
                lblThongbao.Text = "Mã Sản phẩm đã được sử dụng";
                txtMaSP.Focus();
            }
            else
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

                    using (QLCaffe3Entities db1 = new QLCaffe3Entities())
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

                        db1.SanPhams.Add(sanPham);
                        db1.SaveChanges();
                        lblThongbao.Text = "Đã Thêm thành công";
                        GridViewSanPham.DataBind();
                    }
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
                GridViewSanPham.DataBind();
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
                    GridViewSanPham.DataBind();
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

        protected void GridViewSanPham_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedIndex = GridViewSanPham.SelectedIndex;

            GridViewRow selectedRow = GridViewSanPham.Rows[selectedIndex];

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