create database QLTV
go
use QLTV
go



--1.	ĐỘC GIẢ (MÃ ĐỘC GIẢ, TÊN ĐỘC GIẢ, GIỚI TÍNH, NGÀY SINH, ĐỊA CHỈ, EMAIL)
create table DOCGIA
(
	MaDocGia char(6) PRIMARY KEY,
	TenDocGia varchar(40) not null,
	GioiTinh varchar(4),
	NgaySinh smalldatetime,
	DiaChi varchar(50),
	Email varchar(20) unique
)

--2.	THẺ ĐỘC GIẢ (MÃ THẺ, MÃ ĐỘC GIẢ, LOẠI THẺ, NGÀY LÀM THẺ, HẠN THẺ)

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

--3.	THỦ THƯ (MÃ THỦ THƯ, TÊN THỦ THƯ, GIỚI TÍNH, ĐỊA CHỈ, EMAIL, CHỨC VỤ)
go
create table THUTHU
(
	MaThuThu char(6) primary key,
	TenThuThu varchar(40),
	GioiTinh varchar(4),
	NgaySinh smalldatetime,
	DiaChi varchar(50), 
	Email varchar(20) unique,
	ChucVu varchar(20)
)

--4.	PHIẾU MƯỢN (MÃ PHIẾU MƯỢN, MÃ THỦ THƯ, MÃ THẺ, TÊN ĐỘC GIẢ, NGÀY MƯỢN, NGÀY DỰ KIẾN TRẢ, SỐ LƯỢNG)

go
create table PHIEUMUON
(
	MaPhieuMuon char(6) primary key,
	MaThuThu char(6),
	MaThe char(6),
	--TenDocGia varchar(40),
	NgayMuon smalldatetime,
	NgayDuKienTra smalldatetime,
	SoLuong int
	constraint fk_PHIEUMUON_THUTHU foreign key(MaThuThu) references THUTHU(MaThuThu),
	constraint fk_PHIEUMUON_THEDOCGIA foreign key(MaThe) references THEDOCGIA(MaThe),
	
)
		--tên độc giả lấy từ bảng độc giả thông qua mã thẻ của bảng thẻ độc giả
/*create trigger INSERT_PHIEUMUON_TenDocGia
on PHIEUMUON
for INSERT
as	
	declare @TenDocGia1 varchar(40),@MaThe1 char(6),@MaDocGia1 char(6) -- khai bao bien
	select @MaThe1=MaThe from inserted-- lay gia tri ra can dung select--B1
	select @MaDocGia1=MaDocGia from THEDOCGIA WHERE MaThe=@MaThe1
	select @TenDocGia1=TenDocGia from DOCGIA WHERE MaDocGia=@MaDocGia1
	UPDATE PHIEUMUON
	SET TenDocGia= @TenDocGia1
	WHERE MaThe=@MaThe1
	*/

--10. Thể Loại Sách
go
create table THELOAISACH
(
	TenTheLoai varchar(40) primary key,
)

--5.	ĐẦU SÁCH (MÃ ĐẦU SÁCH,TÊN ĐẦU SÁCH,THỂ LOẠI,  SỐ LƯỢNG, TÁC GIẢ, NĂM SẢN XUẤT, NHÀ SẢN XUẤT,  GIÁ)
go
create table DAUSACH
(
	MaDauSach char(6) primary key,
	TenDauSach varchar(40),
	TacGia varchar(40),
	TenTheLoai varchar(40),
	NamSanXuat int,
	NhaSanXuat varchar(50),
	Gia money,
	SoLuong int,
	constraint fk_SACH_THELOAI foreign key(TenTheLoai) references THELOAISACH(TenTheLoai),
)
--6.	CUỐN SÁCH (MÃ SÁCH, MÃ ĐẦU SÁCH, NGÀY NHẬP, TÌNH TRẠNG, CHÚ THÍCH)
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


-- 7*.	CHI TIẾT MƯỢN (MÃ PHIẾU MƯỢN, MÃ SÁCH, ChuThich)
go
create table CHITIETMUON
(
	MaPhieuMuon char(6) not null unique,
	MaSach char(6) not null unique,
	ChuThich text ,
	constraint pk_CHITIETMUON primary key( MaPhieuMuon,MaSach),
	constraint fk_CHITIETMUON_SACH foreign key(MaSach) references CUONSACH(MaSach),
)
--8.	PHIẾU TRẢ (MÃ PHIẾU TRẢ, MÃ PHIẾU MƯỢN,MÃ ĐỘC GIẢ, TÊN ĐỘC GIẢ, MÃ THỦ THƯ, NGÀY TRẢ, SỐ LƯỢNG)
go
create table PHIEUTRA
(
	MaPhieuTra char(6) primary key,
	MaPhieuMuon char(6) not null,
	MaThe char(6) not null,
	MaThuThu char(6) not null,
	NgayTra smalldatetime,
	soluong int ,
	constraint fk_PHIEUTRA_PHIEUMUON foreign key(MaPhieuMuon) references PHIEUMUON(MaPhieuMuon),
	constraint fk_PHIEUTRA_THUTHU foreign key(MaThuThu) references THUTHU(MaThuThu),
	constraint fk_PHIEUTRA_THEDOCGIA foreign key(MaThe) references THEDOCGIA(MaThe),
)

--9*.	CHI TIẾT TRẢ (MÃ PHIẾU TRẢ, MÃ SÁCH, SỐ NGÀY TRẢ MUỘN, TIỀN PHẠT, CHÚ THÍCH )
go
create table CHITIETTRA
(
	MaPhieuTra char(6) not null ,
	MaSach char(6) not null ,
	SoNgayTraMuon int,
	TienPhat money,
	ChuThich text,
	constraint pk_CHITIETTRA primary key (MaPhieuTra,MaSach),
	constraint fk_CHITIETTRA_PHIEUTRA foreign key (MaPhieuTra) references PHIEUTRA(MaPhieuTra),
	constraint fk_CHITIETTRA_CUONSACH foreign key (MaSach) references CUONSACH (MaSach)
)

-- số ngày trả muộn
go
create trigger INSERT_CHITIETTRA_SoNgayTraMuon
on CHITIETTRA
for INSERT
as	
	declare @MaSach char(6), @SoNgayTraMuon int,@MaPhieuTra char(6),@NgayTra smalldatetime, @MaPhieuMuon char(6),@NgayMuon smalldatetime -- khai bao bien
	select @MaPhieuTra=MaPhieuTra,@MaSach =MaSach from inserted-- lay gia tri ra can dung select--B1
	select @NgayTra=NgayTra from PHIEUTRA WHERE MaPhieuTra=@MaPhieuTra
	select @MaPhieuMuon=MaPhieuMuon from PHIEUTRA WHERE MaPhieuTra=@MaPhieuTra
	select @NgayMuon=NgayMuon from PHIEUMUON WHERE MaPhieuMuon=@MaPhieuMuon


	UPDATE CHITIETTRA
	SET SoNgayTraMuon= DATEDIFF (day, @NgayMuon, @NgayTra)
	WHERE MaPhieuTra=@MaPhieuTra and MaSach =@MaSach

-- tiền phạt

--11.	BÁO CÁO SÁCH TRẢ TRỄ (MÃ BÁO CÁO, NGÀY BÁO CÁO,THÁNG, NĂM)
go
create table BANBAOCAOSACHTRATRE
(
	MaBaoCao char(6) primary key,
	NgayBaoCao smalldatetime,
	Thang int check (Thang>0 and Thang <13),
	Nam int check (Nam <=year(getdate()))
)
--12*.	-CHI TIẾT BÁO CÁO SÁCH TRẢ TRỄ (MÃ BÁO CÁO, MÃ SÁCH, NGÀY MƯỢN, TÊN SÁCH, SỐ NGÀY TRẢ TRỄ)
go
create table CHITIETBAOCAOSACHTRATRE
(
	MaBaoCao char(6) not null,
	MaSach char(6) not null ,
	NgayMuon smalldatetime not null,
	TenSach varchar (40),
	SoNgayTratre int,
	constraint pk_CHITIETBAOCAOSACHTRATRE primary key (MaBaoCao,MaSach, NgayMuon),
	constraint fk_CHITIETBAOCAOSACHTRATRE_BANBAOCAOSACHTRATRE foreign key (MaBaoCao) references BANBAOCAOSACHTRATRE(MaBaoCao),
	constraint fk_CHITIETBAOCAOSACHTRATRE_CUONSACH foreign key (MaSach) references CUONSACH (MaSach)
)


-- ngày mượn
go
create trigger INSERT_CHITIETBAOCAOSACHTRATRE_NgayMuon
on CHITIETBAOCAOSACHTRATRE
for INSERT
as	
	declare @MaPhieuMuon char(6), @NgayMuon smalldatetime,@MaSach char(6)-- khai bao bien
	select @MaSach=MaSach from inserted-- lay gia tri ra can dung select--B1
	select @MaPhieuMuon=MaPhieuMuon  from CHITIETMUON  WHERE MaSach=@MaSach
	select @NgayMuon=NgayMuon from PHIEUMUON WHERE MaPhieuMuon=@MaPhieuMuon
	UPDATE CHITIETBAOCAOSACHTRATRE
	SET NgayMuon= @NgayMuon
	WHERE MaSach =@MaSach
--tên sách
go
create trigger INSERT_CHITIETBAOCAOSACHTRATRE_TenSach
on CHITIETBAOCAOSACHTRATRE
for INSERT
as	
	declare @MaDauSach char(6), @TenSach varchar (40),@MaSach char(6)-- khai bao bien
	select @MaSach=MaSach from inserted-- lay gia tri ra can dung select--B1
	select @MaDauSach=MaDauSach   from CUONSACH  WHERE MaSach=@MaSach
	select @TenSach =TenDauSach from DAUSACH WHERE MaDauSach=@MaDauSach
	UPDATE CHITIETBAOCAOSACHTRATRE
	SET TenSach= @TenSach
	WHERE MaSach =@MaSach

	-- số ngày trả trễ
go
create trigger INSERT_CHITIETBAOCAOSACHTRATRE_SoNgayTraTre
on CHITIETBAOCAOSACHTRATRE
for INSERT
as	
	declare @MaSach char(6), @SoNgayTraTre int-- khai bao bien
	select @MaSach=MaSach from inserted-- lay gia tri ra can dung select--B1
	select @SoNgayTraTre=SoNgayTraMuon   from CHITIETTRA  WHERE MaSach=@MaSach
	UPDATE CHITIETBAOCAOSACHTRATRE
	SET SoNgayTraTre= @SoNgaytraTre
	WHERE MaSach =@MaSach



	--13.	BẢN BÁO CÁO TỈ LỆ MƯỢN SÁCH THEO THỂ LOẠI (MÃ BÁO CÁO, MÃ THỦ THƯ, NGÀY BÁO CÁO, TỔNG LƯỢT MƯỢN, THÁNG, NĂM)
	go
	create table BANBAOCAOTILEMUONSACHTHEOTHELOAI
	(
		MaBaoCao char(6) primary key,
		NgayBaoCao smalldatetime,
		TongLuotMuon int,
		Thang int check (Thang>0 and Thang<13),
		Nam int check (Nam<= year(getdate())),
		--MaThuThu char(6) not null,
		
		
		----------------------------
		--constraint fk_BANBAOCAOTILEMUONSACHTHEOTHELOAI_THUTHU foreign key (MaThuThu) references THUTHU (MaThuThu)

	)

--14.	CHI TIẾT BÁO CÁO TỈ LỆ MƯỢN SÁCH THEO THỂ LOẠI (MÃ BÁO CÁO, NGÀY BÁO CÁO, THÁNG, NĂM, SỐ LƯỢT MƯỢN, TỈ LỆ MƯỢN)
go
create table CHITIETBAOCAOTILEMUONSACHTHEOTHELOAI
(
	MaBaoCao char(6) not null,
	TenTheLoai varchar(40) not null,
	TiLeMuon float
	constraint pk_CHITIETBAOCAOTILEMUONSACHTHEOTHELOAI PRIMARY KEY (MaBaoCao,TenTheLoai),
	constraint fk_CHITIETBAOCAOTILEMUONSACHTHEOTHELOAI_BANBAOCAOTILEMUONSACHTHEOTHELOAI foreign key (MaBaoCao) references BANBAOCAOTILEMUONSACHTHEOTHELOAI (MaBaoCao),
	constraint fk_CHITIETBAOCAOTILEMUONSACHTHEOTHELOAI_THELOAI foreign key (TenTheLoai) references THELOAISACH (TenTheLoai)
)