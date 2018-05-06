create  database QLTV
go
use QLTV
go



create table TIEN
(
	GiaTien int 
)
insert into TIEN values (1000)

go

create table DOCGIA
(
	MaDocGia char(6) PRIMARY KEY,
	TenDocGia nvarchar(40) not null,
	GioiTinh nvarchar(4),
	NgaySinh smalldatetime,
	DiaChi nvarchar(50),
	Email varchar(50) unique
)

--select *from docgia
GO

insert into DOCGIA values ('DG0001',N'Nguyễn Văn A','Nam','01/12/1997',N'731, Trần Hưng Đạo, Q 5, Tp HCM','nguyenvana@gmail.com')
insert into DOCGIA values ('DG0002',N'Trần Ngọc Hân',N'Nữ','03/15/1998',N'23/5, Nguyễn Trãi, Q 5, Tp HCM','TranNgocHan98@gmail.com')
insert into DOCGIA values ('DG0003',N'Trần Ngọc Linh',N'Nữ','12/02/1998',N'45, Nguyễn Cảnh Chân, Q 1, Tp HCM', 'ngoclinh0212@gmail.com')
insert into DOCGIA values ('DG0004',N'Trần Minh Long','Nam','09/12/1998',N'50/34 Lê Đại Hành, Q 10, Tp HCM','tranminhlong@gmail.com')
insert into DOCGIA values ('DG0005',N'Lê Nhật Minh','Nam','06/04/1999',N'34, Trương Định, Q 3, Tp HCM','MinhLe99@gmail.com')
insert into DOCGIA values ('DG0006',N'Lê Hoài Thương',N'Nữ','08/05/1999',N'227, Nguyễn Văn Cừ, Q 5, Tp HCM','lehoaithuong@gmail.com')
insert into DOCGIA values ('DG0007',N'Nguyễn Văn Tâm','Nam','09/23/1997',N'32/3, Trần Bình Trọng, Q 5, Tp HCM','nguyenvantam@gmail.com')
insert into DOCGIA values ('DG0008',N'Phan Thị Thanh',N'Nữ','04/30/1997',N'45/2, An Dương Vương, Q 5, Tp HCM','thanh300497@gmail.com')
insert into DOCGIA values ('DG0009',N'Lê Hà Vinh','Nam','08/19/1997',N'873, Lê Hồng Phong, Q 5, Tp HCM','lehavinh@gmail.com')
insert into DOCGIA values ('DG0010',N'Hà Duy Lập','Nam','12/31/1999',N'34/34B, Nguyễn Trãi, Q 1, Tp HCM','haduylap@gmail.com')	
insert into DOCGIA values ('DG0011',N'Lê Văn Tâm','Nam','09/30/1998',N'20/3 Đoàn Văn Bơ, Q 4, Tp HCM', 'levamtam@gmail.com')
insert into DOCGIA values ('DG0012',N'Hà Đan Phụng', N'Nữ', '12/12/1997',N'30 Đặng Văn Bi, Q Thủ Đức, Tp HCM','Hadanphung@gmail.com')
insert into DOCGIA values ('DG0013',N'Huyfnh Thị Thùy', N'Nữ', '12/03/1997', N'23/2 Lê Văn Việt, Q9, Tp HCM', ' HuynhThiThuy@gmail.com')
insert into DOCGIA values ('DG0014', N'Phan Thị Mai', N'Nữ', '11/23/1997', N' 25 Lê Văn Việt, Q9, Tp HCM', 'PhanThiMai97@gmail.com')
insert into DOCGIA values ('DG0015', N'Lê Thị Xuân Hoa', N'Nữ', '12/30/1996', N'30/05 Võ Văn Ngân, Q Thủ Đức, Tp HCM','Lethixuanhoa@gmai.com')


go

create table THEDOCGIA
(
	MaThe char(6) primary key,
	MaDocGia char(6) ,
	LoaiThe nvarchar(10),
	NgayLamThe smalldatetime,
	HanThe smalldatetime,
	constraint fk_THEDOCGIA_DOCGIA foreign key(MaDocGia) references DOCGIA(MaDocGia)
)

GO


insert into THEDOCGIA values ('MT0000', 'DG0001','A', '06/30/2017','06/30/2018')
insert into THEDOCGIA values ('MT0001', 'DG0002','A', '06/30/2017','06/30/2018')
insert into THEDOCGIA values ('MT0002', 'DG0002', 'A', ' 06/30/2017', '06/30/2018')
insert into THEDOCGIA values ('MT0003', 'DG0003', 'B', '07/15/2017', '07/15/2018')
insert into THEDOCGIA values ('MT0004', 'DG0004', 'A', '07/23/2017', '07/23/2018')
insert into THEDOCGIA values ('MT0005', 'DG0005', 'B', '07/29/2017', '07/29/2018')
insert into THEDOCGIA values ('MT0006', 'DG0006', 'B', '09/13/2017', '09/13/2018')
insert into THEDOCGIA values ('MT0007', 'DG0007', 'B', '10/23/2017', '10/23/2018')
insert into THEDOCGIA values ('MT0008', 'DG0008', 'A', '10/23/2017', '10/23/2018')
insert into THEDOCGIA values ('MT0009', 'DG0009', 'A', '10/23/2017', '10/23/2018')
insert into THEDOCGIA values ('MT0010', 'DG0010', 'A', '12/03/2017', '12/03/2018')
insert into THEDOCGIA values ('MT0011', 'DG0011', 'B', '12/04/2017', '12/04/2018')
insert into THEDOCGIA values ('MT0012', 'DG0012', 'B', '01/20/2018', '01/20/2019')
insert into THEDOCGIA values ('MT0013', 'DG0013', 'A', '01/20/2018', '01/20/2019')
insert into THEDOCGIA values ('MT0014', 'DG0014', 'A', '03/04/2018', '03/04/2019')
insert into THEDOCGIA values ('MT0015', 'DG0015', 'A', '04/04/2018', '04/04/2018')



go

create table THUTHU
(
	MaThuThu char(4) primary key,
	TenThuThu nvarchar(40),
	GioiTinh nvarchar(4),
	NgaySinh smalldatetime,
	DiaChi nvarchar(50), 
	Email varchar(50) unique,
	ChucVu nvarchar(20)
)

GO
insert into THUTHU values ('TT01', N'Lê Thị Hồng Hoa', N'Nữ', N'02/19/1984', N'20/3 Lê Văn Việt, Q9, TpHCM', 'lethihonghoa@gmail.com', N'Thủ thư') 
insert into THUTHU values ('TT02', N'Trần Thị Thùy', N'Nữ', N'12/09/1992', N'15 Tăng Nhơn Phú, Q9, Tp HCM', 'TranThiThuy@gmail.com', N'Thủ Thư')
insert into THUTHU values ('TT03', N'Nguyễn Văn Nam', N'Nam', N'03/13/1989', N'30/2 Đặng Văn Bi, Q Thủ Đức, Tp HCM', 'vannam0312@gmail.com',N'Thủ thư') 

go

create table THELOAISACH
(
	TenTheLoai nvarchar(40) primary key,
)

insert into THELOAISACH values (N'Giáo trình')
insert into THELOAISACH values (N'Tham khảo')
insert into THELOAISACH values (N'Luận văn')


go

create table DAUSACH
(
	MaDauSach char(6) primary key,
	TenDauSach nvarchar(80),
	TacGia nvarchar(40),
	TenTheLoai nvarchar(40),
	NamSanXuat int,
	NhaSanXuat nvarchar(50),
	Gia money,
	SoLuong int,
	
)
GO

insert into DAUSACH values ('MDS001', N'Thiết kế cơ sở dữ liệu',N'Trịnh Minh Tuấn', N'Giáo trình', 2017, N'Nxb.Đại học quốc gia TPHCM', 57000, 0)
insert into DAUSACH values ('MDS002', N'Xử lý ngôn ngữ tự nhiên',N'Nguyễn Tuấn Đăng', N'Giáo trình', 2012, N'Nxb.Đại học quốc gia TPHCM', 45000, 0)
insert into DAUSACH values ('MDS003', N'Pháp chứng kỹ thuật số',N'Đàm Quang Hồng Hải', N'Giáo trình', 2016, N'Nxb.Đại học quốc gia TPHCM', 64000, 0)
insert into DAUSACH values ('MDS004', N'Hệ thống nhúng',N'Vũ Lung, Trần Ngọc Đức', N'Giáo trình', 2016, N'Nxb.Đại học quốc gia TPHCM', 55000, 0)
insert into DAUSACH values ('MDS005', N'Thiết kế vi mạch số',N'Nguyễn Minh Sơn, Nguyễn Trần Sơn', N'Giáo trình', 2016, N'Nxb.Đại học quốc gia TPHCM', 39000, 0)
insert into DAUSACH values ('MDS006', N'Tại sao Mác đúng',N'Terry Eagleton', N'Tham khảo', 2014, N'Nxb.Chính trị - Hành chính', 57000, 0)
insert into DAUSACH values ('MDS007', N'Hồ Chí Minh : Nhà tư tưởng lỗi lạc',N'Song Thanh', N'Tham khảo', 2013, N'Nxb.Đại học quốc gia TPHCM', 57000, 0)
insert into DAUSACH values ('MDS008', N'Bàn về tinh thần pháp luật : De Lesprit deslois',N'Montesquieu', N'Tham khảo', 2013, N'Nxb.Đại học quốc gia TPHCM', 57000, 0)
insert into DAUSACH values ('MDS009', N'Chúng ta kế thừa di sản nào? ',N'Văn Tạo', N'Tham khảo', 2013, N'Nxb.Đại học quốc gia TPHCM', 57000, 0)
insert into DAUSACH values ('MDS010', N'Phương pháp và phong cách Hồ Chí Minh ',N'Đặng Xuân Kỵ', N'Tham khảo', 2013, N'Nxb.Đại học quốc gia TPHCM', 57000, 0)
insert into DAUSACH values ('MDS011', N'Kỹ thuật kiểm thử đột biến',N'Hoàng Thị Thanh Thủy', N'Giáo trình', 2012, N'NXB Hà Nội', 12000, 0)
insert into DAUSACH values ('MDS012', N'Ẩn dữ liệu ảnh 3D',N'Nguyễn Bảo Bình', N'Giáo trình', 2012, N'NXB Hà Nội', 34000, 0)
insert into DAUSACH values ('MDS013', N'Tìm kiếm tự động văn bản song ngữ Anh - Việt từ internet',N'Ngô Quốc Hùng', N'Giáo trình', 2013, N'NXB Hà Nội', 40000, 0)
insert into DAUSACH values ('MDS014', N'Nghiên cứu cải tiến thuật toán phân lớp sử dụng cây quyết định đệ quy',N'Nguyễn Minh Luân', N'Giáo trình',2012, N'NXB Hà Nội', 82000, 0)
insert into DAUSACH values ('MDS015', N'Hệ thống quản lý tiền lương trên mạng Wan tại bưu điện tỉnh Sóc Trăng',N'Nguyễn Trí Nghĩa', N'Giáo trình', 2013,  N'NXB Hà Nội', 50000, 0)



go

create table CUONSACH
(
	MaSach char(6) primary key,
	MaDauSach char(6),
	TinhTrang char(2) check(TinhTrang='N'or TinhTrang='Y'),
	NgayNhap smalldatetime,
	ChuThich ntext,
	constraint fk_SACH_DAUSACH foreign key(MaDauSach) references DAUSACH(MaDauSach)
)

GO

-- tao trigger cap nhap so luong dau sach khi them cuon sach 
create trigger Insert_CuonSach on CUONSACH
for insert
as
declare @MaDauSach char (6)
select @MaDauSach = MaDauSach from inserted
update DAUSACH set SoLuong = SoLuong +1 where MaDauSach = @MaDauSach

--tao trigger cap nhap so luong dau sach khi xoa 1 cuon sach
GO
create trigger Delete_CuonSach on CUONSACH
for delete
as
declare @MaDauSach char (6)
select @MaDauSach = MaDauSach from deleted
update DAUSACH set SoLuong = SoLuong -1 where MaDauSach = @MaDauSach

go

insert into CUONSACH values ('MS0001', 'MDS001', 'N', '12/5/2017', null)
insert into CUONSACH values ('MS0002', 'MDS001', 'N', '12/5/2017', null)
insert into CUONSACH values ('MS0003', 'MDS002', 'N', '12/5/2012', null)
insert into CUONSACH values ('MS0004', 'MDS002', 'N', '12/5/2016', null)
insert into CUONSACH values ('MS0005', 'MDS003', 'N', '12/5/2016', null)
insert into CUONSACH values ('MS0006', 'MDS004', 'N', '03/14/2014', null)
insert into CUONSACH values ('MS0007', 'MDS005', 'N', '03/14/2014', null)
insert into CUONSACH values ('MS0008', 'MDS005', 'N', '03/14/2014', null)
insert into CUONSACH values ('MS0009', 'MDS005', 'N', '03/14/2014', null)
insert into CUONSACH values ('MS0010', 'MDS006', 'N', '07/29/2013', null)
insert into CUONSACH values ('MS0011', 'MDS006', 'N', '12/28/2012', null)
insert into CUONSACH values ('MS0012', 'MDS007', 'N', '10/23/2012', null)
insert into CUONSACH values ('MS0013', 'MDS008', 'N', '10/23/2012', null)
insert into CUONSACH values ('MS0014', 'MDS008', 'N', '10/23/2012', null)
insert into CUONSACH values ('MS0015', 'MDS009', 'N', '10/23/2012', null)
insert into CUONSACH values ('MS0016', 'MDS010', 'N', '10/23/2012', null)
insert into CUONSACH values ('MS0017', 'MDS011', 'N', '12/28/2012', null)
insert into CUONSACH values ('MS0018', 'MDS012', 'N', '10/23/2012', null)
insert into CUONSACH values ('MS0019', 'MDS012', 'N', '10/23/2012', null)
insert into CUONSACH values ('MS0020', 'MDS013', 'N', '10/23/2012', null)
insert into CUONSACH values ('MS0021', 'MDS014', 'N', '10/23/2012', null)
insert into CUONSACH values ('MS0022', 'MDS015', 'N', '10/23/2012', null)

go


create table PHIEUMUON
(
	MaPhieuMuon char(6) primary key,
	MaThuThu char(4),
	MaThe char(6),

	NgayMuon smalldatetime,
	NgayDuKienTra smalldatetime,
	SoLuong int
	constraint fk_PHIEUMUON_THUTHU foreign key(MaThuThu) references THUTHU(MaThuThu),
	constraint fk_PHIEUMUON_THEDOCGIA foreign key(MaThe) references THEDOCGIA(MaThe),
	
)

GO
insert into PHIEUMUON values ('PM0001', 'TT02', 'MT0001', '07/05/2017','08/04/2017',0)
insert into PHIEUMUON values ('PM0002', 'TT01', 'MT0002', '07/15/2017','08/14/2017',0)
insert into PHIEUMUON values ('PM0003', 'TT02', 'MT0005', '08/30/2017','09/30/2017',0)
insert into PHIEUMUON values ('PM0004', 'TT01', 'MT0001', '08/30/2017','09/29/2017',0)
insert into PHIEUMUON values ('PM0005', 'TT02', 'MT0007', '11/15/2017','12/15/2017',0)
insert into PHIEUMUON values ('PM0006', 'TT02', 'MT0005', '11/15/2017','12/15/2017',0)
insert into PHIEUMUON values ('PM0007', 'TT02', 'MT0008', '12/30/2017','1/29/2018',0)
insert into PHIEUMUON values ('PM0008', 'TT01', 'MT0010', '01/25/2018','02/24/2018',0)
insert into PHIEUMUON values ('PM0009', 'TT01', 'MT0008', '01/25/2018','02/24/2018',0)
insert into PHIEUMUON values ('PM0010', 'TT03', 'MT0005', '01/25/2018','02/24/2018',0)
insert into PHIEUMUON values ('PM0011', 'TT03', 'MT0011', '01/27/2018','02/26/2018',0)
insert into PHIEUMUON values ('PM0012', 'TT01', 'MT0003', '01/28/2018','02/27/2018',0)
insert into PHIEUMUON values ('PM0013', 'TT03', 'MT0001', '01/28/2018','02/27/2018',0)
insert into PHIEUMUON values ('PM0014', 'TT03', 'MT0014', '04/20/2018','05/20/2018',0)
insert into PHIEUMUON values ('PM0015', 'TT02', 'MT0015', '04/25/2018','05/25/2018',0)

go

create table CHITIETMUON
(
	MaPhieuMuon char(6) not null ,
	MaSach char(6) not null ,
	ChuThich ntext ,
	constraint pk_CHITIETMUON primary key( MaPhieuMuon,MaSach),
	constraint fk_CHITIETMUON_SACH foreign key(MaSach) references CUONSACH(MaSach),
)
GO

--Tao trigger Cap nhap so luoc muon khi them 1 chi tiet muon
create trigger Insert_ChiTietMuon on CHITIETMUON
for insert
as
declare @MaPhieuMuon char(6), @MaSach char(6)
select @MaPhieuMuon = MaPhieuMuon, @MaSach = MaSach from inserted
update PHIEUMUON set SoLuong = SoLuong +1 where MaPhieuMuon = @MaPhieuMuon
update CUONSACH set TinhTrang = 'Y' where MaSach = @MaSach


go 

--Tao trigger  cap nhap so luong sach muon khi xoa 1 chi tiet muon
create trigger DeLete_ChiTietMuon on CHITIETMUON
for delete
as
declare @MaPhieuMuon char(6), @MaSach char(6)
select @MaPhieuMuon = MaPhieuMuon from deleted
update PHIEUMUON set SoLuong = SoLuong - 1 where MaPhieuMuon = @MaPhieuMuon
update CUONSACH set TinhTrang = 'N' where MaSach = @MaSach

go


insert into CHITIETMUON values ('PM0001', 'MS0001', null)
insert into CHITIETMUON values ('PM0002', 'MS0002', null)
insert into CHITIETMUON values ('PM0003', 'MS0003', null)
insert into CHITIETMUON values ('PM0004', 'MS0004', null)
insert into CHITIETMUON values ('PM0005', 'MS0005', null)
insert into CHITIETMUON values ('PM0006', 'MS0006', null)
insert into CHITIETMUON values ('PM0007', 'MS0007', null)
insert into CHITIETMUON values ('PM0008', 'MS0008', null)
insert into CHITIETMUON values ('PM0009', 'MS0009', null)
insert into CHITIETMUON values ('PM0010', 'MS0010', null)
insert into CHITIETMUON values ('PM0011', 'MS0011', null)
insert into CHITIETMUON values ('PM0012', 'MS0012', null)
insert into CHITIETMUON values ('PM0013', 'MS0013', null)
insert into CHITIETMUON values ('PM0014', 'MS0014', null)
insert into CHITIETMUON values ('PM0015', 'MS0015', null)



go
create table PHIEUTRA
(
	MaPhieuTra char(6) primary key,
	MaThe char(6) not null,
	MaThuThu char(4) not null,
	NgayTra smalldatetime,
	soluong int ,
	
	constraint fk_PHIEUTRA_THUTHU foreign key(MaThuThu) references THUTHU(MaThuThu),
	constraint fk_PHIEUTRA_THEDOCGIA foreign key(MaThe) references THEDOCGIA(MaThe),
)
GO
insert into PHIEUTRA values ( 'PT0001', 'MT0001', 'TT02', '07/20/2017', 0)
insert into PHIEUTRA values ( 'PT0002', 'MT0002', 'TT01', '07/30/2017', 0)
insert into PHIEUTRA values ( 'PT0003', 'MT0005', 'TT02', '09/05/2017', 0)
insert into PHIEUTRA values ( 'PT0004', 'MT0001', 'TT01', '09/30/2017', 0)
insert into PHIEUTRA values ( 'PT0005', 'MT0007', 'TT02', '12/10/2017', 0)
insert into PHIEUTRA values ( 'PT0006', 'MT0005', 'TT02', '12/14/2017', 0)
insert into PHIEUTRA values ( 'PT0007', 'MT0008', 'TT02', '01/19/2018', 0)
insert into PHIEUTRA values ( 'PT0008', 'MT0010', 'TT01', '02/12/2018', 0)
insert into PHIEUTRA values ( 'PT0009', 'MT0008', 'TT01', '02/02/2018', 0)
insert into PHIEUTRA values ( 'PT0010', 'MT0005', 'TT03', '02/16/2018', 0)
insert into PHIEUTRA values ( 'PT0011', 'MT0011', 'TT03', '02/18/2018', 0)
insert into PHIEUTRA values ( 'PT0012', 'MT0003', 'TT01', '02/28/2018', 0)



go
create table CHITIETTRA
(
	MaPhieuTra char(6) not null ,
	MaPhieuMuon char(6) not null,
	MaSach char(6) not null ,
	SoNgayTraMuon int,
	ChuThich ntext,
	constraint pk_CHITIETTRA primary key (MaPhieuTra,MaSach),
	constraint fk_CHITIETTRA_PHIEUMUON foreign key(MaPhieuMuon) references PHIEUMUON(MaPhieuMuon),
	constraint fk_CHITIETTRA_PHIEUTRA foreign key (MaPhieuTra) references PHIEUTRA(MaPhieuTra),
	constraint fk_CHITIETTRA_CUONSACH foreign key (MaSach) references CUONSACH (MaSach)
)

GO
--tao triger cap nhap so luong sach tra
create trigger Insert_ChiTietTraSach
on CHITIETTRA
for insert
as
declare @MaPhieuTra char(6), @MaSach char(6)
select @MaPhieuTra = MaPhieuTra, @MaSach = MaSach  from inserted 
update PHIEUTRA
set soluong = soluong +1
where MaPhieuTra = @MaPhieuTra
update CUONSACH set TinhTrang = 'N' where MaSach = @MaSach

GO
--Tao trigger cap nhap so luong tra  khi xoa 1 chi tiet tra
create trigger Delete_ChiTietTraSach
on CHITIETTRA
for Delete
as
declare @MaPhieuTra char(6),@MaSach char(6)
select @MaPhieuTra = MaPhieuTra , @MaSach = MaSach from deleted
update PHIEUTRA
set soluong = soluong - 1
where MaPhieuTra = @MaPhieuTra
update CUONSACH set TinhTrang = 'Y' where MaSach = @MaSach


go


insert into CHITIETTRA values ('PT0001',  'PM0001','MS0001', 0 , null)
insert into CHITIETTRA values ('PT0002', 'PM0002','MS0002', 0 , null)
insert into CHITIETTRA values ('PT0003','PM0003', 'MS0003', 0, null)
insert into CHITIETTRA values ('PT0004', 'PM0004','MS0004', 0, null)
insert into CHITIETTRA values ('PT0005','PM0005', 'MS0005', 0, null)
insert into CHITIETTRA values ('PT0006','PM0006',  'MS0006', 0, null)
insert into CHITIETTRA values ('PT0007','PM0007',  'MS0007', 0, null)
insert into CHITIETTRA values ('PT0008','PM0008', 'MS0008', 0, null)
insert into CHITIETTRA values ('PT0009', 'PM0009','MS0009', 0, null)
insert into CHITIETTRA values ('PT0010', 'PM0010','MS0010', 0, null)
insert into CHITIETTRA values ('PT0011', 'PM0011','MS0011', 0, null)


go


create table QUYDINH1
(
	ID int primary key,
	TuoiMin int,
	TuoiMax int,
	HanThe int 
)

go 
Insert into QUYDINH1 values (1,18, 55, 6)
go 

create table QUYDINH2
(
	ID int primary key,
	SoTheLoai int,
	HanTHoiGianNhanSach int 
)

go
Insert into QUYDINH2 values (1,3, 8)
go
create table QUYDINH3
(
	ID int primary key,
	SoSachMuonToiDa int,
	ThoiGianMuonToiDa int
)
go 

Insert into QUYDINH3 values (1,5,4)

go
create table PHIEUTIENPHAT
(
	
	MaPhieuTra char(6) primary key,
	TongNo money ,
	constraint fk_PHIEUTIENPHAT_PHIEUTRA foreign key (MaPhieuTra) references PHIEUTRA (MaPhieuTra)
)

go


	-- tao view TKSachTraTre
CREATE VIEW TKSachTraTre AS 
SELECT        CHITIETTRA.SoNgayTraMuon, DAUSACH.TenDauSach, PHIEUMUON.NgayMuon
FROM            PHIEUMUON INNER JOIN
                         CHITIETMUON ON PHIEUMUON.MaPhieuMuon = CHITIETMUON.MaPhieuMuon INNER JOIN
                         CHITIETTRA ON PHIEUMUON.MaPhieuMuon = CHITIETTRA.MaPhieuMuon INNER JOIN
                         CUONSACH ON CHITIETMUON.MaSach = CUONSACH.MaSach AND CHITIETTRA.MaSach = CUONSACH.MaSach INNER JOIN
                         dbo.DAUSACH ON dbo.CUONSACH.MaDauSach = dbo.DAUSACH.MaDauSach
WHERE        (CHITIETTRA.SoNgayTraMuon <> 0)


go

--create view TkTinhHinhMuonSach

CREATE VIEW TKTinhHinhMuonSach AS
SELECT       DAUSACH.TenTheLoai, PHIEUMUON.NgayMuon
FROM            CHITIETMUON INNER JOIN
                         CUONSACH ON CHITIETMUON.MaSach = CUONSACH.MaSach INNER JOIN
                         DAUSACH ON CUONSACH.MaDauSach = DAUSACH.MaDauSach INNER JOIN
                         PHIEUMUON ON CHITIETMUON.MaPhieuMuon = PHIEUMUON.MaPhieuMuon


MAR
3
Lọc dấu tiếng Việt trong SQL
Hàm chuyển một chuỗi ký tự có dấu (Unicode), chuyển thành chuỗi không dấu 




--CREATE BY webmaster@hmweb.com.vn
CREATE FUNCTION [dbo].[fuChuyenCoDauThanhKhongDau]
(
      @strInput NVARCHAR(4000)
)
RETURNS NVARCHAR(4000)
AS
BEGIN    
    IF @strInput IS NULL RETURN @strInput
    IF @strInput = '' RETURN @strInput
    DECLARE @RT NVARCHAR(4000)
    DECLARE @SIGN_CHARS NCHAR(136)
    DECLARE @UNSIGN_CHARS NCHAR (136)

    SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệế
                  ìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵý
                  ĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍ
                  ÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ'
                  +NCHAR(272)+ NCHAR(208)
    SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeee
                  iiiiiooooooooooooooouuuuuuuuuuyyyyy
                  AADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIII
                  OOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD'

    DECLARE @COUNTER int
    DECLARE @COUNTER1 int
    SET @COUNTER = 1

    WHILE (@COUNTER <=LEN(@strInput))
    BEGIN  
      SET @COUNTER1 = 1
      --Tìm trong chuỗi mẫu
       WHILE (@COUNTER1 <=LEN(@SIGN_CHARS)+1)
       BEGIN
     IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1))
            = UNICODE(SUBSTRING(@strInput,@COUNTER ,1) )
     BEGIN          
          IF @COUNTER=1
              SET @strInput = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1)
              + SUBSTRING(@strInput, @COUNTER+1,LEN(@strInput)-1)                  
          ELSE
              SET @strInput = SUBSTRING(@strInput, 1, @COUNTER-1)
              +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1)
              + SUBSTRING(@strInput, @COUNTER+1,LEN(@strInput)- @COUNTER)
              BREAK
               END
             SET @COUNTER1 = @COUNTER1 +1
       END
      --Tìm tiếp
       SET @COUNTER = @COUNTER +1
    END
    SET @strInput = replace(@strInput,' ','-')
    RETURN @strInput
END

SELECT  count(*)
                                FROM   THEDOCGIA
                                Where MaDocGia = 'DG0001'