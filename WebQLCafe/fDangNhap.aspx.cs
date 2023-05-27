using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WebQLCafe
{
    public partial class fDangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        #region Ham
        void DangNhap()
        {

        }
        #endregion

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            QLCaffe3Entities db = new QLCaffe3Entities();

            if (txtMaNhanVien.Text == "")
            {
                Response.Write("<script language='JavaScript'> alert('Chưa nhập Mã Nhân Viên!'); </script>");
            }
        }
    }
}