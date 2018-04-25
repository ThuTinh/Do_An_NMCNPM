namespace DoAnNMCNPM_QuanLyThuVien
{
    partial class frm_CapNhapQD2
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
            this.label1 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtSoTheLoai = new System.Windows.Forms.TextBox();
            this.txtNhaSachXuatBanTrongVong = new System.Windows.Forms.TextBox();
            this.btnLuu = new Telerik.WinControls.UI.RadButton();
            ((System.ComponentModel.ISupportInitialize)(this.btnLuu)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(2, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(57, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Số thể loại";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(2, 66);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(188, 13);
            this.label4.TabIndex = 1;
            this.label4.Text = "Nhận sách xuất bản trong vòng (Năm)";
            // 
            // txtSoTheLoai
            // 
            this.txtSoTheLoai.Location = new System.Drawing.Point(85, 27);
            this.txtSoTheLoai.Name = "txtSoTheLoai";
            this.txtSoTheLoai.Size = new System.Drawing.Size(54, 20);
            this.txtSoTheLoai.TabIndex = 2;
            // 
            // txtNhaSachXuatBanTrongVong
            // 
            this.txtNhaSachXuatBanTrongVong.Location = new System.Drawing.Point(196, 63);
            this.txtNhaSachXuatBanTrongVong.Name = "txtNhaSachXuatBanTrongVong";
            this.txtNhaSachXuatBanTrongVong.Size = new System.Drawing.Size(54, 20);
            this.txtNhaSachXuatBanTrongVong.TabIndex = 2;
            // 
            // btnLuu
            // 
            this.btnLuu.Image = global::DoAnNMCNPM_QuanLyThuVien.Properties.Resources.logo;
            this.btnLuu.Location = new System.Drawing.Point(224, 107);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(64, 32);
            this.btnLuu.TabIndex = 27;
            this.btnLuu.Text = "Lưu";
            // 
            // frm_CapNhapQD2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(300, 150);
            this.Controls.Add(this.btnLuu);
            this.Controls.Add(this.txtNhaSachXuatBanTrongVong);
            this.Controls.Add(this.txtSoTheLoai);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label1);
            this.Name = "frm_CapNhapQD2";
            this.Text = "frm_CapNhapQD2";
            ((System.ComponentModel.ISupportInitialize)(this.btnLuu)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtSoTheLoai;
        private System.Windows.Forms.TextBox txtNhaSachXuatBanTrongVong;
        private Telerik.WinControls.UI.RadButton btnLuu;
    }
}