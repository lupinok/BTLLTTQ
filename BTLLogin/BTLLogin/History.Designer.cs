﻿namespace BTLLogin
{
	partial class History
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
			this.dgvHistory = new System.Windows.Forms.DataGridView();
			this.btnThoat = new System.Windows.Forms.Button();
			((System.ComponentModel.ISupportInitialize)(this.dgvHistory)).BeginInit();
			this.SuspendLayout();
			// 
			// dgvHistory
			// 
			this.dgvHistory.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgvHistory.Dock = System.Windows.Forms.DockStyle.Top;
			this.dgvHistory.Location = new System.Drawing.Point(0, 0);
			this.dgvHistory.Name = "dgvHistory";
			this.dgvHistory.RowHeadersWidth = 51;
			this.dgvHistory.RowTemplate.Height = 24;
			this.dgvHistory.Size = new System.Drawing.Size(800, 379);
			this.dgvHistory.TabIndex = 0;
			this.dgvHistory.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvHistory_CellContentClick);
			// 
			// btnThoat
			// 
			this.btnThoat.Location = new System.Drawing.Point(643, 405);
			this.btnThoat.Name = "btnThoat";
			this.btnThoat.Size = new System.Drawing.Size(75, 23);
			this.btnThoat.TabIndex = 1;
			this.btnThoat.Text = "&Thoát";
			this.btnThoat.UseVisualStyleBackColor = true;
			this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
			// 
			// History
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(800, 450);
			this.Controls.Add(this.btnThoat);
			this.Controls.Add(this.dgvHistory);
			this.Name = "History";
			this.Text = "History";
			this.Load += new System.EventHandler(this.History_Load);
			((System.ComponentModel.ISupportInitialize)(this.dgvHistory)).EndInit();
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.DataGridView dgvHistory;
		private System.Windows.Forms.Button btnThoat;
	}
}