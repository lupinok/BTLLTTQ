namespace BTLLogin
{
	partial class Form1
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
			this.panel1 = new System.Windows.Forms.Panel();
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.txtTenDangNhap = new System.Windows.Forms.TextBox();
			this.txtMatKhau = new System.Windows.Forms.TextBox();
			this.btnDangNhap = new System.Windows.Forms.Button();
			this.panel1.SuspendLayout();
			this.SuspendLayout();
			// 
			// panel1
			// 
			this.panel1.Controls.Add(this.label1);
			this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
			this.panel1.Location = new System.Drawing.Point(0, 0);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(800, 100);
			this.panel1.TabIndex = 0;
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F);
			this.label1.Location = new System.Drawing.Point(323, 35);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(144, 26);
			this.label1.TabIndex = 0;
			this.label1.Text = "ĐĂNG NHẬP";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
			this.label2.Location = new System.Drawing.Point(163, 149);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(151, 25);
			this.label2.TabIndex = 1;
			this.label2.Text = "Tên đăng nhập:";
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
			this.label3.Location = new System.Drawing.Point(163, 212);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(99, 25);
			this.label3.TabIndex = 2;
			this.label3.Text = "Mật khẩu:";
			// 
			// txtTenDangNhap
			// 
			this.txtTenDangNhap.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
			this.txtTenDangNhap.Location = new System.Drawing.Point(328, 149);
			this.txtTenDangNhap.Multiline = true;
			this.txtTenDangNhap.Name = "txtTenDangNhap";
			this.txtTenDangNhap.Size = new System.Drawing.Size(261, 36);
			this.txtTenDangNhap.TabIndex = 3;
			this.txtTenDangNhap.TextChanged += new System.EventHandler(this.txtTenDangNhap_TextChanged);
			// 
			// txtMatKhau
			// 
			this.txtMatKhau.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
			this.txtMatKhau.Location = new System.Drawing.Point(328, 212);
			this.txtMatKhau.Multiline = true;
			this.txtMatKhau.Name = "txtMatKhau";
			this.txtMatKhau.Size = new System.Drawing.Size(261, 36);
			this.txtMatKhau.TabIndex = 4;
			this.txtMatKhau.TextChanged += new System.EventHandler(this.txtMatKhau_TextChanged);
			// 
			// btnDangNhap
			// 
			this.btnDangNhap.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
			this.btnDangNhap.Location = new System.Drawing.Point(342, 321);
			this.btnDangNhap.Name = "btnDangNhap";
			this.btnDangNhap.Size = new System.Drawing.Size(117, 34);
			this.btnDangNhap.TabIndex = 5;
			this.btnDangNhap.Text = "Đăng &nhập";
			this.btnDangNhap.UseVisualStyleBackColor = true;
			this.btnDangNhap.Click += new System.EventHandler(this.btnDangNhap_Click);
			// 
			// Form1
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(800, 450);
			this.Controls.Add(this.btnDangNhap);
			this.Controls.Add(this.txtMatKhau);
			this.Controls.Add(this.txtTenDangNhap);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.panel1);
			this.Name = "Form1";
			this.Text = "Đăng nhập";
			this.Load += new System.EventHandler(this.Form1_Load_1);
			this.panel1.ResumeLayout(false);
			this.panel1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.TextBox txtTenDangNhap;
		private System.Windows.Forms.TextBox txtMatKhau;
		private System.Windows.Forms.Button btnDangNhap;
	}
}

