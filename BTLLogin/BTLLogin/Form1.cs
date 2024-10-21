using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;


namespace BTLLogin
{
	public partial class Form1 : Form
	{
		private DataTable dtTaiKhoan;
		private string sql; // Biến lưu trữ câu truy vấn SQL
		private ProcessDataBase dtBase = new ProcessDataBase(); // Khởi tạo đối tượng để kết nối dữ liệu
		private SaveFileDialog dlgSave = new SaveFileDialog(); // Đối tượng để lưu file
		public string TenDangNhap { get; private set; }

		public Form1()
		{
			InitializeComponent();
			// Thiết lập thuộc tính PasswordChar cho TextBox mật khẩu
			txtMatKhau.PasswordChar = '●'; // Hoặc có thể sử dụng '*' nếu bạn muốn
		}

		private void txtTenDangNhap_TextChanged(object sender, EventArgs e)
		{

		}

		private void txtMatKhau_TextChanged(object sender, EventArgs e)
		{

		}

		private void btnDangNhap_Click(object sender, EventArgs e)
		{
			string tenDangNhap = txtTenDangNhap.Text.Trim();
			string matKhau = txtMatKhau.Text.Trim();

			if (string.IsNullOrEmpty(tenDangNhap) || string.IsNullOrEmpty(matKhau))
			{
				MessageBox.Show("Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu.");
				return;
			}

			// Câu lệnh SQL kiểm tra tài khoản
			sql = "SELECT * FROM TaiKhoan WHERE TenDangNhap = '" + tenDangNhap + "' AND MatKhau = '" + matKhau + "'";
			dtTaiKhoan = dtBase.DocBang(sql);

			if (dtTaiKhoan.Rows.Count > 0) // Đăng nhập thành công
			{
				MessageBox.Show("Đăng nhập thành công!");

				// Lấy giá trị LoaiTaiKhoan từ bảng kết quả
				string loaiTaiKhoan = dtTaiKhoan.Rows[0]["VaiTro"].ToString();


				// Thiết lập SESSION_CONTEXT
				// Cập nhật vào cơ sở dữ liệu
				dtBase.CapNhatDuLieu($"EXEC sp_set_session_context @key = N'LoaiTaiKhoan', @value = '{loaiTaiKhoan}'");
				dtBase.CapNhatDuLieu($"EXEC sp_set_session_context @key = N'TenDangNhap', @value = N'{tenDangNhap}'");
				// Chuyển sang form mới (Form2)
				GiaoDien gd = new GiaoDien();
				this.Hide(); // Ẩn form đăng nhập
				gd.ShowDialog(); // Hiển thị form mới
				this.Show(); // Hiện lại form đăng nhập sau khi đóng Form2
			}
			else
			{
				MessageBox.Show("Sai tên đăng nhập hoặc mật khẩu.");
			}
		}

		private void Form1_Load_1(object sender, EventArgs e)
		{
		}
	}
}
