using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BTLLogin
{
	public partial class GiaoDien : Form
	{
		public GiaoDien()
		{
			InitializeComponent();
		}

		private void button10_Click(object sender, EventArgs e)
		{
			TaiKhoan tk = new TaiKhoan();
			this.Hide(); // Ẩn form
			tk.ShowDialog(); // Hiển thị form mới
			this.Show(); // Hiện lại form trước sau khi đóng Form mới
		}

		private void btnHistory_Click(object sender, EventArgs e)
		{
			History history = new History();
			this.Hide(); // Ẩn form
			history.ShowDialog(); // Hiển thị form mới
			this.Show(); // Hiện lại form trước sau khi đóng Form mới
		}

		private void button12_Click(object sender, EventArgs e)
		{
			if (MessageBox.Show("Bạn có chắc chắn muốn đăng xuất không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
			{
				this.Close();
			}
		}

		private void GiaoDien_Load(object sender, EventArgs e)
		{
			if (UserSession.TenDangNhap != "admin")
			{
				btnTaiKhoan.Hide();
				btnHistory.Hide();
				btnThanhToan.Hide();
			}
		}
	}
}
