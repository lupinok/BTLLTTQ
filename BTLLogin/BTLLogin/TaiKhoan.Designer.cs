namespace BTLLogin
{
	partial class TaiKhoan
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.btnTaoTaiKhoan = new System.Windows.Forms.Button();
			this.btnSua = new System.Windows.Forms.Button();
			this.btnXoaTaiKhoan = new System.Windows.Forms.Button();
			this.btnThoat = new System.Windows.Forms.Button();
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.txtTenDangNhap = new System.Windows.Forms.TextBox();
			this.txtMatKhau = new System.Windows.Forms.TextBox();
			this.dgvTaiKhoan = new System.Windows.Forms.DataGridView();
			this.btnTao = new System.Windows.Forms.Button();
			this.cbVaiTro = new System.Windows.Forms.ComboBox();
			((System.ComponentModel.ISupportInitialize)(this.dgvTaiKhoan)).BeginInit();
			this.SuspendLayout();
			// 
			// btnTaoTaiKhoan
			// 
			this.btnTaoTaiKhoan.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
			this.btnTaoTaiKhoan.Location = new System.Drawing.Point(611, 7);
			this.btnTaoTaiKhoan.Name = "btnTaoTaiKhoan";
			this.btnTaoTaiKhoan.Size = new System.Drawing.Size(160, 48);
			this.btnTaoTaiKhoan.TabIndex = 0;
			this.btnTaoTaiKhoan.Text = "Tạo tài &khoản";
			this.btnTaoTaiKhoan.UseVisualStyleBackColor = true;
			this.btnTaoTaiKhoan.Click += new System.EventHandler(this.btnTaoTaiKhoan_Click);
			// 
			// btnSua
			// 
			this.btnSua.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
			this.btnSua.Location = new System.Drawing.Point(611, 115);
			this.btnSua.Name = "btnSua";
			this.btnSua.Size = new System.Drawing.Size(160, 48);
			this.btnSua.TabIndex = 1;
			this.btnSua.Text = "&Sửa";
			this.btnSua.UseVisualStyleBackColor = true;
			this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
			// 
			// btnXoaTaiKhoan
			// 
			this.btnXoaTaiKhoan.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
			this.btnXoaTaiKhoan.Location = new System.Drawing.Point(611, 169);
			this.btnXoaTaiKhoan.Name = "btnXoaTaiKhoan";
			this.btnXoaTaiKhoan.Size = new System.Drawing.Size(160, 48);
			this.btnXoaTaiKhoan.TabIndex = 2;
			this.btnXoaTaiKhoan.Text = "&Xóa tài khoản";
			this.btnXoaTaiKhoan.UseVisualStyleBackColor = true;
			this.btnXoaTaiKhoan.Click += new System.EventHandler(this.btnXoaTaiKhoan_Click);
			// 
			// btnThoat
			// 
			this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
			this.btnThoat.ForeColor = System.Drawing.SystemColors.ControlText;
			this.btnThoat.Location = new System.Drawing.Point(641, 365);
			this.btnThoat.Name = "btnThoat";
			this.btnThoat.Size = new System.Drawing.Size(130, 59);
			this.btnThoat.TabIndex = 3;
			this.btnThoat.Text = "&Thoát";
			this.btnThoat.UseVisualStyleBackColor = true;
			this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
			this.label1.Location = new System.Drawing.Point(25, 35);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(124, 20);
			this.label1.TabIndex = 4;
			this.label1.Text = "Tên đăng nhập:";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
			this.label2.Location = new System.Drawing.Point(25, 109);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(82, 20);
			this.label2.TabIndex = 5;
			this.label2.Text = "Mật khẩu:";
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
			this.label3.Location = new System.Drawing.Point(25, 183);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(63, 20);
			this.label3.TabIndex = 6;
			this.label3.Text = "Vai trò:";
			// 
			// txtTenDangNhap
			// 
			this.txtTenDangNhap.Location = new System.Drawing.Point(159, 33);
			this.txtTenDangNhap.Multiline = true;
			this.txtTenDangNhap.Name = "txtTenDangNhap";
			this.txtTenDangNhap.Size = new System.Drawing.Size(398, 36);
			this.txtTenDangNhap.TabIndex = 7;
			// 
			// txtMatKhau
			// 
			this.txtMatKhau.Location = new System.Drawing.Point(159, 107);
			this.txtMatKhau.Multiline = true;
			this.txtMatKhau.Name = "txtMatKhau";
			this.txtMatKhau.Size = new System.Drawing.Size(398, 36);
			this.txtMatKhau.TabIndex = 8;
			// 
			// dgvTaiKhoan
			// 
			this.dgvTaiKhoan.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgvTaiKhoan.Location = new System.Drawing.Point(29, 248);
			this.dgvTaiKhoan.Name = "dgvTaiKhoan";
			this.dgvTaiKhoan.RowHeadersWidth = 51;
			this.dgvTaiKhoan.RowTemplate.Height = 24;
			this.dgvTaiKhoan.Size = new System.Drawing.Size(590, 182);
			this.dgvTaiKhoan.TabIndex = 10;
			this.dgvTaiKhoan.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvTaiKhoan_CellContentClick);
			this.dgvTaiKhoan.Click += new System.EventHandler(this.dgvTaiKhoan_Click);
			// 
			// btnTao
			// 
			this.btnTao.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
			this.btnTao.Location = new System.Drawing.Point(611, 61);
			this.btnTao.Name = "btnTao";
			this.btnTao.Size = new System.Drawing.Size(160, 48);
			this.btnTao.TabIndex = 11;
			this.btnTao.Text = "Tạ&o";
			this.btnTao.UseVisualStyleBackColor = true;
			this.btnTao.Click += new System.EventHandler(this.btnTao_Click);
			// 
			// cbVaiTro
			// 
			this.cbVaiTro.FormattingEnabled = true;
			this.cbVaiTro.Items.AddRange(new object[] {
            "Quản trị viên",
            "Chỉnh sửa"});
			this.cbVaiTro.Location = new System.Drawing.Point(159, 169);
			this.cbVaiTro.Name = "cbVaiTro";
			this.cbVaiTro.Size = new System.Drawing.Size(228, 24);
			this.cbVaiTro.TabIndex = 12;
			// 
			// TaiKhoan
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(800, 450);
			this.Controls.Add(this.cbVaiTro);
			this.Controls.Add(this.btnTao);
			this.Controls.Add(this.dgvTaiKhoan);
			this.Controls.Add(this.txtMatKhau);
			this.Controls.Add(this.txtTenDangNhap);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.btnThoat);
			this.Controls.Add(this.btnXoaTaiKhoan);
			this.Controls.Add(this.btnSua);
			this.Controls.Add(this.btnTaoTaiKhoan);
			this.Name = "TaiKhoan";
			this.Text = "TaiKhoan";
			this.Load += new System.EventHandler(this.TaiKhoan_Load);
			((System.ComponentModel.ISupportInitialize)(this.dgvTaiKhoan)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.Button btnTaoTaiKhoan;
		private System.Windows.Forms.Button btnSua;
		private System.Windows.Forms.Button btnXoaTaiKhoan;
		private System.Windows.Forms.Button btnThoat;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.TextBox txtTenDangNhap;
		private System.Windows.Forms.TextBox txtMatKhau;
		private System.Windows.Forms.DataGridView dgvTaiKhoan;
		private System.Windows.Forms.Button btnTao;
		private System.Windows.Forms.ComboBox cbVaiTro;
	}
}