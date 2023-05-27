using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebQLCafe
{
    public partial class fNhanVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    // Hiển thị thông tin nhân viên khi trang được tải lần đầu
            //    HienThiThongTinNhanVien();
            //}
        }

        protected void lbtNhanVien_Click(object sender, EventArgs e)
        {

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
        //        GrvNhanVien_SelectedIndexChanged.DataSource = reader;
        //        GrvNhanVien.DataBind();

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
        //                       "VALUES (@MaNV,@TenNhanVien, @NgaySinh, @DiaChi, @GioiTinh, @DienThoai, @EmailNV)";

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

        //protected void btnThem_Click(object sender, EventArgs e)
        //{
        //    string maNhanVien = txtMNV.Text;
        //    string tenNhanVien = txtTNV.Text;
        //    string ngaySinh = txtNS.Text;
        //    string diaChi = txtĐC.Text;
        //    string gioiTinh = ddlGT.SelectedItem.Text;
        //    string dienThoai = txtSĐT.Text;
        //    string email = txtEmail.Text;

        //    // Chuỗi kết nối tới cơ sở dữ liệu SQL Server
        //    string connectionString = "Data Source=DESKTOP-8HDAKNO\\TIEN;Initial Catalog=QLCaffe2;Integrated Security=True";
        //    // Tạo đối tượng SqlConnection
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        connection.Open();
        //        if (string.IsNullOrEmpty(maNhanVien) || string.IsNullOrEmpty(tenNhanVien) || string.IsNullOrEmpty(ngaySinh) ||
        //        string.IsNullOrEmpty(diaChi) || string.IsNullOrEmpty(dienThoai) || string.IsNullOrEmpty(gioiTinh) ||
        //        string.IsNullOrEmpty(email))
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
        //            // Thêm tham số cho câu lệnh SQL kiểm tra
        //            checkCommand.Parameters.AddWithValue("@MaNV", maNhanVien);

        //            int existingCount = (int)checkCommand.ExecuteScalar();

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
        //                string insertSql = "INSERT INTO NhanVien (MaNV, TenNhanVien, NgaySinh, DiaChi, GioiTinh, DienThoai, EmailNV) " +
        //                       "VALUES (@MaNV,@TenNhanVien, @NgaySinh, @DiaChi, @GioiTinh, @DienThoai, @EmailNV)";

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

        //protected void btnReset_Click(object sender, EventArgs e)
        //{
        //    txtMNV.Text = "";
        //    txtTNV.Text = "";
        //    txtNS.Text = "";
        //    txtĐC.Text = "";
        //    ddlGT.SelectedIndex = 0;
        //    txtSĐT.Text = "";
        //    txtEmail.Text = "";

        //}



        //protected void btnXoa_Click(object sender, EventArgs e)
        //{
        //    string mnv = txtMNV.Text; // Lấy mã nhân viên từ ô txtMNV

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

        //protected void GrvNhanVien_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}

        //protected void lbtNhanVien_Click(object sender, EventArgs e)
        //{

        //}
    }
}