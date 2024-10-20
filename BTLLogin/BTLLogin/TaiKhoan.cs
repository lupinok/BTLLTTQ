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
	public partial class TaiKhoan : Form
	{
		private DataTable dtTaiKhoan;
		private string sql; // Biến lưu trữ câu truy vấn SQL
		private ProcessDataBase dtBase = new ProcessDataBase(); // Khởi tạo đối tượng để kết nối dữ liệu
		private SaveFileDialog dlgSave = new SaveFileDialog(); // Đối tượng để lưu file
		public TaiKhoan()
		{
			InitializeComponent();
		}

		private void TaiKhoan_Load(object sender, EventArgs e)
		{
			// Tải dữ liệu và thêm chỉ mục "Tất cả"
			ResetValue();
			DataTable dtTaiKhoan = dtBase.DocBang("Select * from TaiKhoan");
			dgvTaiKhoan.DataSource = dtTaiKhoan;
			dtTaiKhoan.Dispose();
		}
		private void ResetValue()
		{
			txtTenDangNhap.Text = "";
			txtMatKhau.Text = "";
			cbVaiTro.Text = "";
			txtTenDangNhap.Enabled = false;
			txtMatKhau.Enabled = false;
			cbVaiTro.Enabled = false;

			btnTao.Enabled = false;
			btnSua.Enabled = false;
			btnXoaTaiKhoan.Enabled = false;
		}
		private void btnThoat_Click(object sender, EventArgs e)
		{
			if (MessageBox.Show("Bạn có chắc chắn muốn thoát không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
			{
				this.Close();
			}
		}

		private void btnTaoTaiKhoan_Click(object sender, EventArgs e)
		{
			// Reset các TextBox để người dùng nhập liệu
			ResetValue();

			txtTenDangNhap.Enabled = true;
			txtMatKhau.Enabled = true;
			cbVaiTro.Enabled = true;
			txtTenDangNhap.Focus();

			btnTao.Enabled = true;

			btnXoaTaiKhoan.Enabled = false;
			btnSua.Enabled = false;
			btnTaoTaiKhoan.Enabled = false;
		}

		private void btnTao_Click(object sender, EventArgs e)
		{
			if (txtTenDangNhap.Text == "")
			{
				MessageBox.Show("Hãy nhập tên đăng nhập");
				txtTenDangNhap.Focus();
			}
			else if (txtMatKhau.Text == "")
			{
				MessageBox.Show("Hãy nhập mật khẩu");
				txtMatKhau.Focus();
			}
			else if (cbVaiTro.Text != "Quản trị viên" && cbVaiTro.Text != "Chỉnh sửa")
			{
				MessageBox.Show("Hãy chọn vai trò hợp lệ");
				cbVaiTro.Focus();
			}
			else
			{
				// Cập nhật vào cơ sở dữ liệu
				dtBase.CapNhatDuLieu($"INSERT INTO TaiKhoan(TenDangNhap, MatKhau, VaiTro, TrangThaiTaiKhoan, NgayTao) " +
					$"VALUES (N'{txtTenDangNhap.Text}', N'{txtMatKhau.Text}', N'{cbVaiTro.Text}', N'Kích hoạt', getdate())");

				// Hiển thị lại dữ liệu sau khi thêm
				dgvTaiKhoan.DataSource = dtBase.DocBang("SELECT * FROM TaiKhoan");

				MessageBox.Show("Bạn đã tạo thành công");
				ResetValue();
				btnXoaTaiKhoan.Enabled = false;
				btnSua.Enabled = false;
				btnTao.Enabled = false;
				btnTaoTaiKhoan.Enabled = true;
			}
		}

		private void dgvTaiKhoan_CellContentClick(object sender, DataGridViewCellEventArgs e)
		{

		}

		private void dgvTaiKhoan_Click(object sender, EventArgs e)
		{
			if (dgvTaiKhoan.CurrentRow != null)
			{
				txtTenDangNhap.Text = dgvTaiKhoan.CurrentRow.Cells[0].Value.ToString();
				txtMatKhau.Text = dgvTaiKhoan.CurrentRow.Cells[1].Value.ToString();
				cbVaiTro.Text = dgvTaiKhoan.CurrentRow.Cells[2].Value.ToString();

				// Bật các TextBox và thiết lập lại các nút
				txtTenDangNhap.Enabled = false;
				txtMatKhau.Enabled = false;
				cbVaiTro.Enabled = false;

				btnTaoTaiKhoan.Enabled = false;
				btnTao.Enabled = false;
				btnSua.Enabled = true;
				btnXoaTaiKhoan.Enabled = true;
			}
		}

		private void btnXoaTaiKhoan_Click(object sender, EventArgs e)
		{
			if (MessageBox.Show($"Bạn có muốn xóa tài khoản {txtTenDangNhap.Text} không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
			{
				dtBase.CapNhatDuLieu($"DELETE FROM TaiKhoan WHERE TenDangNhap=N'{txtTenDangNhap.Text}'");

				// Hiển thị lại dữ liệu sau khi xóa
				dgvTaiKhoan.DataSource = dtBase.DocBang("SELECT * FROM TaiKhoan");

				ResetValue();
				btnTaoTaiKhoan.Enabled = true;
				btnTao.Enabled = false;
				btnSua.Enabled = false;
				btnXoaTaiKhoan.Enabled = false;
			}
		}
		private bool isEditing = false;
		private void btnSua_Click(object sender, EventArgs e)
		{
			if (!isEditing) // Lần đầu nhấn nút "Sửa"
			{
				// Cho phép người dùng chỉnh sửa các TextBox
				txtTenDangNhap.Enabled = false;
				txtMatKhau.Enabled = true;
				cbVaiTro.Enabled = true;

				btnTaoTaiKhoan.Enabled = false;
				btnTao.Enabled = false;
				// Chuyển nút "Sửa" thành "Cập nhật"
				btnSua.Text = "Cập nhật";

				// Chuyển trạng thái sang đang chỉnh sửa
				isEditing = true;
			}
			else // Lần nhấn thứ 2, cập nhật vào CSDL
			{
				if (txtMatKhau.Text == "")
				{
					MessageBox.Show("Hãy nhập mật khẩu");
					txtMatKhau.Focus();
				}
				else if (cbVaiTro.Text != "Quản trị viên" && cbVaiTro.Text != "Chỉnh sửa")
				{
					MessageBox.Show("Hãy chọn vai trò hợp lệ");
					cbVaiTro.Focus();
				}
				else
				{
					// Cập nhật dữ liệu vào cơ sở dữ liệu
					dtBase.CapNhatDuLieu($"UPDATE TaiKhoan SET MatKhau = N'{txtMatKhau.Text}', VaiTro = N'{cbVaiTro.Text}' WHERE TenDangNhap = N'{txtTenDangNhap.Text}'");

					// Hiển thị lại dữ liệu sau khi cập nhật
					dgvTaiKhoan.DataSource = dtBase.DocBang("SELECT * FROM TaiKhoan");

					MessageBox.Show("Dữ liệu đã được cập nhật thành công");

					// Khôi phục trạng thái các TextBox về không cho phép chỉnh sửa
					txtTenDangNhap.Enabled = false;
					txtMatKhau.Enabled = false;
					cbVaiTro.Enabled = false;

					// Đổi tên nút "Cập nhật" trở lại "Sửa"
					btnSua.Text = "Sửa";

					// Đặt lại trạng thái không chỉnh sửa
					isEditing = false;
				}
			}
		}
	}

}
