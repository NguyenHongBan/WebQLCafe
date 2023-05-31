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
            if (!IsPostBack)
            {
                // Hiển thị thông tin nhân viên khi trang được tải lần đầu
                //HienThiThongTinSanPham();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
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
        //protected void HienThiThongTinSanPham()
        //{
        //    // Kết nối đến cơ sở dữ liệu
        //    string connectionString = "Data Source=DESKTOP-8HDAKNO\\TIEN;Initial Catalog=QLCaffe2;Integrated Security=True";
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        // Mở kết nối
        //        connection.Open();

        //        // Tạo câu truy vấn lấy thông tin nhân viên
        //        string query = "SELECT IDLoai, TenLoai FROM LoaiSP";

        //        // Tạo đối tượng SqlCommand và SqlDataReader để thực hiện và đọc kết quả câu truy vấn
        //        SqlCommand command = new SqlCommand(query, connection);
        //        SqlDataReader reader = command.ExecuteReader();

        //        // Gán dữ liệu vào GridView
        //        grvLoaiSP.DataSource = reader;
        //        grvLoaiSP.DataBind();

        //        // Đóng kết nối
        //        connection.Close();
        //    }
        //}
        //protected void LuuThongTinSanPham(string IDLoai, string TenLoai)
        //{
        //    // Kết nối đến cơ sở dữ liệu
        //    string connectionString = "Data Source=DESKTOP-8HDAKNO\\TIEN;Initial Catalog=QLCaffe2;Integrated Security=True";
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        // Mở kết nối
        //        connection.Open();

        //        // Tạo câu truy vấn chèn dữ liệu
        //        string query = "INSERT INTO LoaiSP (IDLoai, TenLoai) " +
        //                     "VALUES (@IDLoai,@TenLoai)";

        //        // Tạo và cấu hình đối tượng SqlCommand
        //        SqlCommand command = new SqlCommand(query, connection);
        //        command.Parameters.AddWithValue("@IDLoai", IDLoai);
        //        command.Parameters.AddWithValue("@TenLoai", TenLoai);

        //        // Thực hiện câu truy vấn chèn dữ liệu
        //        command.ExecuteNonQuery();

        //        // Đóng kết nối
        //        connection.Close();
        //    }
        //}
        //protected void btnThem_Click(object sender, EventArgs e)
        //{
        //    string IDLoai = txtIDLoai.Text;
        //    string TenLoai = txtTenLoai.Text;
            
        //    // Chuỗi kết nối tới cơ sở dữ liệu SQL Server
        //    string connectionString = "Data Source=DESKTOP-8HDAKNO\\TIEN;Initial Catalog=QLCaffe2;Integrated Security=True";
        //    // Tạo đối tượng SqlConnection
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        connection.Open();
        //        if (string.IsNullOrEmpty(IDLoai) || string.IsNullOrEmpty(TenLoai) )
        //        {
        //            // Hiển thị thông báo lỗi và không thêm dữ liệu vào cơ sở dữ liệu
        //            string script = "alert('Vui lòng nhập đầy đủ thông tin!!');";
        //            ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //        }

        //        // Kiểm tra xem mã nhân viên đã tồn tại hay chưa
        //        string checkSql = "SELECT COUNT(*) FROM LoaiSP WHERE IDLoai = @IDLoai";

        //        // Tạo đối tượng SqlCommand để thực thi câu lệnh kiểm tra
        //        using (SqlCommand checkCommand = new SqlCommand(checkSql, connection))
        //        {
        //            // Thêm tham số cho câu lệnh SQL kiểm tra
        //            checkCommand.Parameters.AddWithValue("@IDLoai", IDLoai);

        //            int existingCount = (int)checkCommand.ExecuteScalar();

        //            if (existingCount > 0)
        //            {
        //                // Mã loại sản phẩm đã tồn tại, không thể thêm
        //                string script = "alert('Mã loại sản phẩm đã tồn tại. Không thể thêm!!');";
        //                script += "window.location.href='fLoaiSP.aspx';";
        //                ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //            }
        //            else
        //            {
        //                // Mã loại sản phẩm không tồn tại, thực hiện thêm vào cơ sở dữ liệu
        //                string insertSql = "INSERT INTO LoaiSP (IDLoai, TenLoai) " +
        //                       "VALUES (@IDLoai,@TenLoai)";

        //                // Tạo đối tượng SqlCommand để thực thi câu lệnh thêm
        //                using (SqlCommand insertCommand = new SqlCommand(insertSql, connection))
        //                {
        //                    // Thêm tham số cho câu lệnh SQL thêm
        //                    insertCommand.Parameters.AddWithValue("@IDLoai", IDLoai);
        //                    insertCommand.Parameters.AddWithValue("@TenLoai", TenLoai);
                           

        //                    int rowsAffected = insertCommand.ExecuteNonQuery();

        //                    if (rowsAffected > 0)
        //                    {
        //                        // Thêm thành công
        //                        string script = "alert('Thêm thành công!');";
        //                        script += "window.location.href='fLoaiSP.aspx';";
        //                        ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //                    }
        //                    else
        //                    {
        //                        // Không thể thêm nhân viên
        //                        string script = "alert('Thêm thất bại!');";
        //                        script += "window.location.href='fLoaiSP.aspx';";
        //                        ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //                    }
        //                }

        //            }
        //        }
        //    }
        //}

        //protected void btnLamMoi_Click(object sender, EventArgs e)
        //{
        //    txtIDLoai.Text = "";
        //    txtTenLoai.Text = "";
        //}

        //protected void btnXoa_Click(object sender, EventArgs e)
        //{
        //    string mnv = txtIDLoai.Text; 

        //    // Chuỗi kết nối tới cơ sở dữ liệu SQL Server
        //    string connectionString = "Data Source=DESKTOP-8HDAKNO\\TIEN;Initial Catalog=QLCaffe2;Integrated Security=True";
        //    // Tạo đối tượng SqlConnection
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        connection.Open();

        //        // Tạo câu lệnh SQL để xóa thông tin nhân viên
        //        string sql = "DELETE FROM LoaiSP WHERE IDLoai = @IDLoai";

        //        // Tạo đối tượng SqlCommand
        //        using (SqlCommand command = new SqlCommand(sql, connection))
        //        {
        //            // Thêm tham số cho câu lệnh SQL
        //            command.Parameters.AddWithValue("@IDLoai", mnv);

        //            // Thực thi câu lệnh SQL
        //            int rowsAffected = command.ExecuteNonQuery();

        //            if (rowsAffected > 0)
        //            {
        //                // Xóa thành công

        //                string script = "alert('Xóa thành công!');";
        //                script += "window.location.href='fLoaiSP.aspx';";
        //                ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //            }
        //            else
        //            {
        //                // Không tìm thấy nhân viên để xóa
        //                string script = "alert('Xóa thất bại!');";
        //                script += "window.location.href='fLoaiSP.aspx';";
        //                ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
        //            }
        //        }

        //    }
        //}

        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            Response.Redirect("fDangNhap.aspx");
        }
    }
}