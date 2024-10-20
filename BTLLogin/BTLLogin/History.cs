﻿using System;
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
	public partial class History : Form
	{
		private DataTable dtHistory;
		private string sql; // Biến lưu trữ câu truy vấn SQL
		private ProcessDataBase dtBase = new ProcessDataBase(); // Khởi tạo đối tượng để kết nối dữ liệu
		private SaveFileDialog dlgSave = new SaveFileDialog(); // Đối tượng để lưu file
		public History()
		{
			InitializeComponent();
		}

		private void dgvHistory_CellContentClick(object sender, DataGridViewCellEventArgs e)
		{

		}

		private void btnThoat_Click(object sender, EventArgs e)
		{
			if (MessageBox.Show("Bạn có chắc chắn muốn thoát không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
			{
				this.Close();
			}
		}

		private void History_Load(object sender, EventArgs e)
		{
			// Tải dữ liệu và thêm chỉ mục "Tất cả"
			DataTable dtHistory = dtBase.DocBang("Select * from LichSuHoatDong");
			dgvHistory.DataSource = dtHistory;
			dtHistory.Dispose();
		}

	}
}