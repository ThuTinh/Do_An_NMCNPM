namespace DoAnNMCNPM_QuanLyThuVien
{
    partial class Frm_CapNhapQD3
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
            this.label2 = new System.Windows.Forms.Label();
            this.txtSoSachMuonToiDa = new System.Windows.Forms.TextBox();
            this.txtSoNgayMuonToiDa = new System.Windows.Forms.TextBox();
            this.btnLuu = new Telerik.WinControls.UI.RadButton();
            ((System.ComponentModel.ISupportInitialize)(this.btnLuu)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(105, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Số sách mượn tối đa";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(3, 53);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(107, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Số Ngày mượn tối đa";
            // 
            // txtSoSachMuonToiDa
            // 
            this.txtSoSachMuonToiDa.Location = new System.Drawing.Point(132, 19);
            this.txtSoSachMuonToiDa.Name = "txtSoSachMuonToiDa";
            this.txtSoSachMuonToiDa.Size = new System.Drawing.Size(80, 20);
            this.txtSoSachMuonToiDa.TabIndex = 1;
            // 
            // txtSoNgayMuonToiDa
            // 
            this.txtSoNgayMuonToiDa.Location = new System.Drawing.Point(132, 48);
            this.txtSoNgayMuonToiDa.Name = "txtSoNgayMuonToiDa";
            this.txtSoNgayMuonToiDa.Size = new System.Drawing.Size(80, 20);
            this.txtSoNgayMuonToiDa.TabIndex = 1;
            // 
            // btnLuu
            // 
            this.btnLuu.Image = global::DoAnNMCNPM_QuanLyThuVien.Properties.Resources.logo;
            this.btnLuu.Location = new System.Drawing.Point(198, 86);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(64, 32);
            this.btnLuu.TabIndex = 27;
            this.btnLuu.Text = "Lưu";
            // 
            // Frm_CapNhapQD3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(274, 129);
            this.Controls.Add(this.btnLuu);
            this.Controls.Add(this.txtSoNgayMuonToiDa);
            this.Controls.Add(this.txtSoSachMuonToiDa);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Frm_CapNhapQD3";
            this.Text = "Frm_CapNhapQD4";
            ((System.ComponentModel.ISupportInitialize)(this.btnLuu)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtSoSachMuonToiDa;
        private System.Windows.Forms.TextBox txtSoNgayMuonToiDa;
        private Telerik.WinControls.UI.RadButton btnLuu;
    }
}