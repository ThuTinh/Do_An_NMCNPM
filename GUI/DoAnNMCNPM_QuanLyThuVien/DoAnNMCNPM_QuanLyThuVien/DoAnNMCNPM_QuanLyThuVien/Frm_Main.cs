using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DoAnNMCNPM_QuanLyThuVien.GUI;

namespace DoAnNMCNPM_QuanLyThuVien
{
    public partial class Frm_Main : Form
    {
        public Frm_Main()
        {
            InitializeComponent();
            ControlBox = false;
          
        }

        private void tabThuVien_DocGia_Click(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_DocGia usrDocGia = new frm_DocGia();
            radPanel1.Controls.Add(usrDocGia);
            usrDocGia.Dock = DockStyle.Fill;
           
        }

        private void tabThuVien_ThuThu_Click(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_ThuThu usrThuThu = new frm_ThuThu();
            radPanel1.Controls.Add(usrThuThu);
            usrThuThu.Dock = DockStyle.Fill;
        }

        private void tabSach_NhapSach_Click(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_QLSach usrNhapSach = new frm_QLSach(); ;
            radPanel1.Controls.Add(usrNhapSach);
            usrNhapSach.Dock = DockStyle.Fill;
        }

        private void tabSach_ThongTinSach_Click(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_Sach usrSach = new frm_Sach();
            radPanel1.Controls.Add(usrSach);
            usrSach.Dock = DockStyle.Fill;
            this.radPanel1.Refresh();
        }

     

        private void tabMuonSach_Click(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_MuonSach usrMuonSach = new frm_MuonSach();
            radPanel1.Controls.Add(usrMuonSach);
            usrMuonSach.Dock = DockStyle.Fill;
        }

        private void tabTraSach_Click(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_TraSach usrTraSach = new frm_TraSach();
            radPanel1.Controls.Add(usrTraSach);
            usrTraSach.Dock = DockStyle.Fill;
        }

      

        private void tabThuVien_TheDocGia_Click(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_PhieuDocGia usrTheDoCGia = new frm_PhieuDocGia();
            radPanel1.Controls.Add(usrTheDoCGia);
           usrTheDoCGia.Dock = DockStyle.Fill;
        }

        private void tabThuVien_GioiThieu_Click(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_Anh usrAnh = new frm_Anh();
            radPanel1.Controls.Add(usrAnh);
            usrAnh.Dock = DockStyle.Fill;
        
        }

        private void tabDocGia_QLTheDocGia_Click(object sender, EventArgs e)
        {

            radPanel1.Controls.Clear();
            frm_PhieuDocGia usrPhieuDocGia = new frm_PhieuDocGia();
            radPanel1.Controls.Add(usrPhieuDocGia);
            usrPhieuDocGia.Dock = DockStyle.Fill;
        }

        private void tabBaoCao_TinhHinhMuonSach_Click(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_TinhHinhMuonSach usrTinhHinhMuonSach = new frm_TinhHinhMuonSach();
            radPanel1.Controls.Add(usrTinhHinhMuonSach);
            usrTinhHinhMuonSach.Dock = DockStyle.Fill;

        }

        private void tabBaoCao_SachTraTre_Click_1(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_BaoCaoTraTreSach usrSachTraTre = new frm_BaoCaoTraTreSach();
            radPanel1.Controls.Add(usrSachTraTre);
            usrSachTraTre.Dock = DockStyle.Fill;
        }

        private void tabDocGia_QLDocGia_Click(object sender, EventArgs e)
        {
            radPanel1.Controls.Clear();
            frm_DocGia usrDocGia = new frm_DocGia();
            radPanel1.Controls.Add(usrDocGia);
            usrDocGia.Dock = DockStyle.Fill;

        }
    }
}
