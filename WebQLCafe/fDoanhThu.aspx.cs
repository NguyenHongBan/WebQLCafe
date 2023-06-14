using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQLCafe
{
    public partial class fDoanhThu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadNgay();
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

        public void loadNgay()
        {
            Data.QLCaffe3Entities db = new Data.QLCaffe3Entities();
            var lst = (from l in db.DoanhThus select l.Ngay).ToList();
            ddlTKTN.DataSource = lst;
            ddlTKTN.DataBind();
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string ngayTimKiem = ddlTKTN.Text;
            using (var context = new Data.QLCaffe3Entities())
            {
                var doanhThu = context.DoanhThus.FirstOrDefault(dt => dt.Ngay == ngayTimKiem);

                if (doanhThu != null)
                {
                    txtTongTien.Text = doanhThu.SoTien;
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