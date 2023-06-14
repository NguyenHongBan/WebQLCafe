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
            if (!IsPostBack)
            {
                using (var dbContext = new Data.QLCaffe3Entities()) 
                {
                    var loaiSanPhamList = dbContext.LoaiSPs.ToList();
                    ddlLoaiSP.DataSource = loaiSanPhamList;
                    ddlLoaiSP.DataTextField = "TenLoai";
                    ddlLoaiSP.DataValueField = "IDLoai";
                    ddlLoaiSP.DataBind();
                }
            }
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
            Data.QLCaffe3Entities db = new Data.QLCaffe3Entities();
            Data.SanPham sp = new Data.SanPham();
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

                    using (Data.QLCaffe3Entities db1 = new Data.QLCaffe3Entities())
                    {
                        Data.SanPham sanPham = new Data.SanPham
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

        protected void btnSua_Click(object sender, EventArgs e)
        {
            string maSP = txtMaSP.Text;
            string tenSP = txtTenSP.Text;
            string idLoaiSP = ddlLoaiSP.SelectedValue;
            string kichCo = txtKichCo.Text;
            int soLuong = int.Parse(txtSoLuong.Text);
            string giaBan = txtGiaBan.Text;
            string moTa = txtMota.Text;
            
            using (var dbContext = new Data.QLCaffe3Entities()) 
            {
                var sanPham = dbContext.SanPhams.FirstOrDefault(sp => sp.IDSanPham == maSP);
                if (sanPham != null)
                {
                   
                    sanPham.TenSanPham = tenSP;
                    sanPham.IDLoai = idLoaiSP;
                    sanPham.KichCo = kichCo;
                    sanPham.Soluong = soLuong;
                    sanPham.GiaBan = giaBan;
                    sanPham.MoTa = moTa;
                    
                    dbContext.SaveChanges();
                    
                    lblThongbao.Text = "Cập nhật thông tin thành công!";
                    
                    GridViewSanPham.DataBind();
                }
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            string maSanPham = txtMaSP.Text;
            using (Data.QLCaffe3Entities db = new Data.QLCaffe3Entities())
            {
                Data.SanPham sanPham = db.SanPhams.FirstOrDefault(sp => sp.IDSanPham == maSanPham);
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

            string maSP = selectedRow.Cells[0].Text;
            string TenSP = selectedRow.Cells[1].Text;
            string maLoai = selectedRow.Cells[2].Text;
            string kichCo = selectedRow.Cells[3].Text;
            string soLuong = selectedRow.Cells[4].Text;
            string giaBan = selectedRow.Cells[5].Text;
            string mota = selectedRow.Cells[6].Text;

            string decodedMaSP = HttpUtility.HtmlDecode(maSP);
            string decodedTenSP = HttpUtility.HtmlDecode(TenSP);
            string decodedMaLoai = HttpUtility.HtmlDecode(maLoai);
            string decodedKichCo = HttpUtility.HtmlDecode(kichCo);
            string decodedSoLuong = HttpUtility.HtmlDecode(soLuong);
            string decodedGiaBan = HttpUtility.HtmlDecode(giaBan);
            string decodedMota = HttpUtility.HtmlDecode(mota);

            txtMaSP.Text = decodedMaSP;
            txtTenSP.Text = decodedTenSP;
            ddlLoaiSP.Text = decodedMaLoai;
            txtKichCo.Text = decodedKichCo;
            txtSoLuong.Text = decodedSoLuong;
            txtGiaBan.Text = decodedGiaBan;
            txtMota.Text = decodedMota;          
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