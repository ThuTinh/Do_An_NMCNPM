create database QLTV
go
use QLTV
go



create table TIEN
(
	GiaTien int check(GiaTien=1000)
)
insert into TIEN values (1000)


create table DOCGIA
(
	MaDocGia char(6) PRIMARY KEY,
	TenDocGia varchar(40) not null,
	GioiTinh varchar(4),
	NgaySinh smalldatetime,
	DiaChi varchar(50),
	Email varchar(50) unique
)


GO
insert into DOCGIA values ('DG001','Nguyen Van A','Nam','01/12/1997','731, Tran Hung Dao, Q 5, Tp HCM','nguyenvana@gmail.com')
insert into DOCGIA values ('DG002','Tran Ngoc Han','Nu','03/15/1998','23/5, Nguyen Trai, Q 5, Tp HCM','TranNgocHan98@gmail.com')
insert into DOCGIA values ('DG003','Tran Ngoc Linh','Nu','12/02/1998','45, Nguyen Canh Chan, Q 1, Tp HCM', 'ngoclinh0212@gmail.com')
insert into DOCGIA values ('DG004','Tran Minh Long','Nam','09/12/1998','50/34 Le Dai Hanh, Q 10, Tp HCM','tranminhlong@gmail.com')
insert into DOCGIA values ('DG005','Le Nhat Minh','Nam','06/04/1999','34, Truong Dinh, Q 3, Tp HCM','MinhLe99@gmail.com')
insert into DOCGIA values ('DG006','Le Hoai Thuong','Nu','08/05/1999','227, Nguyen Van Cu, Q 5, Tp HCM','lehoaithuong@gmail.com')
insert into DOCGIA values ('DG007','Nguyen Van Tam','Nam','09/23/1997','32/3, Tran Binh Trong, Q 5, Tp HCM','nguyenvantam@gmail.com')
insert into DOCGIA values ('DG008','Phan Thi Thanh','Nu','04/30/1997','45/2, An Duong Vuong, Q 5, Tp HCM','thanh300497@gmail.com')
insert into DOCGIA values ('DG009','Le Ha Vinh','Nam','08/19/1997','873, Le Hong Phong, Q 5, Tp HCM','lehavinh@gmail.com')
insert into DOCGIA values ('DG010','Ha Duy Lap','Nam','12/31/1999','34/34B, Nguyen Trai, Q 1, Tp HCM','haduylap@gmail.com')	
insert into DOCGIA values ('DG011','Le Van Tam','Nam','09/30/1998','20/3 Doan Van Bo, Q 4, Tp HCM', 'levamtam@gmail.com')
insert into DOCGIA values ('DG012', 'Ha Dan Phung', 'Nu', '12/12/1997','30 Dang Van Bi, Q Thu Duc, Tp HCM','Hadanphung@gmail.com')
insert into DOCGIA values ('DG013', 'Huynh Thi Thuy', 'Nu', '12/03/1997', '23/2 Le Van Viet, Q9, Tp HCM', ' HuynhThiThuy@gmail.com')
insert into DOCGIA values ('DG014', 'Phan Thi Mai', 'Nu', '11/23/1997', ' 25 Le Van Viet, Q9, Tp HCM', 'PhanThiMai97@gmail.com')
insert into DOCGIA values ('DG015', 'Le Thi Xuan Hoa', 'Nu', '12/30/1996', '30/05 Vo Van Ngan, Q Thu Duc, Tp HCM','Lethixuanhoa@gmai.com')


go
create table THEDOCGIA
(
	MaThe char(6) primary key,
	MaDocGia char(6) ,
	LoaiThe varchar(10),
	NgayLamThe smalldatetime,
	HanThe smalldatetime,
	constraint fk_THEDOCGIA_DOCGIA foreign key(MaDocGia) references DOCGIA(MaDocGia)
)
GO


insert into THEDOCGIA values ('MT0000', 'DG001','LTA', '06/30/2017','06/30/2018')
insert into THEDOCGIA values ('MT0001', 'DG002','LTA', '06/30/2017','06/30/2018')
insert into THEDOCGIA values ('MT0002', 'DG002', 'LTA', ' 06/30/2017', '06/30/2018')
insert into THEDOCGIA values ('MT0003', 'DG003', 'LTB', '07/15/2017', '07/15/2018')
insert into THEDOCGIA values ('MT0004', 'DG004', 'LTA', '07/23/2017', '07/23/2018')
insert into THEDOCGIA values ('MT0005', 'DG005', 'LTB', '07/29/2017', '07/29/2018')
insert into THEDOCGIA values ('MT0006', 'DG006', 'LTB', '09/13/2017', '09/13/2018')
insert into THEDOCGIA values ('MT0007', 'DG007', 'LTB', '10/23/2017', '10/23/2018')
insert into THEDOCGIA values ('MT0008', 'DG008', 'LTA', '10/23/2017', '10/23/2018')
insert into THEDOCGIA values ('MT0009', 'DG009', 'LTA', '10/23/2017', '10/23/2018')
insert into THEDOCGIA values ('MT0010', 'DG010', 'LTA', '12/03/2017', '12/03/2018')
insert into THEDOCGIA values ('MT0011', 'DG011', 'LTB', '12/04/2017', '12/04/2018')
insert into THEDOCGIA values ('MT0012', 'DG012', 'LTB', '01/20/2018', '01/20/2019')
insert into THEDOCGIA values ('MT0013', 'DG013', 'LTA', '01/20/2018', '01/20/2019')
insert into THEDOCGIA values ('MT0014', 'DG014', 'LTA', '03/04/2018', '03/04/2019')
insert into THEDOCGIA values ('MT0015', 'DG015', 'LTA', '04/04/2018', '04/04/2018')



go
create table THUTHU
(
	MaThuThu char(6) primary key,
	TenThuThu varchar(40),
	GioiTinh varchar(4),
	NgaySinh smalldatetime,
	DiaChi varchar(50), 
	Email varchar(50) unique,
	ChucVu varchar(20)
)

GO
insert into THUTHU values ('TT0001', 'Le Thi Hong Hoa', 'Nu', '02/19/1984', '20/3 Le Van Viet, Q9, TpHCM', 'lethihonghoa@gmail.com', 'TT') 
insert into THUTHU values ('TT0002', 'Tran Thi Thuy', 'Nu', '12/09/1992', '15 Tang Nhon Phu, Q9, Tp HCM', 'TranThiThuy@gmail.com', 'TT')
insert into THUTHU values ('TT0003', 'Nguyen Van Nam', 'Nam', '03/13/1989', '30/2 Dang Van Bi, Q Thu Duc, Tp HCM', 'vannam0312@gmail.com','TT') 



go
create table PHIEUMUON
(
	MaPhieuMuon char(6) primary key,
	MaThuThu char(6),
	MaThe char(6),

	NgayMuon smalldatetime,
	NgayDuKienTra smalldatetime,
	SoLuong int
	constraint fk_PHIEUMUON_THUTHU foreign key(MaThuThu) references THUTHU(MaThuThu),
	constraint fk_PHIEUMUON_THEDOCGIA foreign key(MaThe) references THEDOCGIA(MaThe),
	
)

GO
insert into PHIEUMUON values ('PM0001', 'TT0002', 'MT0001', '07/05/2017','08/04/2017',2)
insert into PHIEUMUON values ('PM0002', 'TT0001', 'MT0002', '07/15/2017','08/14/2017',1)
insert into PHIEUMUON values ('PM0003', 'TT0002', 'MT0005', '08/30/2017','09/30/2017',3)
insert into PHIEUMUON values ('PM0004', 'TT0001', 'MT0001', '08/30/2017','09/29/2017',2)
insert into PHIEUMUON values ('PM0005', 'TT0002', 'MT0007', '11/15/2017','12/15/2017',5)
insert into PHIEUMUON values ('PM0006', 'TT0002', 'MT0005', '11/15/2017','12/15/2017',5)
insert into PHIEUMUON values ('PM0007', 'TT0002', 'MT0008', '12/30/2017','1/29/2018',3)
insert into PHIEUMUON values ('PM0008', 'TT0001', 'MT0010', '01/25/2018','02/24/2018',3)
insert into PHIEUMUON values ('PM0009', 'TT0001', 'MT0008', '01/25/2018','02/24/2018',1)
insert into PHIEUMUON values ('PM0010', 'TT0003', 'MT0005', '01/25/2018','02/24/2018',3)
insert into PHIEUMUON values ('PM0011', 'TT0003', 'MT0011', '01/27/2018','02/26/2018',4)
insert into PHIEUMUON values ('PM0012', 'TT0001', 'MT0003', '01/28/2018','02/27/2018',4)
insert into PHIEUMUON values ('PM0013', 'TT0003', 'MT0001', '01/28/2018','02/27/2018',3)
insert into PHIEUMUON values ('PM0014', 'TT0003', 'MT0014', '04/20/2018','05/20/2018',2)
insert into PHIEUMUON values ('PM0015', 'TT0002', 'MT0015', '04/25/2018','05/25/2018',3)



go
create table THELOAISACH
(
	TenTheLoai varchar(40) primary key,
)

insert into THELOAISACH values ('Giao trinh')
insert into THELOAISACH values ('Tham khao')
insert into THELOAISACH values ('Luan van')


go
create table DAUSACH
(
	MaDauSach char(6) primary key,
	TenDauSach varchar(80),
	TacGia varchar(40),
	TenTheLoai varchar(40),
	NamSanXuat int,
	NhaSanXuat varchar(50),
	Gia money,
	SoLuong int,
	constraint fk_SACH_THELOAI foreign key(TenTheLoai) references THELOAISACH(TenTheLoai),
)
GO

insert into DAUSACH values ('GT1', 'Thiet ke co so du lieu','Trinh Minh Tuan', 'Giao trinh', 2017, 'Nxb.Dai hoc Quoc gia TPHCM', 57000, 100)
insert into DAUSACH values ('GT2', 'Xu ly ngon ngu tu nhien','Nguyen Tuan Dang', 'Giao trinh', 2012, 'Nxb.Dai hoc Quoc gia TPHCM', 45000, 100)
insert into DAUSACH values ('GT3', 'Phap chung ky thuat so','Dam Quang Hong Hai', 'Giao trinh', 2016, 'Nxb.Dai hoc Quoc gia TPHCM', 64000, 100)
insert into DAUSACH values ('GT4', 'He thong nhung','Vu Duc Lung, Tran Ngoc Duc', 'Giao trinh', 2016, 'Nxb.Dai hoc Quoc gia TPHCM', 55000, 100)
insert into DAUSACH values ('GT5', 'Thiet ke vi mach so','Nguyen Minh Son, Nguyen Tran Son', 'Giao trinh', 2016, 'Nxb.Dai hoc Quoc gia TPHCM', 39000, 100)
insert into DAUSACH values ('TK1', 'Tai sao Mac dung','Terry Eagleton', 'Tham khao', 2014, 'Nxb.Chinh tri - Hanh chinh', 57000, 100)
insert into DAUSACH values ('TK2', 'Ho Chi Minh : Nha tu tuong loi lac','Song Thanh', 'Tham khao', 2013, 'Nxb.Dai hoc Quoc gia TPHCM', 57000, 100)
insert into DAUSACH values ('TK3', 'Ban ve tinh than phap luat : De Lesprit deslois','Montesquieu', 'Tham khao', 2013, 'Nxb.Dai hoc Quoc gia TPHCM', 57000, 100)
insert into DAUSACH values ('TK4', 'Chung ta thua ke di san nao? ','Van Tao', 'Tham khao', 2013, 'Nxb.Dai hoc Quoc gia TPHCM', 57000, 100)
insert into DAUSACH values ('TK5', 'Phuong phap va phong cach Ho Chi Minh ','Dang Xuan Ky', 'Tham khao', 2013, 'Nxb.Dai hoc Quoc gia TPHCM', 57000, 100)
insert into DAUSACH values ('LV1', 'Ky thuat kiem thu dot bien','Hoang Thi Thanh Thuy', 'Giao trinh', 2012, null, null, null)
insert into DAUSACH values ('LV2', 'An du lieu anh 3D','Nguyen Bao Binh', 'Giao trinh', 2012, null, null, null)
insert into DAUSACH values ('LV3', 'Tim kiem tu dong van ban song ngu Anh - Viet tu internet','Ngo Quoc Hung', 'Giao trinh', 2013, null, null, null)
insert into DAUSACH values ('LV4', 'Nghien cuu cai tien thuat toan phan lop su dung cay quyet dinh de quy','Nguyen Minh Luan', 'Giao trinh',2012, null, null, null)
insert into DAUSACH values ('LV5', 'He thong quan ly tien luon tren mang Wan tai buu dien tinh Soc Trang','Nguyen Tri Nghia', 'Giao trinh', 2013, null, null, null)



go
create table CUONSACH
(
	MaSach char(6) primary key,
	MaDauSach char(6),
	TinhTrang char(2) check(TinhTrang='N'or TinhTrang='Y'),
	NgayNhap smalldatetime,
	ChuThich text,
	constraint fk_SACH_DAUSACH foreign key(MaDauSach) references DAUSACH(MaDauSach)
)
GO
insert into CUONSACH values ('GT1001', 'GT1', 'N', '12/5/2017', null)
insert into CUONSACH values ('GT1002', 'GT1', 'N', '12/5/2017', null)
insert into CUONSACH values ('GT2001', 'GT2', 'N', '12/5/2012', null)
insert into CUONSACH values ('GT3001', 'GT3', 'N', '12/5/2016', null)
insert into CUONSACH values ('GT3002', 'GT3', 'N', '12/5/2016', null)
insert into CUONSACH values ('TK1001', 'TK1', 'N', '03/14/2014', null)
insert into CUONSACH values ('TK1002', 'TK1', 'N', '03/14/2014', null)
insert into CUONSACH values ('TK1003', 'TK1', 'N', '03/14/2014', null)
insert into CUONSACH values ('TK1004', 'TK1', 'N', '03/14/2014', null)
insert into CUONSACH values ('TK5001', 'TK5', 'N', '07/29/2013', null)
insert into CUONSACH values ('LV1001', 'LV1', 'N', '12/28/2012', null)
insert into CUONSACH values ('LV4001', 'LV4', 'N', '10/23/2012', null)
insert into CUONSACH values ('LV4002', 'LV4', 'N', '10/23/2012', null)
insert into CUONSACH values ('LV4003', 'LV4', 'N', '10/23/2012', null)
insert into CUONSACH values ('LV4004', 'LV4', 'N', '10/23/2012', null)
insert into CUONSACH values ('LV4005', 'LV4', 'N', '10/23/2012', null)

go
create table CHITIETMUON
(
	MaPhieuMuon char(6) not null unique,
	MaSach char(6) not null unique,
	ChuThich text ,
	constraint pk_CHITIETMUON primary key( MaPhieuMuon,MaSach),
	constraint fk_CHITIETMUON_SACH foreign key(MaSach) references CUONSACH(MaSach),
)
GO
insert into CHITIETMUON values ('PM0001', 'GT1001', null)
insert into CHITIETMUON values ('PM0002', 'GT1002', null)
insert into CHITIETMUON values ('PM0003', 'GT2001', null)
insert into CHITIETMUON values ('PM0004', 'GT3001', null)
insert into CHITIETMUON values ('PM0005', 'GT3002', null)
insert into CHITIETMUON values ('PM0006', 'TK1001', null)
insert into CHITIETMUON values ('PM0007', 'TK1002', null)
insert into CHITIETMUON values ('PM0008', 'TK1003', null)
insert into CHITIETMUON values ('PM0009', 'TK1004', null)
insert into CHITIETMUON values ('PM0010', 'TK5001', null)
insert into CHITIETMUON values ('PM0011', 'LV1001', null)
insert into CHITIETMUON values ('PM0012', 'LV4001', null)
insert into CHITIETMUON values ('PM0013', 'LV4003', null)
insert into CHITIETMUON values ('PM0014', 'LV4004', null)
insert into CHITIETMUON values ('PM0015', 'LV4005', null)



go
create table PHIEUTRA
(
	MaPhieuTra char(6) primary key,
	MaThe char(6) not null,
	MaThuThu char(6) not null,
	NgayTra smalldatetime,
	soluong int ,
	
	constraint fk_PHIEUTRA_THUTHU foreign key(MaThuThu) references THUTHU(MaThuThu),
	constraint fk_PHIEUTRA_THEDOCGIA foreign key(MaThe) references THEDOCGIA(MaThe),
)
GO
insert into PHIEUTRA values ( 'PT0001', 'MT0001', 'TT0002', '07/20/2017', 2)
insert into PHIEUTRA values ( 'PT0002', 'MT0002', 'TT0001', '07/30/2017', 1)
insert into PHIEUTRA values ( 'PT0003', 'MT0005', 'TT0002', '09/05/2017', 3)
insert into PHIEUTRA values ( 'PT0004', 'MT0001', 'TT0001', '09/30/2017', 2)
insert into PHIEUTRA values ( 'PT0005', 'MT0007', 'TT0002', '12/10/2017', 5)
insert into PHIEUTRA values ( 'PT0006', 'MT0005', 'TT0002', '12/14/2017', 5)
insert into PHIEUTRA values ( 'PT0007', 'MT0008', 'TT0002', '01/19/2018', 3)
insert into PHIEUTRA values ( 'PT0008', 'MT0010', 'TT0001', '02/12/2018', 3)
insert into PHIEUTRA values ( 'PT0009', 'MT0008', 'TT0001', '02/02/2018', 1)
insert into PHIEUTRA values ( 'PT0010', 'MT0005', 'TT0003', '02/16/2018', 3)
insert into PHIEUTRA values ( 'PT0011', 'MT0011', 'TT0003', '02/18/2018', 4)
insert into PHIEUTRA values ( 'PT0012', 'MT0003', 'TT0001', '02/28/2018', 4)
insert into PHIEUTRA values ( 'PT0013', 'MT0001', 'TT0003', '02/23/2018', 3)
insert into PHIEUTRA values ( 'PT0014', 'MT0014', 'TT0003', '05/15/2018', 2)
insert into PHIEUTRA values ( 'PT0015', 'MT0015', 'TT0002', '05/25/2018', 3)






go
create table CHITIETTRA
(
	MaPhieuTra char(6) not null ,
	MaPhieuMuon char(6) not null,
	MaSach char(6) not null ,
	SoNgayTraMuon int,
	ChuThich text,
	constraint pk_CHITIETTRA primary key (MaPhieuTra,MaSach),
	constraint fk_CHITIETTRA_PHIEUMUON foreign key(MaPhieuMuon) references PHIEUMUON(MaPhieuMuon),
	constraint fk_CHITIETTRA_PHIEUTRA foreign key (MaPhieuTra) references PHIEUTRA(MaPhieuTra),
	constraint fk_CHITIETTRA_CUONSACH foreign key (MaSach) references CUONSACH (MaSach)
)

GO


insert into CHITIETTRA values ('PT0001',  'PM0001','GT1001', 15 , null)
insert into CHITIETTRA values ('PT0002', 'PM0002','GT1002', 15 , null)
insert into CHITIETTRA values ('PT0003','PM0003', 'GT2001', 05, null)
insert into CHITIETTRA values ('PT0004', 'PM0004','GT3001', 30, null)
insert into CHITIETTRA values ('PT0005','PM0005', 'GT3002', 25, null)
insert into CHITIETTRA values ('PT0006','PM0006',  'TK1001', 29, null)
insert into CHITIETTRA values ('PT0007','PM0007',  'TK1002', 20, null)
insert into CHITIETTRA values ('PT0008','PM0008', 'TK1003', 28, null)
insert into CHITIETTRA values ('PT0009', 'PM0009','TK1004', 08, null)
insert into CHITIETTRA values ('PT0010', 'PM0010','TK5001', 20, null)
insert into CHITIETTRA values ('PT0011', 'PM0011','LV1001', 22, null)
insert into CHITIETTRA values ('PT0012', 'PM0012','LV4001', 31, 'Tre hang 1 ngay : 4 cuon sach ')
insert into CHITIETTRA values ('PT0013','PM0013', 'LV4003', 26,  null)
insert into CHITIETTRA values ('PT0014', 'PM0014','LV4004', 25, null)
insert into CHITIETTRA values ('PT0001','PM0015', 'LV4005', 30, null)



go
create trigger INSERT_CHITIETTRA_SoNgayTraMuon
on CHITIETTRA
for INSERT
as	
	declare @MaSach char(6), @SoNgayTraMuon int,@MaPhieuTra char(6),@NgayTra smalldatetime, @MaPhieuMuon char(6),@NgayMuon smalldatetime -- khai bao bien
	select @MaPhieuTra=MaPhieuTra,@MaSach =MaSach,@MaPhieuMuon=MaPhieuMuon from inserted-- lay gia tri ra can dung select--B1
	select @NgayTra=NgayTra from PHIEUTRA WHERE MaPhieuTra=@MaPhieuTra
	select @NgayMuon=NgayMuon from PHIEUMUON WHERE MaPhieuMuon=@MaPhieuMuon
	UPDATE CHITIETTRA
	SET SoNgayTraMuon= DATEDIFF (day, @NgayMuon, @NgayTra)
	WHERE MaPhieuTra=@MaPhieuTra and MaSach =@MaSach


create table QUYDINH1
(
	TuoiMin int,
	TuoiMax int,
	HanThe smalldatetime
)

create table QUYDINH2
(
	SoTheLoai int,
	HanTHoiGianNhanSach Smalldatetime
)


create table QUYDINH3
(
	SoSachMuonToiDa int,
	ThoiGianMuonToiDa int
)


go
create table PHIEUTIENPHAT
(
	MaPhieuPhat char(6) primary key,
	MaPhieuTra char(6),
	TongNo int ,
	constraint fk_PHIEUTIENPHAT_PHIEUTRA foreign key (MaPhieuTra) references PHIEUTRA (MaPhieuTra)
)
go
create trigger INSERT_PHIEUTIENPHAT_TongNo1
on PHIEUTIENPHAT
for INSERT
as	
	declare @GiaTien int,@MaPhieuPhat char(6),@SoNgayTraMuon int,@MaPhieuTra char(6)
	select @MaPhieuphat=MaPhieuPhat, @MaPhieuTra=MaPhieuTra from inserted-- lay gia tri ra can dung select--B1
	select @GiaTien=GiaTien from TIEN
	select @SoNgayTraMuon=SoNgayTraMuon from CHITIETTRA WHERE MaPhieuTra=@MaPhieuTra
	UPDATE PhieuTienPhat
	SET TongNo= @GiaTien*@SoNgayTraMuon
	WHERE MaPhieuPhat=@MaPhieuPhat


