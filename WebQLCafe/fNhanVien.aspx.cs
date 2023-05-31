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
    public partial class fNhanVien : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Hiển thị thông tin nhân viên khi trang được tải lần đầu
                //HienThiThongTinNhanVien();
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



        //protected void HienThiThongTinNhanVien()
        //{
        //    // Kết nối đến cơ sở dữ liệu
        //    string connectionString = "Data Source=DESKTOP-8HDAKNO\\TIEN;Initial Catalog=QLCaffe2;Integrated Security=True";
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        // Mở kết nối
        //        connection.Open();

        //        // Tạo câu truy vấn lấy thông tin nhân viên
        //        string query = "SELECT MaNV, TenNhanVien, NgaySinh, DiaChi, GioiTinh, DienThoai, EmailNV FROM NhanVien";

        //        // Tạo đối tượng SqlCommand và SqlDataReader để thực hiện và đọc kết quả câu truy vấn
        //        SqlCommand command = new SqlCommand(query, connection);
        //        SqlDataReader reader = command.ExecuteReader();

        //        // Gán dữ liệu vào GridView
        //        grvNhanVien.DataSource = reader;
        //        grvNhanVien.DataBind();

        //        // Đóng kết nối
        //        connection.Close();
        //    }
        //}


        //protected void LuuThongTinNhanVien(string maNhanVien, string tenNhanVien, string ngaySinh, string diaChi, string gioiTinh, string dienThoai, string email)
        //{
        //    // Kết nối đến cơ sở dữ liệu
        //    string connectionString = "Data Source=DESKTOP-8HDAKNO\\TIEN;Initial Catalog=QLCaffe2;Integrated Security=True";
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        // Mở kết nối
        //        connection.Open();

        //        // Tạo câu truy vấn chèn dữ liệu
        //        string query = "INSERT INTO NhanVien (MaNV, TenNhanVien, NgaySinh, DiaChi, GioiTinh, DienThoai, EmailNV) " +
        //                     "VALUES (@MaNV,@TenNhanVien, @NgaySinh, @DiaChi, @GioiTinh, @DienThoai, @EmailNV)";

        //        // Tạo và cấu hình đối tượng SqlCommand
        //        SqlCommand command = new SqlCommand(query, connection);
        //        command.Parameters.AddWithValue("@MaNV", maNhanVien);
        //        command.Parameters.AddWithValue("@TenNhanVien", tenNhanVien);
        //        command.Parameters.AddWithValue("@NgaySinh", ngaySinh);
        //        command.Parameters.AddWithValue("@DiaChi", diaChi);
        //        command.Parameters.AddWithValue("@GioiTinh", gioiTinh);
        //        command.Parameters.AddWithValue("@DienThoai", dienThoai);
        //        command.Parameters.AddWithValue("@EmailNV", email);

        //        // Thực hiện câu truy vấn chèn dữ liệu
        //        command.ExecuteNonQuery();

        //        // Đóng kết nối
        //        connection.Close();
        //    }
        //}

        //protected void btnLamMoi_Click(object sender, EventArgs e)
        //{
        //    txtMaNV.Text = "";
        //    txtTenNV.Text = "";
        //    txtNgaySinh.Text = "";
        //    txtDiaChi.Text = "";
        //    ddlGioiTinh.SelectedIndex = 0;
        //    txtDienThoai.Text = "";
        //    txtEmail.Text = "";
        //    txtMatKhau.Text = "";
        //}

        //protected void btnXoa_Click(object sender, EventArgs e)
        //{
        //    string mnv = txtMaNV.Text; // Lấy mã nhân viên từ ô txtMNV

        //    // Chuỗi kết nối tới cơ sở dữ liệu SQL Server
        //    string connectionString = "Data Source=DESKTOP-8HDAKNO\\TIEN;Initial Catalog=QLCaffe2;Integrated Security=True";
        //    // Tạo đối tượng SqlConnection
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        connection.Open();

        //        // Tạo câu lệnh SQL để xóa thông tin nhân viên
        //        string sql = "DELETE FROM NhanVien WHERE MaNV = @mnv";

        //        // Tạo đối tượng SqlCommand
        //        using (SqlCommand command = new SqlCommand(sql, connection))
        //        {
        //            // Thêm tham số cho câu lệnh SQL
        //            command.Parameters.AddWithValue("@mnv", mnv);

        //            // Thực thi câu lệnh SQL
        //            int rowsAffected = command.ExecuteNonQuery();

        //            if (rowsAffected > 0)
        //            {
        //                // Xóa thành công

        //                string script = "alert('Xóa thành công!');";
        //                script += "window.location.href='fNhanVien.aspx';";
        //                ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //            }
        //            else
        //            {
        //                // Không tìm thấy nhân viên để xóa
        //                string script = "alert('Xóa thất bại!');";
        //                script += "window.location.href='fNhanVien.aspx';";
        //                ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //            }
        //        }
        //    }
        //}

        //protected void btnThem_Click(object sender, EventArgs e)
        //{
        //    string maNhanVien = txtMaNV.Text;
        //    string tenNhanVien = txtTenNV.Text;
        //    string ngaySinh = txtNgaySinh.Text;
        //    string diaChi = txtDiaChi.Text;
        //    string gioiTinh = ddlGioiTinh.SelectedItem.Text;
        //    string dienThoai = txtDienThoai.Text;
        //    string email = txtEmail.Text;
        //    string matkhau = txtMatKhau.Text;
        //    string quyenDangNhap = ddlQuyenDN.SelectedItem.Text;
        //    // Chuỗi kết nối tới cơ sở dữ liệu SQL Server
        //    string connectionString = "Data Source=DESKTOP-8HDAKNO\\TIEN;Initial Catalog=QLCaffe2;Integrated Security=True";
        //    // Tạo đối tượng SqlConnection
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        connection.Open();
        //        if (string.IsNullOrEmpty(maNhanVien) || string.IsNullOrEmpty(tenNhanVien) || string.IsNullOrEmpty(ngaySinh) ||
        //        string.IsNullOrEmpty(diaChi) || string.IsNullOrEmpty(dienThoai) || string.IsNullOrEmpty(gioiTinh) ||
        //        string.IsNullOrEmpty(email) || string.IsNullOrEmpty(matkhau) || string.IsNullOrEmpty(quyenDangNhap))
        //        {
        //            // Hiển thị thông báo lỗi và không thêm dữ liệu vào cơ sở dữ liệu
        //            string script = "alert('Vui lòng nhập đầy đủ thông tin!!');";
        //            ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //        }

        //        // Kiểm tra xem mã nhân viên đã tồn tại hay chưa
        //        string checkSql = "SELECT COUNT(*) FROM NhanVien WHERE MaNV = @MaNV";

        //        // Tạo đối tượng SqlCommand để thực thi câu lệnh kiểm tra
        //        using (SqlCommand checkCommand = new SqlCommand(checkSql, connection))
        //        {
        //          // Thêm tham số cho câu lệnh SQL kiểm tra
        //         checkCommand.Parameters.AddWithValue("@MaNV", maNhanVien);

        //           int existingCount = (int)checkCommand.ExecuteScalar();

        //            if (existingCount > 0)
        //            {
        //                // Mã nhân viên đã tồn tại, không thể thêm
        //                string script = "alert('Mã nhân viên đã tồn tại. Không thể thêm!!');";
        //                script += "window.location.href='fNhanVien.aspx';";
        //                ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //            }
        //            else
        //            {
        //                // Mã nhân viên không tồn tại, thực hiện thêm vào cơ sở dữ liệu
        //                string insertSql = "INSERT INTO NhanVien (MaNV, TenNhanVien, NgaySinh, DiaChi, GioiTinh, DienThoai, EmailNV,Matkhau) " +
        //                       "VALUES (@MaNV,@TenNhanVien, @NgaySinh, @DiaChi, @GioiTinh, @DienThoai, @EmailNV ,@MatKhau )";

        //                // Tạo đối tượng SqlCommand để thực thi câu lệnh thêm
        //                using (SqlCommand insertCommand = new SqlCommand(insertSql, connection))
        //                {
        //                    // Thêm tham số cho câu lệnh SQL thêm
        //                    insertCommand.Parameters.AddWithValue("@MaNV", maNhanVien);
        //                    insertCommand.Parameters.AddWithValue("@TenNhanVien", tenNhanVien);
        //                    insertCommand.Parameters.AddWithValue("@NgaySinh", ngaySinh);
        //                    insertCommand.Parameters.AddWithValue("@DiaChi", diaChi);
        //                    insertCommand.Parameters.AddWithValue("@GioiTinh", gioiTinh);
        //                    insertCommand.Parameters.AddWithValue("@DienThoai", dienThoai);
        //                    insertCommand.Parameters.AddWithValue("@EmailNV", email);
        //                    insertCommand.Parameters.AddWithValue("@MatKhau", matkhau);
                          
        //                    int rowsAffected = insertCommand.ExecuteNonQuery();

        //                    if (rowsAffected > 0)
        //                    {
        //                        // Thêm thành công
        //                        string script = "alert('Thêm thành công!');";
        //                        script += "window.location.href='fNhanVien.aspx';";
        //                        ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //                    }
        //                    else
        //                    {
        //                        // Không thể thêm nhân viên
        //                        string script = "alert('Thêm thất bại!');";
        //                        script += "window.location.href='fNhanVien.aspx';";
        //                        ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //                    }
        //                }

        //            }
        //        }

        //    }
        //}

        //protected void btnTimKiem_Click(object sender, EventArgs e)
        //{
        //    string employeeID = txtTimKiem.Text.Trim();
        //    DataTable dt = GetEmployeeByID(employeeID);
        //    grvNhanVien.DataSource = dt;
        //    grvNhanVien.DataBind();
        //}
        //private DataTable GetEmployeeByID(string maNhanVien)
        //{
        //    // Kết nối tới cơ sở dữ liệu và truy vấn thông tin nhân viên theo mã
        //    string connectionString = "Data Source=DESKTOP-8HDAKNO\\TIEN;Initial Catalog=QLCaffe2;Integrated Security=True";
        //    string query = "SELECT MaNV,TenNhanVien,GioiTinh,NgaySinh,DienThoai,DienThoai,EmailNV,DiaChi FROM NhanVien WHERE MaNV = @maNV";

        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        using (SqlCommand command = new SqlCommand(query, connection))
        //        {
        //            command.Parameters.AddWithValue("@maNV", maNhanVien);
        //            SqlDataAdapter adapter = new SqlDataAdapter(command);
        //            DataTable dt = new DataTable();
        //            adapter.Fill(dt);
        //            return dt;
        //        }
        //    }
        //}
        //protected void GridViewEmployees_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    int selectedRowIndex = grvNhanVien.SelectedRow.RowIndex;

        //    // Lấy giá trị từ GridView và gán cho các trường dữ liệu
        //    txtMaNV.Text = grvNhanVien.Rows[selectedRowIndex].Cells[0].Text;
        //    txtTenNV.Text = grvNhanVien.Rows[selectedRowIndex].Cells[1].Text;
        //    txtNgaySinh.Text = grvNhanVien.Rows[selectedRowIndex].Cells[1].Text;
        //    txtDiaChi.Text = grvNhanVien.Rows[selectedRowIndex].Cells[1].Text;
        //    ddlGioiTinh.Text = grvNhanVien.Rows[selectedRowIndex].Cells[1].Text;
        //    txtDienThoai.Text = grvNhanVien.Rows[selectedRowIndex].Cells[1].Text;
        //    txtEmail.Text = grvNhanVien.Rows[selectedRowIndex].Cells[1].Text;
        //    txtMatKhau.Text = grvNhanVien.Rows[selectedRowIndex].Cells[1].Text;
            
        //    // Làm mới lại GridView
        //    grvNhanVien.SelectedIndex = -1;
        //}
        //protected void gvNhanVien_SelectedIndexChanged1(object sender, EventArgs e)
        //{
        //    // Lấy chỉ mục của dòng được chọn
        //    int selectedIndex = grvNhanVien.SelectedIndex;

        //    // Kiểm tra xem có dòng nào được chọn không
           
        //        // Lấy dòng được chọn từ GridView
        //        GridViewRow selectedRow = grvNhanVien.Rows[selectedIndex];

        //        // Lấy giá trị từ các ô trong dòng được chọn
        //        string MaNV = selectedRow.Cells[1].Text;
        //        string MatKhau= selectedRow.Cells[2].Text;
        //        string TenNhanVien = selectedRow.Cells[3].Text;
        //        string GioiTinh = selectedRow.Cells[4].Text;
        //        string NgaySinh = selectedRow.Cells[5].Text;
        //        string DienThoai = selectedRow.Cells[6].Text;
        //        string EmailNV = selectedRow.Cells[7].Text;
                
                
        //        // Đặt giá trị vào các ô nhập thông tin tương ứng
        //        txtMaNV.Text = MaNV;
        //        txtMatKhau.Text = MatKhau;
        //        txtTenNV.Text = TenNhanVien;
        //        ddlGioiTinh.Text = GioiTinh;
        //        txtNgaySinh.Text = NgaySinh;
        //        txtDienThoai.Text = DienThoai;
        //        txtEmail.Text = EmailNV;
               
                
                
        //    }

        //protected void btnCapNhat_Click(object sender, EventArgs e)
        //{

            
           
        //}

        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            Response.Redirect("fDangNhap.aspx");
        }
    }
       


    }
