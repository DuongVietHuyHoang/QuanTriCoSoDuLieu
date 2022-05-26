CREATE DATABASE BTCK 
go
use BTCK
go

/*
Nhà Cung Cấp
MaNCC
TenNCC
MaThue
DiaChi
DienThoai
*/
Create Table NhaCungCap
(
	MaNCC varchar(10) Not Null Primary Key,
	TenNCC nvarchar(50) Not Null,
	Mathue varchar(10) Not Null,
	DiaChi nvarchar(100),
	DienThoai char(10) Not Null,
)
Insert Into NhaCungCap
Values ('NCC001', N'Công ty vải lụa Thanh Xuân', '0000000001', N'Quảng Nam', '0345678901'),
	   ('NCC002', N'Công ty May Vạn Thọ', '0000000002', N'Đà Nẵng', '0345678123'),
	   ('NCC003', N'Xưởng vải lụa Hoàng Hà', '0000000003', N'Hà Nội', '0345678321'),
	   ('NCC004', N'Xưởng vật liệu may mặc Đông Âu', '0000000004', N'Huế', '0345678551'),
	   ('NCC005', N'Công ty Vật liệu may mặc Xuân Thu', '0000000005', N'Đà Nẵng', '0345678666')

/*
HÓA ĐƠN NHẬP HÀNG
MaDonNH
MaNCC
MaNL 
TenNL
DonVi
SoLuong
DonGia 
VAT
TongTien
*/
Create Table HOADONNHAPHANG
(
	MaDonNH varchar(10) Not Null Primary key,
	MaNCC varchar(10) Not Null,
	MaNL varchar(10) Not Null,
	TenNL nvarchar(50) Not Null,
	DonVi nvarchar(15) Not Null,
	SoLuong numeric(15, 0) Not Null,
	DonGia numeric(15, 0) Not Null,
	VAT int,
	TongTien numeric(15, 0) Not Null,
)
Insert Into HOADONNHAPHANG
Values ('NH001', 'NCC001', 'NL001', N'Vải in hoa',N'Cuộn', 10, 200000, 10, 2200000),
	   ('NH002', 'NCC002', 'NL002', N'Vải caro',N'Cuộn', 20, 150000, 10, 3300000),
	   ('NH003', 'NCC003', 'NL003', N'Vải lụa cao cấp',N'Cuộn', 10, 300000, 10, 3300000),
	   ('NH004', 'NCC004', 'NL004', N'Cúc áo',N'Gói', 50, 20000, 10, 1100000),
	   ('NH005', 'NCC005', 'NL005', N'Chỉ may',N'Cuộn', 200, 3000, 10, 660000)

/*
NHẬP HÀNG
MaDonNH
MaNV
NgayNhap
*/
Create Table NHAPHANG
(
	MaDonNH varchar(10) Not Null Primary key,
	MaNV varchar(10) Not Null,
	TenNV nvarchar(50) Not Null,
	NgayNhap datetime Not Null,
)
Insert Into NHAPHANG
Values ('NH001', 'NV001', N'Nguyễn Thị Thu Thủy', '2021/05/30'),
	   ('NH002', 'NV001', N'Nguyễn Thị Thu Thủy', '2021/06/20'),
	   ('NH003', 'NV002', N'Đinh Văn Bác','2021/03/22'),
	   ('NH004', 'NV002', N'Đinh Văn Bác', '2021/07/07'),
	   ('NH005', 'NV002', N'Đinh Văn Bác', '2021/08/04')

/*
CỬA HÀNG
MaNV
TenNV
DienThoai
DiaChi
SoTK
*/
Create Table CUAHANG
(
	MaNV varchar(10) Not Null Primary Key,
	TenNV nvarchar(50) Not Null,
	DienThoai char(10) Not Null,
	DiaChi nvarchar(100),
	SoTk char(20),
)
Insert Into CUAHANG
Values ('NV001', N'Nguyễn Thị Thu Thủy', '0364006543', N'Đà Nẵng', '0111122334'),
	   ('NV002', N'Đinh Văn Bác', '0364005123', N'Đà Nẵng', '0111155667'),
	   ('NV003', N'Phạm Thị Lài', '0364005333', N'Quảng Nam', '0111155776'),
	   ('NV004', N'Tạ Thu Cúc', '0364887543', N'Huế', '0431155667'),
	   ('NV005', N'Nguyễn Thị Huệ', '0364008765', N'Quảng Nam', '0111144332')

/*
BÁN HÀNG
MaDonBH
MaNV
NgayBan
*/
Create Table BANHANG
(
	MaDonBH varchar(10) Not Null Primary key,
	MaNV varchar(10) Not Null,
	TenNV nvarchar(50) Not Null,
	NgayBan datetime Not Null,
)
Insert Into BANHANG
Values ('BH001', 'NV003', N'Phạm Thị Lài', '2021/08/07'),
	   ('BH002', 'NV003', N'Phạm Thị Lài', '2021/08/23'),
	   ('BH003', 'NV004', N'Tạ Thu Cúc', '2021/09/05'),
	   ('BH004', 'NV004', N'Tạ Thu Cúc', '2021/09/15'),
	   ('BH005', 'NV005', N'Nguyễn Thị Huệ', '2021/10/15')

/*
HÓA ĐƠN BÁN HÀNG
MaDonBH
MaKH
MaHH
TenHH
SoLuong
DonGia 
VAT
TongTien
*/
Create Table HOADONBANHANG
(
	MaDonBH varchar(10) Not Null Primary key,
	MaKH varchar(10) Not Null,
	MaHH varchar(10) Not Null,
	TenHH nvarchar(50) Not Null,
	SoLuong numeric(15, 0) Not Null,
	DonGia numeric(15, 0) Not Null,
	VAT int,
	TongTien numeric(15, 0) Not Null,
)
Insert Into HOADONBANHANG
Values ('BH001', 'KH001', 'HH001', N'Áo - Quần nam', 5, 190000, 10, 1045000),
	   ('BH002', 'KH002', 'HH002', N'Áo - Váy nữ', 10, 200000, 10, 2200000),
	   ('BH003', 'KH003', 'HH003', N'Áo dài', 3, 400000, 10, 1320000),
	   ('BH004', 'KH004', 'HH004', N'Nơ', 20, 15000, 10, 330000),
	   ('BH005', 'KH005', 'HH005', N'Mũ', 15, 45000, 10, 742500)

/*
NGƯỜI MUA HÀNG
MaKH
TenKH
MaThue
DiaChi
DienThoai
SoTK
*/
Create Table NGUOIMUAHANG
(
	MaKH varchar(10) Not Null Primary Key,
	TenKH nvarchar(50) Not Null,
	Mathue varchar(10) Not Null,
	DiaChi nvarchar(100),
	DienThoai char(10) Not Null,
	SoTK  varchar(15) 
)
Insert Into NGUOIMUAHANG
Values ('KH001', N'Nguyễn Thị Diễm', '0000000010', N'Đà Nẵng', '0972444675', '0111236486'),
	   ('KH002', N'Huỳnh Thúy Liễu', '0000000011', N'Huế', '0972444644', '0111236769'),
	   ('KH003', N'Trần Xuân Mai', '0000000012', N'Đà Nẵng', '0972886532', '0111236385'),
	   ('KH004', N'Đỗ Thị Hiếu', '0000000013', N'Quảng Nam', '0972444655', '0111276490'),
	   ('KH005', N'Trần Văn ơn', '0000000014', N'Đà Nẵng', '0972444742', '0111936488')
/*
KHO CỬA HÀNG
MaHH
TenHH
DonVi
SoLuong
DonGia
*/
Create Table KHOCUAHANG
(
	MaHH varchar(10) Not Null Primary key,
	TenHH nvarchar(200) Not Null,
	DonVi nvarchar(15) Not Null,
	SoLuong numeric(15, 0) Not Null,
	DonGia numeric(15, 0) Not Null,
)
Insert Into KHOCUAHANG
Values ('HH001', N'Áo - Quần nam', N'Bộ', 50, 190000),
	   ('HH002', N'Áo - Váy nữ', N'Bộ', 60, 200000),
	   ('HH003', N'Áo dài', N'Bộ', 30, 400000),
	   ('HH004', N'Nơ', N'Cái', 100, 15000),
	   ('HH005', N'Mũ', N'Cái', 70, 45000)

--Thêm ràng buộc
Alter table HOADONNHAPHANG
Add constraint FK_NCC foreign key (MaNCC) references NhaCungCap(MaNCC)
Alter table NHAPHANG
Add constraint FK_NhapHang foreign key (MaDonNH) references HOADONNHAPHANG(MaDonNH)
Alter table BANHANG
Add constraint FK_BANHANG foreign key (MaDonBH) references HOADONBANHANG(MaDonBH)
Alter table HOADONBANHANG
Add constraint FK_KH foreign key (MaKH) references NGUOIMUAHANG(MaKH)
Alter table HOADONBANHANG
Add constraint FK_HH foreign key (MaHH) references KHOCUAHANG(MaHH)
Alter table NHAPHANG
Add constraint FK_NV foreign key (MaNV) references CUAHANG(MaNV)
Alter table BANHANG
Add constraint FK_BNV foreign key (MaNV) references CUAHANG(MaNV)
Alter table NhaCungCap
Add constraint FK_NCC foreign key (MaNCC) references HOADONNHAPHANG (MaNCC)


Select * from NhaCungCap
Select * from HOADONNHAPHANG
Select * from NHAPHANG
Select * from CUAHANG
Select * from BANHANG
Select * from HOADONBANHANG
Select * from NGUOIMUAHANG
Select * from KHOCUAHANG
