--CREATE DATABASE BTLMonLTTQ
--USE BTLMonLTTQ
--GO
/****** Object:  Table [dbo].[BaoHiem]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHiem](
	[MaBaoHiem] [int] NOT NULL,
	[NgayDong] [date] NULL,
	[NgayHetHan] [date] NULL,
	[MucDong] [decimal](18, 2) NULL,
	[MaNhanVien] [int] NULL,
	[TenBaoHiem] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaoHiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[MaChamCong] [int] NOT NULL,
	[NgayChamCong] [date] NULL,
	[GioVao] [time](7) NULL,
	[GioRa] [time](7) NULL,
	[MaNhanVien] [int] NULL,
	[KetQuaChamCong] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChamCong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDuAn]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDuAn](
	[MaNhanVien] [int] NOT NULL,
	[MaDuAn] [int] NOT NULL,
	[ThoiHanDuAn] [date] NULL,
	[DanhGia] [nvarchar](100) NULL,
	[VaiTro] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[MaDuAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKhoaDaoTao]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhoaDaoTao](
	[MaNhanVien] [int] NOT NULL,
	[MaDaoTao] [int] NOT NULL,
	[ThoiGianDuKien] [int] NULL,
	[DanhGiaKhoa] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[MaDaoTao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKT_KL]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKT_KL](
	[MaNhanVien] [int] NOT NULL,
	[MaSuKien] [int] NOT NULL,
	[ChiTiet] [nvarchar](255) NULL,
	[TienThuongPhat] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[MaSuKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [int] NOT NULL,
	[TenChucVu] [nvarchar](100) NULL,
	[LuongChucVu] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaoTao]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaoTao](
	[MaDaoTao] [int] NOT NULL,
	[TenKhoa] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](255) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[ChiPhi] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDaoTao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DuAn]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuAn](
	[MaDuAn] [int] NOT NULL,
	[TenDuAn] [nvarchar](100) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[NganSach] [decimal](18, 2) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDuAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDongLaoDong]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDongLaoDong](
	[MaHopDong] [int] NOT NULL,
	[LoaiHopDong] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[LuongHopDong] [decimal](18, 2) NULL,
	[MaNhanVien] [int] NULL,
	[NoiDungHopDong] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KT_KL]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KT_KL](
	[MaSuKien] [int] NOT NULL,
	[LoaiSuKien] [nvarchar](50) NULL,
	[NgayDienRa] [date] NULL,
	[LyDo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSuKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuHoatDong]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuHoatDong](
	[MaHoatDong] [int] IDENTITY(1,1) NOT NULL,
	[LoaiHoatDong] [nvarchar](100) NULL,
	[ThoiGian] [datetime] NULL,
	[TenDangNhap] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoatDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [int] NULL,
	[Email] [varchar](100) NULL,
	[NgayBatDauLamViec] [date] NULL,
	[MaPhongBan] [int] NULL,
	[MaChucVu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuLuong]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuLuong](
	[MaPhieuLuong] [int] NOT NULL,
	[NgayTinhLuong] [date] NULL,
	[LuongCoBan] [decimal](18, 2) NULL,
	[LuongNhanDuoc] [decimal](18, 2) NULL,
	[TrangThaiTraLuong] [nvarchar](50) NULL,
	[MaNhanVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPhongBan] [int] NOT NULL,
	[TenPhongBan] [nvarchar](100) NULL,
	[SoLuongNhanVien] [int] NULL,
	[TruongPhong] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoYeuLyLich]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoYeuLyLich](
	[MaNhanVien] [int] NOT NULL,
	[TrinhDoHocVan] [nvarchar](255) NULL,
	[KinhNghiem] [nvarchar](255) NULL,
	[KyNang] [nvarchar](255) NULL,
	[ChungChi] [nvarchar](255) NULL,
	[NgoaiNgu] [nvarchar](100) NULL,
	[NgayTao] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[QueQuan] [nvarchar](255) NULL,
	[GiaCanh] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](255) NULL,
	[VaiTro] [nvarchar](50) NULL,
	[TrangThaiTaiKhoan] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 10/23/2024 12:39:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaGiaoDich] [nvarchar](100) NOT NULL,
	[NgayGiaoDich] [date] NULL,
	[GiaTri] [decimal](18, 2) NULL,
	[NoiDung] [nvarchar](255) NULL,
	[MaNhanVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiaoDich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (1, CAST(N'2020-01-01' AS Date), CAST(N'2025-01-01' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 1, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (2, CAST(N'2020-01-01' AS Date), CAST(N'2025-01-01' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 1, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (3, CAST(N'2020-01-01' AS Date), CAST(N'2025-01-01' AS Date), CAST(1000000.00 AS Decimal(18, 2)), 1, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (4, CAST(N'2021-06-15' AS Date), CAST(N'2024-06-15' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 2, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (5, CAST(N'2021-06-15' AS Date), CAST(N'2024-06-15' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 2, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (6, CAST(N'2023-02-01' AS Date), CAST(N'2025-02-01' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 3, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (7, CAST(N'2023-02-01' AS Date), CAST(N'2025-02-01' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 3, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (8, CAST(N'2019-08-20' AS Date), CAST(N'2024-08-20' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 4, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (9, CAST(N'2019-08-20' AS Date), CAST(N'2024-08-20' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 4, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (10, CAST(N'2022-11-01' AS Date), CAST(N'2025-11-01' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 5, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (11, CAST(N'2022-11-01' AS Date), CAST(N'2025-11-01' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 5, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (12, CAST(N'2020-03-15' AS Date), CAST(N'2023-03-15' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 6, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (13, CAST(N'2020-03-15' AS Date), CAST(N'2023-03-15' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 6, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (14, CAST(N'2021-05-10' AS Date), CAST(N'2025-05-10' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 8, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (15, CAST(N'2021-05-10' AS Date), CAST(N'2025-05-10' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 8, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (16, CAST(N'2023-07-05' AS Date), CAST(N'2025-07-05' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 9, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (17, CAST(N'2023-07-05' AS Date), CAST(N'2025-07-05' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 9, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (18, CAST(N'2021-09-20' AS Date), CAST(N'2024-09-20' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 10, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (19, CAST(N'2021-09-20' AS Date), CAST(N'2024-09-20' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 10, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (20, CAST(N'2022-01-10' AS Date), CAST(N'2025-01-10' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 11, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (21, CAST(N'2022-01-10' AS Date), CAST(N'2025-01-10' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 11, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (22, CAST(N'2023-02-15' AS Date), CAST(N'2025-02-15' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 12, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (23, CAST(N'2023-02-15' AS Date), CAST(N'2025-02-15' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 12, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (24, CAST(N'2021-03-30' AS Date), CAST(N'2024-03-30' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 13, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (25, CAST(N'2021-03-30' AS Date), CAST(N'2024-03-30' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 13, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (26, CAST(N'2022-05-20' AS Date), CAST(N'2025-05-20' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 14, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (27, CAST(N'2022-05-20' AS Date), CAST(N'2025-05-20' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 14, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (28, CAST(N'2023-06-01' AS Date), CAST(N'2025-06-01' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 15, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (29, CAST(N'2023-06-01' AS Date), CAST(N'2025-06-01' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 15, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (30, CAST(N'2022-02-10' AS Date), CAST(N'2025-02-10' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 17, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (31, CAST(N'2022-02-10' AS Date), CAST(N'2025-02-10' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 17, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (32, CAST(N'2023-04-15' AS Date), CAST(N'2025-04-15' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 18, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (33, CAST(N'2023-04-15' AS Date), CAST(N'2025-04-15' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 18, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (34, CAST(N'2021-03-10' AS Date), CAST(N'2024-03-10' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 19, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (35, CAST(N'2021-03-10' AS Date), CAST(N'2024-03-10' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 19, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (36, CAST(N'2022-09-20' AS Date), CAST(N'2024-09-20' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 20, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (37, CAST(N'2022-09-20' AS Date), CAST(N'2024-09-20' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 20, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (38, CAST(N'2022-11-01' AS Date), CAST(N'2025-11-01' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 22, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (39, CAST(N'2022-11-01' AS Date), CAST(N'2025-11-01' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 22, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (40, CAST(N'2021-07-15' AS Date), CAST(N'2024-07-15' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 23, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (41, CAST(N'2021-07-15' AS Date), CAST(N'2024-07-15' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 23, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (42, CAST(N'2022-01-15' AS Date), CAST(N'2024-01-15' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 24, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (43, CAST(N'2022-01-15' AS Date), CAST(N'2024-01-15' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 24, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (44, CAST(N'2021-06-10' AS Date), CAST(N'2024-06-10' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 25, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (45, CAST(N'2021-06-10' AS Date), CAST(N'2024-06-10' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 25, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (46, CAST(N'2023-09-01' AS Date), CAST(N'2025-09-01' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 26, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (47, CAST(N'2023-09-01' AS Date), CAST(N'2025-09-01' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 26, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (48, CAST(N'2022-05-15' AS Date), CAST(N'2025-05-15' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 28, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (49, CAST(N'2022-05-15' AS Date), CAST(N'2025-05-15' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 28, N'Bảo hiểm nhân thọ')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (50, CAST(N'2022-07-05' AS Date), CAST(N'2025-07-05' AS Date), CAST(2000000.00 AS Decimal(18, 2)), 50, N'Bảo hiểm lao động')
GO
INSERT [dbo].[BaoHiem] ([MaBaoHiem], [NgayDong], [NgayHetHan], [MucDong], [MaNhanVien], [TenBaoHiem]) VALUES (51, CAST(N'2022-07-05' AS Date), CAST(N'2025-07-05' AS Date), CAST(1500000.00 AS Decimal(18, 2)), 50, N'Bảo hiểm sức khỏe')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (1, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 1, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (2, CAST(N'2023-10-01' AS Date), CAST(N'08:15:00' AS Time), CAST(N'17:05:00' AS Time), 2, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (3, CAST(N'2023-10-01' AS Date), CAST(N'08:05:00' AS Time), CAST(N'17:00:00' AS Time), 3, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (4, CAST(N'2023-10-01' AS Date), CAST(N'08:30:00' AS Time), CAST(N'17:30:00' AS Time), 4, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (5, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 5, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (6, CAST(N'2023-10-01' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:30:00' AS Time), 6, N'Trách nhiệm')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (7, CAST(N'2023-10-01' AS Date), CAST(N'08:10:00' AS Time), CAST(N'16:50:00' AS Time), 7, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (8, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 8, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (9, CAST(N'2023-10-01' AS Date), CAST(N'08:20:00' AS Time), CAST(N'17:15:00' AS Time), 9, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (10, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 10, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (11, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 11, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (12, CAST(N'2023-10-01' AS Date), CAST(N'08:05:00' AS Time), CAST(N'17:05:00' AS Time), 12, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (13, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 13, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (14, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 14, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (15, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 15, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (16, CAST(N'2023-10-01' AS Date), CAST(N'08:10:00' AS Time), CAST(N'17:05:00' AS Time), 16, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (17, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 17, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (18, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 18, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (19, CAST(N'2023-10-01' AS Date), CAST(N'08:30:00' AS Time), CAST(N'17:30:00' AS Time), 19, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (20, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 20, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (21, CAST(N'2023-10-01' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 21, N'Đi muộn')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (22, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 22, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (23, CAST(N'2023-10-01' AS Date), CAST(N'08:05:00' AS Time), CAST(N'17:00:00' AS Time), 23, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (24, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 24, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (25, CAST(N'2023-10-01' AS Date), CAST(N'08:15:00' AS Time), CAST(N'17:00:00' AS Time), 25, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (26, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 26, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (27, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 27, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (28, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 28, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (29, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 29, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (30, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 30, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (31, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 31, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (32, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 32, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (33, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 33, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (34, CAST(N'2023-10-01' AS Date), CAST(N'08:05:00' AS Time), CAST(N'17:05:00' AS Time), 34, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (35, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 35, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (36, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 36, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (37, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 37, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (38, CAST(N'2023-10-01' AS Date), CAST(N'08:10:00' AS Time), CAST(N'17:05:00' AS Time), 38, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (39, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 39, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (40, CAST(N'2023-10-01' AS Date), CAST(N'08:15:00' AS Time), CAST(N'17:00:00' AS Time), 40, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (41, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 41, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (42, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 42, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (43, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 43, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (44, CAST(N'2023-10-01' AS Date), CAST(N'08:05:00' AS Time), CAST(N'17:05:00' AS Time), 44, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (45, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 45, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (46, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 46, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (47, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 47, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (48, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 48, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (49, CAST(N'2023-10-01' AS Date), CAST(N'08:15:00' AS Time), CAST(N'17:00:00' AS Time), 49, N'Đúng giờ')
GO
INSERT [dbo].[ChamCong] ([MaChamCong], [NgayChamCong], [GioVao], [GioRa], [MaNhanVien], [KetQuaChamCong]) VALUES (50, CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 50, N'Đúng giờ')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (1, 1, CAST(N'2023-01-01' AS Date), N'Hoàn thành xuất sắc', N'Trưởng phòng')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (2, 1, CAST(N'2023-01-01' AS Date), N'Hoàn thành tốt', N'Nhân viên dự án')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (3, 2, CAST(N'2023-02-15' AS Date), N'Đang thực hiện', N'Trưởng phòng')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (4, 2, CAST(N'2023-02-15' AS Date), N'Đang thực hiện', N'Nhân viên dự án')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (5, 3, CAST(N'2023-03-01' AS Date), N'Hoàn thành xuất sắc', N'Nhân viên thiết kế')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (6, 3, CAST(N'2023-03-01' AS Date), N'Hoàn thành tốt', N'Nhân viên phát triển')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (7, 4, CAST(N'2023-04-01' AS Date), N'Đang thực hiện', N'Quản lý dự án')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (8, 4, CAST(N'2023-04-01' AS Date), N'Đang thực hiện', N'Nhân viên IT')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (9, 5, CAST(N'2023-05-01' AS Date), N'Đang thực hiện', N'Nhân viên marketing')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (10, 5, CAST(N'2023-05-01' AS Date), N'Đang thực hiện', N'Nhân viên bán hàng')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (11, 6, CAST(N'2023-06-01' AS Date), N'Hoàn thành xuất sắc', N'Trưởng nhóm phát triển')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (12, 6, CAST(N'2023-06-01' AS Date), N'Hoàn thành tốt', N'Nhân viên kiểm thử')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (13, 7, CAST(N'2023-07-01' AS Date), N'Đang thực hiện', N'Trưởng phòng')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (14, 7, CAST(N'2023-07-01' AS Date), N'Đang thực hiện', N'Nhân viên triển khai')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (15, 8, CAST(N'2023-08-01' AS Date), N'Đang thực hiện', N'Trưởng nhóm')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (16, 8, CAST(N'2023-08-01' AS Date), N'Đang thực hiện', N'Nhân viên hỗ trợ')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (17, 9, CAST(N'2023-09-01' AS Date), N'Hoàn thành xuất sắc', N'Nhân viên phát triển')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (18, 9, CAST(N'2023-09-01' AS Date), N'Hoàn thành tốt', N'Nhân viên thiết kế')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (19, 10, CAST(N'2023-10-01' AS Date), N'Đang thực hiện', N'Quản lý dự án')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (20, 10, CAST(N'2023-10-01' AS Date), N'Đang thực hiện', N'Nhân viên hỗ trợ')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (21, 1, CAST(N'2023-01-01' AS Date), N'Hoàn thành tốt', N'Nhân viên marketing')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (22, 2, CAST(N'2023-02-15' AS Date), N'Đang thực hiện', N'Nhân viên tài chính')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (23, 3, CAST(N'2023-03-01' AS Date), N'Hoàn thành tốt', N'Nhân viên phát triển')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (24, 4, CAST(N'2023-04-01' AS Date), N'Đang thực hiện', N'Nhân viên thiết kế')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (25, 5, CAST(N'2023-05-01' AS Date), N'Đang thực hiện', N'Nhân viên triển khai')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (26, 6, CAST(N'2023-06-01' AS Date), N'Hoàn thành xuất sắc', N'Nhân viên kiểm thử')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (27, 7, CAST(N'2023-07-01' AS Date), N'Hoàn thành tốt', N'Nhân viên hỗ trợ')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (28, 8, CAST(N'2023-08-01' AS Date), N'Đang thực hiện', N'Nhân viên phát triển')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (29, 9, CAST(N'2023-09-01' AS Date), N'Hoàn thành tốt', N'Nhân viên thiết kế')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (30, 10, CAST(N'2023-10-01' AS Date), N'Hoàn thành xuất sắc', N'Nhân viên tài chính')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (31, 1, CAST(N'2023-01-01' AS Date), N'Hoàn thành tốt', N'Nhân viên marketing')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (32, 2, CAST(N'2023-02-15' AS Date), N'Hoàn thành xuất sắc', N'Nhân viên phát triển')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (33, 3, CAST(N'2023-03-01' AS Date), N'Đang thực hiện', N'Nhân viên thiết kế')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (34, 4, CAST(N'2023-04-01' AS Date), N'Đang thực hiện', N'Nhân viên hỗ trợ')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (35, 5, CAST(N'2023-05-01' AS Date), N'Hoàn thành xuất sắc', N'Nhân viên tài chính')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (36, 6, CAST(N'2023-06-01' AS Date), N'Hoàn thành tốt', N'Nhân viên triển khai')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (37, 7, CAST(N'2023-07-01' AS Date), N'Hoàn thành tốt', N'Nhân viên marketing')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (38, 8, CAST(N'2023-08-01' AS Date), N'Đang thực hiện', N'Nhân viên phát triển')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (39, 9, CAST(N'2023-09-01' AS Date), N'Đang thực hiện', N'Nhân viên kiểm thử')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (40, 10, CAST(N'2023-10-01' AS Date), N'Hoàn thành xuất sắc', N'Nhân viên thiết kế')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (41, 1, CAST(N'2023-01-01' AS Date), N'Hoàn thành tốt', N'Nhân viên hỗ trợ')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (42, 2, CAST(N'2023-02-15' AS Date), N'Đang thực hiện', N'Nhân viên tài chính')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (43, 3, CAST(N'2023-03-01' AS Date), N'Hoàn thành tốt', N'Nhân viên phát triển')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (44, 4, CAST(N'2023-04-01' AS Date), N'Đang thực hiện', N'Nhân viên hỗ trợ')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (45, 5, CAST(N'2023-05-01' AS Date), N'Hoàn thành xuất sắc', N'Nhân viên marketing')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (46, 6, CAST(N'2023-06-01' AS Date), N'Đang thực hiện', N'Nhân viên phát triển')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (47, 7, CAST(N'2023-07-01' AS Date), N'Hoàn thành tốt', N'Nhân viên hỗ trợ')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (48, 8, CAST(N'2023-08-01' AS Date), N'Đang thực hiện', N'Nhân viên tài chính')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (49, 9, CAST(N'2023-09-01' AS Date), N'Hoàn thành tốt', N'Nhân viên kiểm thử')
GO
INSERT [dbo].[ChiTietDuAn] ([MaNhanVien], [MaDuAn], [ThoiHanDuAn], [DanhGia], [VaiTro]) VALUES (50, 10, CAST(N'2023-10-01' AS Date), N'Hoàn thành xuất sắc', N'Nhân viên hỗ trợ')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (1, 1, 5, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (2, 2, 7, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (3, 3, 10, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (4, 4, 6, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (5, 5, 8, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (6, 6, 9, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (7, 7, 10, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (8, 8, 5, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (9, 9, 6, N'Yếu')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (10, 10, 8, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (11, 1, 5, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (12, 2, 7, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (13, 3, 10, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (14, 4, 6, N'Yếu')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (15, 5, 8, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (16, 6, 9, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (17, 7, 10, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (18, 8, 5, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (19, 9, 6, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (20, 10, 8, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (21, 1, 5, N'Yếu')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (22, 2, 7, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (23, 3, 10, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (24, 4, 6, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (25, 5, 8, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (26, 6, 9, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (27, 7, 10, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (28, 8, 5, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (29, 9, 6, N'Yếu')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (30, 10, 8, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (31, 1, 5, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (32, 2, 7, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (33, 3, 10, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (34, 4, 6, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (35, 5, 8, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (36, 6, 9, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (37, 7, 10, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (38, 8, 5, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (39, 9, 6, N'Yếu')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (40, 10, 8, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (41, 1, 5, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (42, 2, 7, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (43, 3, 10, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (44, 4, 6, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (45, 5, 8, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (46, 6, 9, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (47, 7, 10, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (48, 8, 5, N'Trung bình')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (49, 9, 6, N'Khá')
GO
INSERT [dbo].[ChiTietKhoaDaoTao] ([MaNhanVien], [MaDaoTao], [ThoiGianDuKien], [DanhGiaKhoa]) VALUES (50, 10, 8, N'Xuất sắc')
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (1, 1, N'Khen thu?ng vì hoàn thành t?t d? án du?c giao', CAST(5000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (1, 2, N'K? lu?t do di làm mu?n', CAST(-200000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (1, 9, N'Khen thu?ng vì d?t thành tích t?t trong khóa dào t?o', CAST(1000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (1, 14, N'Khen thu?ng nhân viên tiêu bi?u tháng 10', CAST(1500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (2, 1, N'Khen thu?ng vì hoàn thành t?t d? án du?c giao', CAST(5000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (2, 5, N'K? lu?t do không tuân th? an toàn lao d?ng', CAST(-500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (2, 11, N'Khen thu?ng vì hoàn thành nhi?m v? d?t xu?t', CAST(3000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (2, 14, N'Khen thu?ng nhân viên tiêu bi?u tháng 10', CAST(1500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (3, 4, N'Khen thu?ng vì sáng ki?n c?i ti?n quy trình', CAST(7000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (3, 8, N'K? lu?t do ngh? phép không báo tru?c', CAST(-300000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (3, 12, N'Khen thu?ng vì c?i ti?n ch?t lu?ng d?ch v?', CAST(4000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (3, 14, N'Khen thu?ng nhân viên tiêu bi?u tháng 10', CAST(1500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (4, 6, N'Khen thu?ng vì dóng góp tích c?c trong ho?t d?ng tình nguy?n', CAST(2000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (4, 13, N'K? lu?t do s? d?ng tài nguyên không h?p lý', CAST(-1000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (4, 15, N'K? lu?t do không hoàn thành nhi?m v?', CAST(-500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (5, 3, N'Khen thu?ng vì d?t doanh s? bán hàng vu?t ch? tiêu', CAST(8000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (5, 7, N'Khen thu?ng nhân viên tiêu bi?u tháng 6', CAST(1500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietKT_KL] ([MaNhanVien], [MaSuKien], [ChiTiet], [TienThuongPhat]) VALUES (5, 14, N'Khen thu?ng nhân viên tiêu bi?u tháng 10', CAST(1500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (101, N'Trưởng phòng nhân sự', CAST(15000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (102, N'Chuyên viên nhân sự', CAST(10000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (103, N'Nhân viên tuyển dụng', CAST(8000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (201, N'Trưởng phòng tài chính', CAST(15000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (202, N'Kế toán trưởng', CAST(12000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (203, N'Nhân viên kế toán', CAST(9000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (301, N'Trưởng phòng marketing', CAST(15000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (302, N'Chuyên viên marketing', CAST(11000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (303, N'Nhân viên truyền thông', CAST(8000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (401, N'Trưởng phòng vận hành', CAST(15000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (402, N'Chuyên viên vận hành', CAST(10000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (403, N'Nhân viên logistics', CAST(8000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (501, N'Trưởng phòng CNTT', CAST(18000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (502, N'Kỹ sư phần mềm', CAST(13000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (503, N'Quản trị mạng', CAST(12000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (601, N'Trưởng phòng NC&PT', CAST(15000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (602, N'Chuyên viên nghiên cứu', CAST(11000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (603, N'Kỹ sư phát triển sản phẩm', CAST(12000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (701, N'Trưởng phòng chăm sóc khách hàng', CAST(14000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (702, N'Nhân viên chăm sóc khách hàng', CAST(8000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [LuongChucVu]) VALUES (703, N'Nhân viên hỗ trợ kỹ thuật', CAST(9000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DaoTao] ([MaDaoTao], [TenKhoa], [NoiDung], [NgayBatDau], [NgayKetThuc], [ChiPhi]) VALUES (1, N'Khóa Đào Tạo Kỹ Năng Giao Tiếp', N'Học cách giao tiếp hiệu quả trong công việc', CAST(N'2023-01-10' AS Date), CAST(N'2023-01-20' AS Date), CAST(1500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DaoTao] ([MaDaoTao], [TenKhoa], [NoiDung], [NgayBatDau], [NgayKetThuc], [ChiPhi]) VALUES (2, N'Khóa Đào Tạo Quản Lý Dự Án', N'Quản lý dự án và phát triển kỹ năng lãnh đạo', CAST(N'2023-02-01' AS Date), CAST(N'2023-02-10' AS Date), CAST(2000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DaoTao] ([MaDaoTao], [TenKhoa], [NoiDung], [NgayBatDau], [NgayKetThuc], [ChiPhi]) VALUES (3, N'Khóa Đào Tạo Kỹ Năng Lãnh Đạo', N'Trở thành nhà lãnh đạo hiệu quả', CAST(N'2023-03-05' AS Date), CAST(N'2023-03-15' AS Date), CAST(1800000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DaoTao] ([MaDaoTao], [TenKhoa], [NoiDung], [NgayBatDau], [NgayKetThuc], [ChiPhi]) VALUES (4, N'Khóa Đào Tạo Chăm Sóc Khách Hàng', N'Nâng cao kỹ năng chăm sóc khách hàng', CAST(N'2023-04-01' AS Date), CAST(N'2023-04-10' AS Date), CAST(1200000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DaoTao] ([MaDaoTao], [TenKhoa], [NoiDung], [NgayBatDau], [NgayKetThuc], [ChiPhi]) VALUES (5, N'Khóa Đào Tạo Marketing Online', N'Chiến lược marketing trên các nền tảng trực tuyến', CAST(N'2023-05-01' AS Date), CAST(N'2023-05-15' AS Date), CAST(2500000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DaoTao] ([MaDaoTao], [TenKhoa], [NoiDung], [NgayBatDau], [NgayKetThuc], [ChiPhi]) VALUES (6, N'Khóa Đào Tạo Kỹ Thuật Phân Tích Dữ Liệu', N'Học cách phân tích và xử lý dữ liệu', CAST(N'2023-06-01' AS Date), CAST(N'2023-06-10' AS Date), CAST(1700000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DaoTao] ([MaDaoTao], [TenKhoa], [NoiDung], [NgayBatDau], [NgayKetThuc], [ChiPhi]) VALUES (7, N'Khóa Đào Tạo An Ninh Thông Tin', N'Triển khai và bảo vệ an ninh thông tin', CAST(N'2023-07-01' AS Date), CAST(N'2023-07-10' AS Date), CAST(2300000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DaoTao] ([MaDaoTao], [TenKhoa], [NoiDung], [NgayBatDau], [NgayKetThuc], [ChiPhi]) VALUES (8, N'Khóa Đào Tạo Kỹ Năng Thuyết Trình', N'Nâng cao kỹ năng thuyết trình', CAST(N'2023-08-01' AS Date), CAST(N'2023-08-10' AS Date), CAST(1400000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DaoTao] ([MaDaoTao], [TenKhoa], [NoiDung], [NgayBatDau], [NgayKetThuc], [ChiPhi]) VALUES (9, N'Khóa Đào Tạo Kỹ Năng Làm Việc Nhóm', N'Học cách làm việc nhóm hiệu quả', CAST(N'2023-09-01' AS Date), CAST(N'2023-09-10' AS Date), CAST(1600000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DaoTao] ([MaDaoTao], [TenKhoa], [NoiDung], [NgayBatDau], [NgayKetThuc], [ChiPhi]) VALUES (10, N'Khóa Đào Tạo Quản Trị Nhân Sự', N'Những kỹ năng cần thiết trong quản trị nhân sự', CAST(N'2023-10-01' AS Date), CAST(N'2023-10-15' AS Date), CAST(1900000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [NgayKetThuc], [NganSach], [TrangThai], [MoTa]) VALUES (1, N'Dự án 1', CAST(N'2023-01-01' AS Date), CAST(N'2023-06-30' AS Date), CAST(50000000.00 AS Decimal(18, 2)), N'Hoàn thành', N'Dự án nhằm nâng cao hệ thống quản lý dữ liệu.')
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [NgayKetThuc], [NganSach], [TrangThai], [MoTa]) VALUES (2, N'Dự án 2', CAST(N'2023-02-15' AS Date), CAST(N'2023-08-15' AS Date), CAST(75000000.00 AS Decimal(18, 2)), N'Đang thực hiện', N'Dự án phát triển phần mềm quản lý bán hàng.')
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [NgayKetThuc], [NganSach], [TrangThai], [MoTa]) VALUES (3, N'Dự án 3', CAST(N'2023-03-01' AS Date), CAST(N'2023-09-01' AS Date), CAST(30000000.00 AS Decimal(18, 2)), N'Hoàn thành', N'Xây dựng website thương mại điện tử.')
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [NgayKetThuc], [NganSach], [TrangThai], [MoTa]) VALUES (4, N'Dự án 4', CAST(N'2023-04-01' AS Date), CAST(N'2024-04-01' AS Date), CAST(90000000.00 AS Decimal(18, 2)), N'Đang thực hiện', N'Dự án nâng cấp hạ tầng CNTT.')
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [NgayKetThuc], [NganSach], [TrangThai], [MoTa]) VALUES (5, N'Dự án 5', CAST(N'2023-05-01' AS Date), CAST(N'2023-10-01' AS Date), CAST(20000000.00 AS Decimal(18, 2)), N'Đang thực hiện', N'Triển khai hệ thống CRM cho công ty.')
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [NgayKetThuc], [NganSach], [TrangThai], [MoTa]) VALUES (6, N'Dự án 6', CAST(N'2023-06-01' AS Date), CAST(N'2023-12-01' AS Date), CAST(60000000.00 AS Decimal(18, 2)), N'Hoàn thành', N'Dự án nghiên cứu thị trường mới.')
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [NgayKetThuc], [NganSach], [TrangThai], [MoTa]) VALUES (7, N'Dự án 7', CAST(N'2023-07-01' AS Date), CAST(N'2024-01-01' AS Date), CAST(40000000.00 AS Decimal(18, 2)), N'Đang thực hiện', N'Dự án mở rộng quy mô kinh doanh.')
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [NgayKetThuc], [NganSach], [TrangThai], [MoTa]) VALUES (8, N'Dự án 8', CAST(N'2023-08-01' AS Date), CAST(N'2024-02-01' AS Date), CAST(50000000.00 AS Decimal(18, 2)), N'Đang thực hiện', N'Triển khai hệ thống bảo mật cho dữ liệu.')
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [NgayKetThuc], [NganSach], [TrangThai], [MoTa]) VALUES (9, N'Dự án 9', CAST(N'2023-09-01' AS Date), CAST(N'2024-03-01' AS Date), CAST(80000000.00 AS Decimal(18, 2)), N'Hoàn thành', N'Dự án xây dựng ứng dụng di động.')
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [NgayKetThuc], [NganSach], [TrangThai], [MoTa]) VALUES (10, N'Dự án 10', CAST(N'2023-10-01' AS Date), CAST(N'2024-04-01' AS Date), CAST(25000000.00 AS Decimal(18, 2)), N'Đang thực hiện', N'Dự án cải tiến quy trình làm việc nội bộ.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (1, N'Thường', CAST(N'2020-01-10' AS Date), CAST(N'2025-01-10' AS Date), CAST(10000000.00 AS Decimal(18, 2)), 1, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (2, N'Thường', CAST(N'2021-06-15' AS Date), CAST(N'2024-06-15' AS Date), CAST(8000000.00 AS Decimal(18, 2)), 2, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (3, N'Thường', CAST(N'2023-02-01' AS Date), CAST(N'2025-02-01' AS Date), CAST(9000000.00 AS Decimal(18, 2)), 3, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (4, N'Thường', CAST(N'2019-08-20' AS Date), CAST(N'2024-08-20' AS Date), CAST(12000000.00 AS Decimal(18, 2)), 4, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (5, N'Thường', CAST(N'2022-11-01' AS Date), CAST(N'2025-11-01' AS Date), CAST(9500000.00 AS Decimal(18, 2)), 5, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (6, N'Thường', CAST(N'2020-03-15' AS Date), CAST(N'2023-03-15' AS Date), CAST(11000000.00 AS Decimal(18, 2)), 6, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (7, N'Thử việc', CAST(N'2023-05-10' AS Date), CAST(N'2023-11-10' AS Date), CAST(7000000.00 AS Decimal(18, 2)), 7, N'Hợp đồng thử việc 6 tháng.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (8, N'Thường', CAST(N'2021-05-10' AS Date), CAST(N'2025-05-10' AS Date), CAST(9000000.00 AS Decimal(18, 2)), 8, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (9, N'Thường', CAST(N'2023-07-05' AS Date), CAST(N'2025-07-05' AS Date), CAST(8500000.00 AS Decimal(18, 2)), 9, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (10, N'Thường', CAST(N'2021-09-20' AS Date), CAST(N'2024-09-20' AS Date), CAST(9500000.00 AS Decimal(18, 2)), 10, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (11, N'Thường', CAST(N'2022-01-10' AS Date), CAST(N'2025-01-10' AS Date), CAST(7500000.00 AS Decimal(18, 2)), 11, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (12, N'Thường', CAST(N'2023-02-15' AS Date), CAST(N'2025-02-15' AS Date), CAST(8200000.00 AS Decimal(18, 2)), 12, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (13, N'Thường', CAST(N'2021-03-30' AS Date), CAST(N'2024-03-30' AS Date), CAST(9000000.00 AS Decimal(18, 2)), 13, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (14, N'Thường', CAST(N'2022-05-20' AS Date), CAST(N'2025-05-20' AS Date), CAST(7400000.00 AS Decimal(18, 2)), 14, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (15, N'Thường', CAST(N'2023-06-01' AS Date), CAST(N'2025-06-01' AS Date), CAST(8000000.00 AS Decimal(18, 2)), 15, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (16, N'Thử việc', CAST(N'2021-08-25' AS Date), CAST(N'2022-02-25' AS Date), CAST(6500000.00 AS Decimal(18, 2)), 16, N'Hợp đồng thử việc 6 tháng.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (17, N'Thường', CAST(N'2022-02-10' AS Date), CAST(N'2025-02-10' AS Date), CAST(7200000.00 AS Decimal(18, 2)), 17, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (18, N'Thường', CAST(N'2023-04-15' AS Date), CAST(N'2025-04-15' AS Date), CAST(7000000.00 AS Decimal(18, 2)), 18, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (19, N'Thường', CAST(N'2021-03-10' AS Date), CAST(N'2024-03-10' AS Date), CAST(7500000.00 AS Decimal(18, 2)), 19, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (20, N'Thường', CAST(N'2022-09-20' AS Date), CAST(N'2024-09-20' AS Date), CAST(8200000.00 AS Decimal(18, 2)), 20, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (21, N'Thử việc', CAST(N'2021-04-30' AS Date), CAST(N'2021-10-30' AS Date), CAST(6000000.00 AS Decimal(18, 2)), 21, N'Hợp đồng thử việc 6 tháng.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (22, N'Thường', CAST(N'2022-11-01' AS Date), CAST(N'2025-11-01' AS Date), CAST(7500000.00 AS Decimal(18, 2)), 22, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (23, N'Thường', CAST(N'2021-07-15' AS Date), CAST(N'2024-07-15' AS Date), CAST(9000000.00 AS Decimal(18, 2)), 23, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (24, N'Thường', CAST(N'2022-01-15' AS Date), CAST(N'2024-01-15' AS Date), CAST(7000000.00 AS Decimal(18, 2)), 24, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (25, N'Thường', CAST(N'2021-06-10' AS Date), CAST(N'2024-06-10' AS Date), CAST(6800000.00 AS Decimal(18, 2)), 25, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (26, N'Thường', CAST(N'2023-09-01' AS Date), CAST(N'2025-09-01' AS Date), CAST(6500000.00 AS Decimal(18, 2)), 26, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (27, N'Thường', CAST(N'2021-06-25' AS Date), CAST(N'2024-06-25' AS Date), CAST(7600000.00 AS Decimal(18, 2)), 27, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (28, N'Thường', CAST(N'2022-05-15' AS Date), CAST(N'2025-05-15' AS Date), CAST(7400000.00 AS Decimal(18, 2)), 28, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (29, N'Thường', CAST(N'2023-06-15' AS Date), CAST(N'2024-06-15' AS Date), CAST(7200000.00 AS Decimal(18, 2)), 29, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (30, N'Thường', CAST(N'2021-07-20' AS Date), CAST(N'2025-07-20' AS Date), CAST(6800000.00 AS Decimal(18, 2)), 30, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (31, N'Thường', CAST(N'2021-09-10' AS Date), CAST(N'2024-09-10' AS Date), CAST(7000000.00 AS Decimal(18, 2)), 31, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (32, N'Thường', CAST(N'2022-03-10' AS Date), CAST(N'2025-03-10' AS Date), CAST(8000000.00 AS Decimal(18, 2)), 32, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (33, N'Thường', CAST(N'2023-06-15' AS Date), CAST(N'2024-06-15' AS Date), CAST(7500000.00 AS Decimal(18, 2)), 33, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (34, N'Thường', CAST(N'2021-07-15' AS Date), CAST(N'2024-07-15' AS Date), CAST(7000000.00 AS Decimal(18, 2)), 34, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (35, N'Thường', CAST(N'2022-06-20' AS Date), CAST(N'2025-06-20' AS Date), CAST(6500000.00 AS Decimal(18, 2)), 35, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (36, N'Thường', CAST(N'2023-02-15' AS Date), CAST(N'2025-02-15' AS Date), CAST(7200000.00 AS Decimal(18, 2)), 36, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (37, N'Thử việc', CAST(N'2021-02-15' AS Date), CAST(N'2021-08-15' AS Date), CAST(6000000.00 AS Decimal(18, 2)), 37, N'Hợp đồng thử việc 6 tháng.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (38, N'Thường', CAST(N'2022-05-25' AS Date), CAST(N'2025-05-25' AS Date), CAST(6800000.00 AS Decimal(18, 2)), 38, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (39, N'Thường', CAST(N'2023-07-25' AS Date), CAST(N'2025-07-25' AS Date), CAST(7000000.00 AS Decimal(18, 2)), 39, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (40, N'Thường', CAST(N'2021-08-20' AS Date), CAST(N'2024-08-20' AS Date), CAST(7800000.00 AS Decimal(18, 2)), 40, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (41, N'Thường', CAST(N'2022-09-15' AS Date), CAST(N'2025-09-15' AS Date), CAST(8500000.00 AS Decimal(18, 2)), 41, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (42, N'Thường', CAST(N'2023-10-10' AS Date), CAST(N'2025-10-10' AS Date), CAST(7000000.00 AS Decimal(18, 2)), 42, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (43, N'Thường', CAST(N'2021-11-30' AS Date), CAST(N'2024-11-30' AS Date), CAST(9000000.00 AS Decimal(18, 2)), 43, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (44, N'Thường', CAST(N'2022-12-01' AS Date), CAST(N'2025-12-01' AS Date), CAST(6500000.00 AS Decimal(18, 2)), 44, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (45, N'Thường', CAST(N'2023-05-25' AS Date), CAST(N'2024-05-25' AS Date), CAST(6000000.00 AS Decimal(18, 2)), 45, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (46, N'Thường', CAST(N'2021-07-20' AS Date), CAST(N'2024-07-20' AS Date), CAST(6600000.00 AS Decimal(18, 2)), 46, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (47, N'Thường', CAST(N'2022-01-15' AS Date), CAST(N'2024-01-15' AS Date), CAST(7000000.00 AS Decimal(18, 2)), 47, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (48, N'Thường', CAST(N'2023-02-28' AS Date), CAST(N'2025-02-28' AS Date), CAST(6400000.00 AS Decimal(18, 2)), 48, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (49, N'Thường', CAST(N'2021-03-15' AS Date), CAST(N'2024-03-15' AS Date), CAST(6800000.00 AS Decimal(18, 2)), 49, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[HopDongLaoDong] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [LuongHopDong], [MaNhanVien], [NoiDungHopDong]) VALUES (50, N'Thường', CAST(N'2022-07-05' AS Date), CAST(N'2025-07-05' AS Date), CAST(6000000.00 AS Decimal(18, 2)), 50, N'Hợp đồng lao động chính thức.')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (1, N'Khen thu?ng', CAST(N'2024-01-15' AS Date), N'Hoàn thành xu?t s?c d? án A')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (2, N'K? lu?t', CAST(N'2024-02-10' AS Date), N'Ði làm mu?n nhi?u l?n')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (3, N'Khen thu?ng', CAST(N'2024-03-05' AS Date), N'Ð?t doanh s? bán hàng vu?t ch? tiêu quý I')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (4, N'Khen thu?ng', CAST(N'2024-04-20' AS Date), N'Sáng ki?n c?i ti?n quy trình s?n xu?t')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (5, N'K? lu?t', CAST(N'2024-05-11' AS Date), N'Không tuân th? quy d?nh an toàn lao d?ng')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (6, N'Khen thu?ng', CAST(N'2024-06-18' AS Date), N'Ðóng góp tích c?c trong ho?t d?ng tình nguy?n c?a công ty')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (7, N'Khen thu?ng', CAST(N'2024-07-01' AS Date), N'Nhân viên tiêu bi?u c?a tháng 6')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (8, N'K? lu?t', CAST(N'2024-07-20' AS Date), N'Vi ph?m quy d?nh ngh? phép không báo tru?c')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (9, N'Khen thu?ng', CAST(N'2024-08-10' AS Date), N'Ð?t thành tích t?t trong dào t?o n?i b?')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (10, N'K? lu?t', CAST(N'2024-08-30' AS Date), N'Vi ph?m quy d?nh b?o m?t thông tin')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (11, N'Khen thu?ng', CAST(N'2024-09-12' AS Date), N'Hoàn thành xu?t s?c nhi?m v? d?t xu?t')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (12, N'Khen thu?ng', CAST(N'2024-10-05' AS Date), N'Ð?t thành tích t?t trong c?i ti?n ch?t lu?ng d?ch v?')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (13, N'K? lu?t', CAST(N'2024-10-15' AS Date), N'S? d?ng tài nguyên công ty không h?p lý')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (14, N'Khen thu?ng', CAST(N'2024-11-01' AS Date), N'Nhân viên tiêu bi?u c?a tháng 10')
GO
INSERT [dbo].[KT_KL] ([MaSuKien], [LoaiSuKien], [NgayDienRa], [LyDo]) VALUES (15, N'K? lu?t', CAST(N'2024-11-18' AS Date), N'Không hoàn thành nhi?m v? theo k? ho?ch d? ra')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (1, N'Nguyễn Văn An', CAST(N'1990-01-15' AS Date), 912345678, N'an.nguyen@example.com', CAST(N'2022-01-10' AS Date), 1, 102)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (2, N'Trần Thị Bình', CAST(N'1985-03-22' AS Date), 912345679, N'binh.tran@example.com', CAST(N'2021-06-15' AS Date), 1, 103)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (3, N'Lê Văn Cường', CAST(N'1992-05-30' AS Date), 912345680, N'cuong.le@example.com', CAST(N'2023-02-01' AS Date), 1, 101)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (4, N'Phạm Văn Dũng', CAST(N'1988-07-12' AS Date), 912345681, N'dung.pham@example.com', CAST(N'2020-08-20' AS Date), 2, 203)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (5, N'Nguyễn Thị Hoa', CAST(N'1995-09-05' AS Date), 912345682, N'hoa.nguyen@example.com', CAST(N'2022-11-01' AS Date), 2, 202)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (6, N'Trần Văn Hùng', CAST(N'1991-04-20' AS Date), 912345683, N'hung.tran@example.com', CAST(N'2023-03-15' AS Date), 2, 201)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (7, N'Lê Thị Lan', CAST(N'1989-12-10' AS Date), 912345684, N'lan.le@example.com', CAST(N'2021-04-25' AS Date), 3, 302)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (8, N'Nguyễn Văn Minh', CAST(N'1994-06-30' AS Date), 912345685, N'minh.nguyen@example.com', CAST(N'2022-05-10' AS Date), 3, 301)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (9, N'Trần Thị Nga', CAST(N'1993-11-15' AS Date), 912345686, N'nga.tran@example.com', CAST(N'2023-07-05' AS Date), 3, 303)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (10, N'Phạm Văn Phát', CAST(N'1987-10-12' AS Date), 912345687, N'phat.pham@example.com', CAST(N'2021-09-20' AS Date), 4, 401)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (11, N'Lê Thị Quỳnh', CAST(N'1990-08-19' AS Date), 912345688, N'quynh.le@example.com', CAST(N'2022-01-10' AS Date), 4, 402)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (12, N'Nguyễn Văn Rồng', CAST(N'1986-02-05' AS Date), 912345689, N'rong.nguyen@example.com', CAST(N'2023-02-15' AS Date), 4, 403)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (13, N'Trần Văn Sơn', CAST(N'1991-07-25' AS Date), 912345690, N'son.tran@example.com', CAST(N'2021-03-30' AS Date), 5, 503)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (14, N'Nguyễn Thị Thanh', CAST(N'1995-01-12' AS Date), 912345691, N'thanh.nguyen@example.com', CAST(N'2022-05-20' AS Date), 5, 502)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (15, N'Phạm Văn Tài', CAST(N'1988-03-15' AS Date), 912345692, N'tai.pham@example.com', CAST(N'2023-06-01' AS Date), 5, 501)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (16, N'Lê Thị Út', CAST(N'1993-12-18' AS Date), 912345693, N'ut.le@example.com', CAST(N'2021-08-25' AS Date), 6, 603)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (17, N'Nguyễn Văn Vũ', CAST(N'1992-04-30' AS Date), 912345694, N'vu.nguyen@example.com', CAST(N'2022-02-10' AS Date), 6, 602)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (18, N'Trần Thị Yến', CAST(N'1990-11-25' AS Date), 912345695, N'yen.tran@example.com', CAST(N'2023-04-15' AS Date), 6, 601)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (19, N'Lê Văn Z', CAST(N'1989-10-12' AS Date), 912345696, N'z.le@example.com', CAST(N'2021-03-10' AS Date), 7, 702)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (20, N'Nguyễn Thị Bích', CAST(N'1994-08-30' AS Date), 912345697, N'bich.nguyen@example.com', CAST(N'2022-09-20' AS Date), 7, 701)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (21, N'Trần Văn Cường', CAST(N'1986-05-22' AS Date), 912345698, N'cuong.tran@example.com', CAST(N'2023-06-25' AS Date), 7, 703)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (22, N'Phạm Văn Dương', CAST(N'1995-01-05' AS Date), 912345699, N'duong.pham@example.com', CAST(N'2021-07-15' AS Date), 1, 102)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (23, N'Lê Thị Hằng', CAST(N'1991-03-15' AS Date), 912345700, N'hang.le@example.com', CAST(N'2022-11-01' AS Date), 1, 103)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (24, N'Nguyễn Văn Kiên', CAST(N'1987-12-10' AS Date), 912345701, N'kien.nguyen@example.com', CAST(N'2023-08-20' AS Date), 1, 101)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (25, N'Trần Văn Lợi', CAST(N'1992-06-15' AS Date), 912345702, N'loi.tran@example.com', CAST(N'2021-04-30' AS Date), 2, 203)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (26, N'Lê Thị Mai', CAST(N'1988-10-30' AS Date), 912345703, N'mai.le@example.com', CAST(N'2022-05-15' AS Date), 2, 202)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (27, N'Nguyễn Văn Nam', CAST(N'1990-09-05' AS Date), 912345704, N'nam.nguyen@example.com', CAST(N'2023-09-01' AS Date), 2, 201)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (28, N'Phạm Văn Oanh', CAST(N'1994-07-20' AS Date), 912345705, N'oanh.pham@example.com', CAST(N'2021-06-10' AS Date), 3, 302)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (29, N'Lê Thị Phượng', CAST(N'1993-03-12' AS Date), 912345706, N'phuong.le@example.com', CAST(N'2022-08-25' AS Date), 3, 301)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (30, N'Nguyễn Văn Quang', CAST(N'1986-01-15' AS Date), 912345707, N'quang.nguyen@example.com', CAST(N'2023-02-20' AS Date), 3, 303)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (31, N'Trần Văn Rạng', CAST(N'1995-11-30' AS Date), 912345708, N'rang.tran@example.com', CAST(N'2021-07-01' AS Date), 4, 401)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (32, N'Lê Thị Sương', CAST(N'1992-04-18' AS Date), 912345709, N'suong.le@example.com', CAST(N'2022-03-10' AS Date), 4, 402)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (33, N'Nguyễn Văn Thịnh', CAST(N'1989-12-05' AS Date), 912345710, N'thinh.nguyen@example.com', CAST(N'2023-06-15' AS Date), 4, 403)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (34, N'Phạm Văn Uy', CAST(N'1990-03-20' AS Date), 912345711, N'uy.pham@example.com', CAST(N'2021-09-10' AS Date), 5, 503)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (35, N'Nguyễn Thị Vân', CAST(N'1993-06-15' AS Date), 912345712, N'van.nguyen@example.com', CAST(N'2022-11-20' AS Date), 5, 502)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (36, N'Trần Văn Vũ', CAST(N'1988-08-25' AS Date), 912345713, N'vu.tran@example.com', CAST(N'2023-01-10' AS Date), 5, 501)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (37, N'Lê Thị Xuân', CAST(N'1991-09-30' AS Date), 912345714, N'xuan.le@example.com', CAST(N'2021-02-15' AS Date), 6, 603)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (38, N'Nguyễn Văn Y', CAST(N'1992-03-05' AS Date), 912345715, N'y.nguyen@example.com', CAST(N'2022-06-05' AS Date), 6, 602)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (39, N'Trần Thị Z', CAST(N'1986-12-15' AS Date), 912345716, N'z.tran@example.com', CAST(N'2023-07-25' AS Date), 6, 601)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (40, N'Phạm Văn A1', CAST(N'1994-05-18' AS Date), 912345717, N'a1.pham@example.com', CAST(N'2021-08-20' AS Date), 7, 702)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (41, N'Lê Thị B1', CAST(N'1990-02-10' AS Date), 912345718, N'b1.le@example.com', CAST(N'2022-09-15' AS Date), 7, 701)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (42, N'Nguyễn Văn C1', CAST(N'1989-07-22' AS Date), 912345719, N'c1.nguyen@example.com', CAST(N'2023-10-10' AS Date), 7, 703)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (43, N'Trần Thị D1', CAST(N'1995-11-05' AS Date), 912345720, N'd1.tran@example.com', CAST(N'2021-11-30' AS Date), 1, 102)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (44, N'Phạm Văn E1', CAST(N'1988-06-15' AS Date), 912345721, N'e1.pham@example.com', CAST(N'2022-12-01' AS Date), 1, 103)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (45, N'Nguyễn Thị F1', CAST(N'1991-01-30' AS Date), 912345722, N'f1.nguyen@example.com', CAST(N'2023-05-25' AS Date), 1, 101)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (46, N'Lê Văn G1', CAST(N'1990-08-15' AS Date), 912345723, N'g1.le@example.com', CAST(N'2021-07-20' AS Date), 2, 203)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (47, N'Nguyễn Văn H1', CAST(N'1994-03-25' AS Date), 912345724, N'h1.nguyen@example.com', CAST(N'2022-01-15' AS Date), 2, 202)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (48, N'Trần Thị I1', CAST(N'1993-10-05' AS Date), 912345725, N'i1.tran@example.com', CAST(N'2023-02-28' AS Date), 2, 201)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (49, N'Phạm Văn J1', CAST(N'1986-04-20' AS Date), 912345726, N'j1.pham@example.com', CAST(N'2021-03-15' AS Date), 3, 302)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoDienThoai], [Email], [NgayBatDauLamViec], [MaPhongBan], [MaChucVu]) VALUES (50, N'Nguyễn Thị K1', CAST(N'1992-12-30' AS Date), 912345727, N'k1.nguyen@example.com', CAST(N'2022-07-05' AS Date), 3, 301)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (1, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(32300000.00 AS Decimal(18, 2)), N'Đã trả', 1)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (2, CAST(N'2024-01-31' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(31000000.00 AS Decimal(18, 2)), N'Đã trả', 2)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (3, CAST(N'2024-01-31' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(43200000.00 AS Decimal(18, 2)), N'Đã trả', 3)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (4, CAST(N'2024-01-31' AS Date), CAST(20000000.00 AS Decimal(18, 2)), CAST(29500000.00 AS Decimal(18, 2)), N'Đã trả', 4)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (5, CAST(N'2024-01-31' AS Date), CAST(13000000.00 AS Decimal(18, 2)), CAST(36000000.00 AS Decimal(18, 2)), N'Đã trả', 5)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (6, CAST(N'2024-01-31' AS Date), CAST(14500000.00 AS Decimal(18, 2)), CAST(29500000.00 AS Decimal(18, 2)), N'Đã trả', 6)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (7, CAST(N'2024-01-31' AS Date), CAST(15500000.00 AS Decimal(18, 2)), CAST(26500000.00 AS Decimal(18, 2)), N'Đã trả', 7)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (8, CAST(N'2024-01-31' AS Date), CAST(16500000.00 AS Decimal(18, 2)), CAST(31500000.00 AS Decimal(18, 2)), N'Đã trả', 8)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (9, CAST(N'2024-01-31' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(21500000.00 AS Decimal(18, 2)), N'Đã trả', 9)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (10, CAST(N'2024-01-31' AS Date), CAST(17000000.00 AS Decimal(18, 2)), CAST(32000000.00 AS Decimal(18, 2)), N'Đã trả', 10)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (11, CAST(N'2024-01-31' AS Date), CAST(14500000.00 AS Decimal(18, 2)), CAST(24500000.00 AS Decimal(18, 2)), N'Đã trả', 11)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (12, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(23000000.00 AS Decimal(18, 2)), N'Đã trả', 12)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (13, CAST(N'2024-01-31' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(28000000.00 AS Decimal(18, 2)), N'Đã trả', 13)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (14, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(28000000.00 AS Decimal(18, 2)), N'Đã trả', 14)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (15, CAST(N'2024-01-31' AS Date), CAST(15500000.00 AS Decimal(18, 2)), CAST(33500000.00 AS Decimal(18, 2)), N'Đã trả', 15)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (16, CAST(N'2024-01-31' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(26000000.00 AS Decimal(18, 2)), N'Đã trả', 16)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (17, CAST(N'2024-01-31' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(27000000.00 AS Decimal(18, 2)), N'Đã trả', 17)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (18, CAST(N'2024-01-31' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(28500000.00 AS Decimal(18, 2)), N'Đã trả', 18)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (19, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(23000000.00 AS Decimal(18, 2)), N'Đã trả', 19)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (20, CAST(N'2024-01-31' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(28000000.00 AS Decimal(18, 2)), N'Đã trả', 20)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (21, CAST(N'2024-01-31' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(25000000.00 AS Decimal(18, 2)), N'Đã trả', 21)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (22, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(25000000.00 AS Decimal(18, 2)), N'Đã trả', 22)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (23, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(23000000.00 AS Decimal(18, 2)), N'Đã trả', 23)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (24, CAST(N'2024-01-31' AS Date), CAST(17000000.00 AS Decimal(18, 2)), CAST(32000000.00 AS Decimal(18, 2)), N'Đã trả', 24)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (25, CAST(N'2024-01-31' AS Date), CAST(14500000.00 AS Decimal(18, 2)), CAST(23500000.00 AS Decimal(18, 2)), N'Đã trả', 25)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (26, CAST(N'2024-01-31' AS Date), CAST(15500000.00 AS Decimal(18, 2)), CAST(27500000.00 AS Decimal(18, 2)), N'Đã trả', 26)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (27, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(30000000.00 AS Decimal(18, 2)), N'Đã trả', 27)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (28, CAST(N'2024-01-31' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(27000000.00 AS Decimal(18, 2)), N'Đã trả', 28)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (29, CAST(N'2024-01-31' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(29000000.00 AS Decimal(18, 2)), N'Đã trả', 29)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (30, CAST(N'2024-01-31' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(21500000.00 AS Decimal(18, 2)), N'Đã trả', 30)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (31, CAST(N'2024-01-31' AS Date), CAST(17000000.00 AS Decimal(18, 2)), CAST(32000000.00 AS Decimal(18, 2)), N'Đã trả', 31)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (32, CAST(N'2024-01-31' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(26000000.00 AS Decimal(18, 2)), N'Đã trả', 32)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (33, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(23000000.00 AS Decimal(18, 2)), N'Đã trả', 33)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (34, CAST(N'2024-01-31' AS Date), CAST(14500000.00 AS Decimal(18, 2)), CAST(26500000.00 AS Decimal(18, 2)), N'Đã trả', 34)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (35, CAST(N'2024-01-31' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(29000000.00 AS Decimal(18, 2)), N'Đã trả', 35)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (36, CAST(N'2024-01-31' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(31500000.00 AS Decimal(18, 2)), N'Đã trả', 36)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (37, CAST(N'2024-01-31' AS Date), CAST(15500000.00 AS Decimal(18, 2)), CAST(27500000.00 AS Decimal(18, 2)), N'Đã trả', 37)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (38, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(26000000.00 AS Decimal(18, 2)), N'Đã trả', 38)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (39, CAST(N'2024-01-31' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(29000000.00 AS Decimal(18, 2)), N'Đã trả', 39)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (40, CAST(N'2024-01-31' AS Date), CAST(14500000.00 AS Decimal(18, 2)), CAST(22500000.00 AS Decimal(18, 2)), N'Đã trả', 40)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (41, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(29000000.00 AS Decimal(18, 2)), N'Đã trả', 41)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (42, CAST(N'2024-01-31' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(22500000.00 AS Decimal(18, 2)), N'Đã trả', 42)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (43, CAST(N'2024-01-31' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(26000000.00 AS Decimal(18, 2)), N'Đã trả', 43)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (44, CAST(N'2024-01-31' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(22000000.00 AS Decimal(18, 2)), N'Đã trả', 44)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (45, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(30000000.00 AS Decimal(18, 2)), N'Đã trả', 45)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (46, CAST(N'2024-01-31' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(22500000.00 AS Decimal(18, 2)), N'Đã trả', 46)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (47, CAST(N'2024-01-31' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(27000000.00 AS Decimal(18, 2)), N'Đã trả', 47)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (48, CAST(N'2024-01-31' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(29000000.00 AS Decimal(18, 2)), N'Đã trả', 48)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (49, CAST(N'2024-01-31' AS Date), CAST(15500000.00 AS Decimal(18, 2)), CAST(26500000.00 AS Decimal(18, 2)), N'Đã trả', 49)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (50, CAST(N'2024-01-31' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(31000000.00 AS Decimal(18, 2)), N'Đã trả', 50)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (51, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(32300000.00 AS Decimal(18, 2)), N'Chưa trả', 1)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (52, CAST(N'2024-02-29' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(31000000.00 AS Decimal(18, 2)), N'Chưa trả', 2)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (53, CAST(N'2024-02-29' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(43200000.00 AS Decimal(18, 2)), N'Chưa trả', 3)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (54, CAST(N'2024-02-29' AS Date), CAST(20000000.00 AS Decimal(18, 2)), CAST(29500000.00 AS Decimal(18, 2)), N'Chưa trả', 4)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (55, CAST(N'2024-02-29' AS Date), CAST(13000000.00 AS Decimal(18, 2)), CAST(36000000.00 AS Decimal(18, 2)), N'Chưa trả', 5)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (56, CAST(N'2024-02-29' AS Date), CAST(14500000.00 AS Decimal(18, 2)), CAST(29500000.00 AS Decimal(18, 2)), N'Chưa trả', 6)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (57, CAST(N'2024-02-29' AS Date), CAST(15500000.00 AS Decimal(18, 2)), CAST(26500000.00 AS Decimal(18, 2)), N'Chưa trả', 7)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (58, CAST(N'2024-02-29' AS Date), CAST(16500000.00 AS Decimal(18, 2)), CAST(31500000.00 AS Decimal(18, 2)), N'Chưa trả', 8)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (59, CAST(N'2024-02-29' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(21500000.00 AS Decimal(18, 2)), N'Chưa trả', 9)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (60, CAST(N'2024-02-29' AS Date), CAST(17000000.00 AS Decimal(18, 2)), CAST(32000000.00 AS Decimal(18, 2)), N'Chưa trả', 10)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (61, CAST(N'2024-02-29' AS Date), CAST(14500000.00 AS Decimal(18, 2)), CAST(24500000.00 AS Decimal(18, 2)), N'Chưa trả', 11)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (62, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(23000000.00 AS Decimal(18, 2)), N'Chưa trả', 12)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (63, CAST(N'2024-02-29' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(28000000.00 AS Decimal(18, 2)), N'Chưa trả', 13)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (64, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(28000000.00 AS Decimal(18, 2)), N'Chưa trả', 14)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (65, CAST(N'2024-02-29' AS Date), CAST(15500000.00 AS Decimal(18, 2)), CAST(33500000.00 AS Decimal(18, 2)), N'Chưa trả', 15)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (66, CAST(N'2024-02-29' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(26000000.00 AS Decimal(18, 2)), N'Chưa trả', 16)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (67, CAST(N'2024-02-29' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(27000000.00 AS Decimal(18, 2)), N'Chưa trả', 17)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (68, CAST(N'2024-02-29' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(28500000.00 AS Decimal(18, 2)), N'Chưa trả', 18)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (69, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(23000000.00 AS Decimal(18, 2)), N'Chưa trả', 19)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (70, CAST(N'2024-02-29' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(28000000.00 AS Decimal(18, 2)), N'Chưa trả', 20)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (71, CAST(N'2024-02-29' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(25000000.00 AS Decimal(18, 2)), N'Chưa trả', 21)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (72, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(25000000.00 AS Decimal(18, 2)), N'Chưa trả', 22)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (73, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(23000000.00 AS Decimal(18, 2)), N'Chưa trả', 23)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (74, CAST(N'2024-02-29' AS Date), CAST(17000000.00 AS Decimal(18, 2)), CAST(32000000.00 AS Decimal(18, 2)), N'Chưa trả', 24)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (75, CAST(N'2024-02-29' AS Date), CAST(14500000.00 AS Decimal(18, 2)), CAST(23500000.00 AS Decimal(18, 2)), N'Chưa trả', 25)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (76, CAST(N'2024-02-29' AS Date), CAST(15500000.00 AS Decimal(18, 2)), CAST(27500000.00 AS Decimal(18, 2)), N'Chưa trả', 26)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (77, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(30000000.00 AS Decimal(18, 2)), N'Chưa trả', 27)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (78, CAST(N'2024-02-29' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(27000000.00 AS Decimal(18, 2)), N'Chưa trả', 28)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (79, CAST(N'2024-02-29' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(29000000.00 AS Decimal(18, 2)), N'Chưa trả', 29)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (80, CAST(N'2024-02-29' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(21500000.00 AS Decimal(18, 2)), N'Chưa trả', 30)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (81, CAST(N'2024-02-29' AS Date), CAST(17000000.00 AS Decimal(18, 2)), CAST(32000000.00 AS Decimal(18, 2)), N'Chưa trả', 31)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (82, CAST(N'2024-02-29' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(26000000.00 AS Decimal(18, 2)), N'Chưa trả', 32)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (83, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(23000000.00 AS Decimal(18, 2)), N'Chưa trả', 33)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (84, CAST(N'2024-02-29' AS Date), CAST(14500000.00 AS Decimal(18, 2)), CAST(26500000.00 AS Decimal(18, 2)), N'Chưa trả', 34)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (85, CAST(N'2024-02-29' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(29000000.00 AS Decimal(18, 2)), N'Chưa trả', 35)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (86, CAST(N'2024-02-29' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(31500000.00 AS Decimal(18, 2)), N'Chưa trả', 36)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (87, CAST(N'2024-02-29' AS Date), CAST(15500000.00 AS Decimal(18, 2)), CAST(27500000.00 AS Decimal(18, 2)), N'Chưa trả', 37)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (88, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(26000000.00 AS Decimal(18, 2)), N'Chưa trả', 38)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (89, CAST(N'2024-02-29' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(29000000.00 AS Decimal(18, 2)), N'Chưa trả', 39)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (90, CAST(N'2024-02-29' AS Date), CAST(14500000.00 AS Decimal(18, 2)), CAST(22500000.00 AS Decimal(18, 2)), N'Chưa trả', 40)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (91, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(29000000.00 AS Decimal(18, 2)), N'Chưa trả', 41)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (92, CAST(N'2024-02-29' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(22500000.00 AS Decimal(18, 2)), N'Chưa trả', 42)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (93, CAST(N'2024-02-29' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(26000000.00 AS Decimal(18, 2)), N'Chưa trả', 43)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (94, CAST(N'2024-02-29' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(22000000.00 AS Decimal(18, 2)), N'Chưa trả', 44)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (95, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(30000000.00 AS Decimal(18, 2)), N'Chưa trả', 45)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (96, CAST(N'2024-02-29' AS Date), CAST(13500000.00 AS Decimal(18, 2)), CAST(22500000.00 AS Decimal(18, 2)), N'Chưa trả', 46)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (97, CAST(N'2024-02-29' AS Date), CAST(15000000.00 AS Decimal(18, 2)), CAST(27000000.00 AS Decimal(18, 2)), N'Chưa trả', 47)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (98, CAST(N'2024-02-29' AS Date), CAST(14000000.00 AS Decimal(18, 2)), CAST(29000000.00 AS Decimal(18, 2)), N'Chưa trả', 48)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (99, CAST(N'2024-02-29' AS Date), CAST(15500000.00 AS Decimal(18, 2)), CAST(26500000.00 AS Decimal(18, 2)), N'Chưa trả', 49)
GO
INSERT [dbo].[PhieuLuong] ([MaPhieuLuong], [NgayTinhLuong], [LuongCoBan], [LuongNhanDuoc], [TrangThaiTraLuong], [MaNhanVien]) VALUES (100, CAST(N'2024-02-29' AS Date), CAST(16000000.00 AS Decimal(18, 2)), CAST(31000000.00 AS Decimal(18, 2)), N'Chưa trả', 50)
GO
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [SoLuongNhanVien], [TruongPhong]) VALUES (1, N'Nhân sự', 9, N'Lê Văn Cường')
GO
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [SoLuongNhanVien], [TruongPhong]) VALUES (2, N'Tài chính - kế toán', 9, N'Trần Văn Hùng')
GO
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [SoLuongNhanVien], [TruongPhong]) VALUES (3, N'Marketing', 8, N'Nguyễn Văn Minh')
GO
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [SoLuongNhanVien], [TruongPhong]) VALUES (4, N'Vận hành', 6, N'Phạm Văn Phát')
GO
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [SoLuongNhanVien], [TruongPhong]) VALUES (5, N'Công nghệ thông tin', 6, N'Phạm Văn Tài')
GO
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [SoLuongNhanVien], [TruongPhong]) VALUES (6, N'Nghiên cứu và phát triển', 6, N'Trần Thị Yến')
GO
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan], [SoLuongNhanVien], [TruongPhong]) VALUES (7, N'Chăm sóc khách hàng', 6, N'Nguyễn Thị Bích')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (1, N'Cử nhân Kinh tế', N'5 năm quản lý dự án', N'Quản lý dự án, Đàm phán', N'PMP', N'Tiếng Anh', CAST(N'2021-12-15' AS Date), N'Nam', N'Hà Nội', N'Đã kết hôn, 2 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (2, N'Thạc sĩ Kế toán', N'7 năm kế toán tài chính', N'Lập báo cáo tài chính', N'CPA', N'Tiếng Anh', CAST(N'2021-05-15' AS Date), N'Nữ', N'Hà Nội', N'Đã kết hôn, 1 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (3, N'Cử nhân Công nghệ Thông tin', N'5 năm lập trình phần mềm', N'Lập trình Java, Python', N'Oracle Certified', N'Tiếng Anh', CAST(N'2023-01-15' AS Date), N'Nam', N'TP HCM', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (4, N'Thạc sĩ Quản trị Kinh doanh', N'10 năm kinh nghiệm', N'Quản lý chiến lược', N'MBA', N'Tiếng Anh, Tiếng Pháp', CAST(N'2020-07-10' AS Date), N'Nam', N'Đà Nẵng', N'Đã kết hôn, 2 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (5, N'Cử nhân Marketing', N'3 năm làm marketing', N'Chạy chiến dịch quảng cáo', N'Google Ads Certified', N'Tiếng Anh', CAST(N'2022-10-01' AS Date), N'Nữ', N'Hải Phòng', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (6, N'Kỹ sư Điện tử', N'4 năm phát triển phần cứng', N'Thiết kế mạch', N'CEH', N'Tiếng Nhật', CAST(N'2023-02-01' AS Date), N'Nam', N'TP HCM', N'Đã kết hôn, 1 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (7, N'Thạc sĩ Nhân sự', N'8 năm quản lý nhân sự', N'Tuyển dụng, Đào tạo', N'SHRM', N'Tiếng Anh', CAST(N'2021-04-01' AS Date), N'Nữ', N'Quảng Ninh', N'Đã kết hôn, 3 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (8, N'Cử nhân Kinh tế', N'6 năm kinh doanh', N'Đàm phán, Quản lý đội ngũ', N'PMP', N'Tiếng Anh', CAST(N'2022-04-05' AS Date), N'Nam', N'Hà Nam', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (9, N'Cử nhân Quản trị Kinh doanh', N'4 năm bán hàng', N'Kỹ năng giao tiếp, Lập kế hoạch', N'PMP', N'Tiếng Anh', CAST(N'2023-06-10' AS Date), N'Nữ', N'Hải Phòng', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (10, N'Thạc sĩ Tài chính', N'9 năm tư vấn tài chính', N'Phân tích tài chính', N'CFA', N'Tiếng Anh, Tiếng Nhật', CAST(N'2021-08-01' AS Date), N'Nam', N'Hà Nội', N'Đã kết hôn, 2 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (11, N'Cử nhân Quản trị Kinh doanh', N'7 năm kinh doanh', N'Quản lý dự án, Đàm phán', N'MBA', N'Tiếng Anh', CAST(N'2021-12-15' AS Date), N'Nữ', N'Nghệ An', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (12, N'Cử nhân Luật', N'8 năm tư vấn pháp lý', N'Tư vấn pháp luật doanh nghiệp', N'Luật sư', N'Tiếng Anh', CAST(N'2023-01-15' AS Date), N'Nam', N'TP HCM', N'Đã kết hôn')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (13, N'Thạc sĩ Tài chính', N'5 năm phân tích tài chính', N'Phân tích đầu tư, Kiểm toán', N'CFA', N'Tiếng Anh, Tiếng Nhật', CAST(N'2021-02-15' AS Date), N'Nam', N'Hà Nội', N'Đã kết hôn')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (14, N'Cử nhân CNTT', N'4 năm phát triển phần mềm', N'Lập trình Java, Web', N'Oracle Certified', N'Tiếng Anh', CAST(N'2022-04-01' AS Date), N'Nữ', N'Đà Nẵng', N'Đã kết hôn, 1 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (15, N'Cử nhân Marketing', N'5 năm làm marketing', N'Thương hiệu, Quảng cáo', N'Google Ads Certified', N'Tiếng Anh', CAST(N'2023-05-01' AS Date), N'Nam', N'Hải Phòng', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (16, N'Cử nhân Quản trị Nhân sự', N'6 năm tuyển dụng', N'Đàm phán, Quản lý nhân sự', N'SHRM', N'Tiếng Anh', CAST(N'2021-07-01' AS Date), N'Nữ', N'Nam Định', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (17, N'Thạc sĩ Kinh tế', N'4 năm tài chính', N'Tư vấn tài chính, Đầu tư', N'CFA', N'Tiếng Anh', CAST(N'2022-01-05' AS Date), N'Nam', N'Hà Nội', N'Đã kết hôn, 1 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (18, N'Cử nhân Công nghệ Thông tin', N'5 năm phát triển web', N'Lập trình PHP, JS', N'Oracle Certified', N'Tiếng Anh', CAST(N'2023-03-10' AS Date), N'Nữ', N'TP HCM', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (19, N'Thạc sĩ Quản trị Kinh doanh', N'7 năm kinh nghiệm lãnh đạo', N'Lãnh đạo, Kế hoạch chiến lược', N'MBA', N'Tiếng Anh, Tiếng Pháp', CAST(N'2021-02-01' AS Date), N'Nam', N'Quảng Ngãi', N'Đã kết hôn, 2 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (20, N'Cử nhân Tài chính', N'5 năm tư vấn đầu tư', N'Phân tích tài chính, Đầu tư', N'CFA', N'Tiếng Anh', CAST(N'2022-08-01' AS Date), N'Nữ', N'Hải Phòng', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (21, N'Cử nhân Kinh tế', N'8 năm kinh nghiệm tư vấn đầu tư', N'Tư vấn đầu tư, Quản lý rủi ro', N'CFA', N'Tiếng Anh', CAST(N'2023-05-25' AS Date), N'Nam', N'TP HCM', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (22, N'Thạc sĩ Quản trị Kinh doanh', N'7 năm kinh doanh', N'Đàm phán, Quản lý đội ngũ', N'MBA', N'Tiếng Anh', CAST(N'2021-06-01' AS Date), N'Nam', N'Hải Dương', N'Đã kết hôn, 2 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (23, N'Cử nhân Kế toán', N'6 năm kế toán tài chính', N'Lập báo cáo tài chính', N'CPA', N'Tiếng Anh', CAST(N'2022-10-01' AS Date), N'Nữ', N'Hà Nội', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (24, N'Cử nhân Công nghệ Thông tin', N'5 năm phát triển phần mềm', N'Lập trình Java, Python', N'Oracle Certified', N'Tiếng Anh', CAST(N'2023-07-01' AS Date), N'Nam', N'TP HCM', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (25, N'Thạc sĩ Quản trị Kinh doanh', N'10 năm quản lý dự án', N'Quản lý chiến lược, Đàm phán', N'MBA', N'Tiếng Anh', CAST(N'2021-03-01' AS Date), N'Nam', N'Hà Nội', N'Đã kết hôn, 1 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (26, N'Cử nhân Marketing', N'4 năm chạy chiến dịch quảng cáo', N'Thương hiệu, Quảng cáo', N'Google Ads Certified', N'Tiếng Anh', CAST(N'2022-04-01' AS Date), N'Nữ', N'Đà Nẵng', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (27, N'Kỹ sư Điện tử', N'3 năm thiết kế mạch', N'Thiết kế vi mạch', N'CEH', N'Tiếng Nhật', CAST(N'2023-08-01' AS Date), N'Nam', N'TP HCM', N'Đã kết hôn')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (28, N'Thạc sĩ Nhân sự', N'7 năm quản lý nhân sự', N'Tuyển dụng, Đào tạo', N'SHRM', N'Tiếng Anh', CAST(N'2021-05-01' AS Date), N'Nam', N'Hải Phòng', N'Đã kết hôn, 2 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (29, N'Cử nhân Tài chính', N'5 năm phân tích tài chính', N'Tài chính doanh nghiệp', N'CFA', N'Tiếng Anh', CAST(N'2022-07-01' AS Date), N'Nữ', N'TP HCM', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (30, N'Cử nhân Quản trị Kinh doanh', N'6 năm phát triển kinh doanh', N'Kỹ năng lãnh đạo, Quản lý dự án', N'MBA', N'Tiếng Anh', CAST(N'2023-01-01' AS Date), N'Nam', N'Hà Nội', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (31, N'Thạc sĩ Công nghệ Thông tin', N'8 năm lập trình phần mềm', N'Java, Python', N'Oracle Certified', N'Tiếng Anh', CAST(N'2021-06-01' AS Date), N'Nam', N'TP HCM', N'Đã kết hôn, 2 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (32, N'Cử nhân Kế toán', N'7 năm kế toán', N'Lập báo cáo tài chính', N'CPA', N'Tiếng Anh', CAST(N'2022-02-15' AS Date), N'Nữ', N'Hải Phòng', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (33, N'Cử nhân Quản trị Kinh doanh', N'9 năm phát triển kinh doanh', N'Quản lý dự án, Đàm phán', N'MBA', N'Tiếng Anh', CAST(N'2023-05-15' AS Date), N'Nam', N'Hà Nội', N'Đã kết hôn')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (34, N'Cử nhân Công nghệ Thông tin', N'5 năm phát triển phần mềm', N'Lập trình Java, Python', N'Oracle Certified', N'Tiếng Anh', CAST(N'2021-08-01' AS Date), N'Nam', N'TP HCM', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (35, N'Thạc sĩ Tài chính', N'6 năm tư vấn đầu tư', N'Phân tích đầu tư', N'CFA', N'Tiếng Anh', CAST(N'2022-10-01' AS Date), N'Nữ', N'Hà Nội', N'Đã kết hôn')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (36, N'Cử nhân Kinh tế', N'4 năm tư vấn tài chính', N'Tài chính doanh nghiệp', N'CFA', N'Tiếng Anh', CAST(N'2023-01-01' AS Date), N'Nam', N'Hà Nội', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (37, N'Thạc sĩ Quản trị Kinh doanh', N'7 năm quản lý dự án', N'Quản lý đội ngũ, Đàm phán', N'MBA', N'Tiếng Anh', CAST(N'2021-02-01' AS Date), N'Nữ', N'Quảng Ninh', N'Đã kết hôn')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (38, N'Cử nhân Marketing', N'5 năm quảng cáo', N'Thương hiệu, Quảng cáo', N'Google Ads Certified', N'Tiếng Anh', CAST(N'2022-04-01' AS Date), N'Nam', N'Hải Phòng', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (39, N'Thạc sĩ Tài chính', N'8 năm phân tích tài chính', N'Đầu tư, Quản lý tài chính', N'CFA', N'Tiếng Anh', CAST(N'2023-06-01' AS Date), N'Nữ', N'Hà Nội', N'Đã kết hôn')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (40, N'Cử nhân Công nghệ Thông tin', N'4 năm phát triển phần mềm', N'Lập trình Python, PHP', N'Oracle Certified', N'Tiếng Anh', CAST(N'2021-07-01' AS Date), N'Nam', N'TP HCM', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (41, N'Thạc sĩ Quản trị Kinh doanh', N'10 năm phát triển kinh doanh', N'Lãnh đạo chiến lược, Quản lý dự án', N'MBA', N'Tiếng Anh', CAST(N'2022-08-01' AS Date), N'Nữ', N'Hải Phòng', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (42, N'Cử nhân Quản trị Kinh doanh', N'5 năm phát triển kinh doanh', N'Quản lý đội ngũ, Đàm phán', N'PMP', N'Tiếng Anh', CAST(N'2023-09-01' AS Date), N'Nam', N'Hà Nội', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (43, N'Cử nhân Luật', N'7 năm tư vấn pháp lý', N'Tư vấn doanh nghiệp', N'Luật sư', N'Tiếng Anh', CAST(N'2021-10-01' AS Date), N'Nữ', N'TP HCM', N'Đã kết hôn')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (44, N'Thạc sĩ Kế toán', N'9 năm kế toán', N'Lập báo cáo tài chính', N'CPA', N'Tiếng Anh', CAST(N'2022-11-01' AS Date), N'Nam', N'Hải Phòng', N'Đã kết hôn, 2 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (45, N'Cử nhân Kinh tế', N'5 năm phân tích đầu tư', N'Đầu tư, Quản lý tài chính', N'CFA', N'Tiếng Anh', CAST(N'2023-04-01' AS Date), N'Nữ', N'Hà Nội', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (46, N'Thạc sĩ Quản trị Kinh doanh', N'7 năm phát triển kinh doanh', N'Quản lý dự án, Đàm phán', N'MBA', N'Tiếng Anh', CAST(N'2021-06-01' AS Date), N'Nam', N'Hải Phòng', N'Đã kết hôn, 2 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (47, N'Cử nhân Luật', N'6 năm tư vấn pháp lý', N'Tư vấn luật doanh nghiệp', N'Luật sư', N'Tiếng Anh', CAST(N'2022-12-01' AS Date), N'Nam', N'TP HCM', N'Đã kết hôn')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (48, N'Cử nhân Quản trị Kinh doanh', N'8 năm phát triển kinh doanh', N'Quản lý dự án, Lập kế hoạch chiến lược', N'MBA', N'Tiếng Anh', CAST(N'2023-01-01' AS Date), N'Nữ', N'Hà Nội', N'Đã kết hôn, 1 con')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (49, N'Thạc sĩ Công nghệ Thông tin', N'6 năm phát triển phần mềm', N'Quản lý dự án CNTT', N'Oracle Certified', N'Tiếng Anh', CAST(N'2021-07-01' AS Date), N'Nam', N'TP HCM', N'Độc thân')
GO
INSERT [dbo].[SoYeuLyLich] ([MaNhanVien], [TrinhDoHocVan], [KinhNghiem], [KyNang], [ChungChi], [NgoaiNgu], [NgayTao], [GioiTinh], [QueQuan], [GiaCanh]) VALUES (50, N'Cử nhân Kinh tế', N'5 năm tư vấn đầu tư', N'Tài chính doanh nghiệp', N'CFA', N'Tiếng Anh', CAST(N'2022-10-01' AS Date), N'Nữ', N'Hà Nội', N'Độc thân')
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [VaiTro], [TrangThaiTaiKhoan], [NgayTao]) VALUES (N'admin', N'admin123', N'Quản trị viên', N'Kích hoạt', CAST(N'2024-10-01' AS Date))
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [VaiTro], [TrangThaiTaiKhoan], [NgayTao]) VALUES (N'kiet123', N'123456', N'Chỉnh sửa', N'Kích hoạt', CAST(N'2024-10-01' AS Date))
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [VaiTro], [TrangThaiTaiKhoan], [NgayTao]) VALUES (N'nhat123', N'123456', N'Chỉnh sửa', N'Kích hoạt', CAST(N'2024-10-01' AS Date))
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [VaiTro], [TrangThaiTaiKhoan], [NgayTao]) VALUES (N'quyet123', N'123456', N'Chỉnh sửa', N'Kích hoạt', CAST(N'2024-10-01' AS Date))
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT001', CAST(N'2024-01-15' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Thưởng tháng 1 cho trưởng phòng nhân sự', 3)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT002', CAST(N'2024-01-20' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Trả lương tháng 1 cho trưởng phòng nhân sự', 3)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT003', CAST(N'2024-01-25' AS Date), CAST(30000000.00 AS Decimal(18, 2)), N'Tiền dự án cải tiến quy trình nhân sự', 3)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT004', CAST(N'2024-01-15' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Thưởng tháng 1 cho trưởng phòng tài chính', 6)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT005', CAST(N'2024-01-20' AS Date), CAST(12000000.00 AS Decimal(18, 2)), N'Trả lương tháng 1 cho trưởng phòng tài chính', 6)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT006', CAST(N'2024-01-28' AS Date), CAST(5000000.00 AS Decimal(18, 2)), N'Tiền thưởng KPI cho trưởng phòng tài chính', 6)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT007', CAST(N'2024-01-15' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Thưởng tháng 1 cho trưởng phòng marketing', 8)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT008', CAST(N'2024-01-20' AS Date), CAST(13000000.00 AS Decimal(18, 2)), N'Trả lương tháng 1 cho trưởng phòng marketing', 8)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT009', CAST(N'2024-01-25' AS Date), CAST(25000000.00 AS Decimal(18, 2)), N'Tiền dự án chiến dịch marketing', 8)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT010', CAST(N'2024-01-15' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Thưởng tháng 1 cho trưởng phòng vận hành', 10)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT011', CAST(N'2024-01-20' AS Date), CAST(10000000.00 AS Decimal(18, 2)), N'Trả lương tháng 1 cho trưởng phòng vận hành', 10)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT012', CAST(N'2024-01-28' AS Date), CAST(4000000.00 AS Decimal(18, 2)), N'Tiền thưởng hiệu suất cho trưởng phòng vận hành', 10)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT013', CAST(N'2024-01-15' AS Date), CAST(18000000.00 AS Decimal(18, 2)), N'Thưởng tháng 1 cho trưởng phòng CNTT', 15)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT014', CAST(N'2024-01-20' AS Date), CAST(13000000.00 AS Decimal(18, 2)), N'Trả lương tháng 1 cho trưởng phòng CNTT', 15)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT015', CAST(N'2024-01-28' AS Date), CAST(6000000.00 AS Decimal(18, 2)), N'Tiền thưởng dự án phần mềm', 15)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT016', CAST(N'2024-01-15' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Thưởng tháng 1 cho trưởng phòng NC&PT', 18)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT017', CAST(N'2024-01-20' AS Date), CAST(11000000.00 AS Decimal(18, 2)), N'Trả lương tháng 1 cho trưởng phòng NC&PT', 18)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT018', CAST(N'2024-01-28' AS Date), CAST(7000000.00 AS Decimal(18, 2)), N'Tiền thưởng nghiên cứu & phát triển', 18)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT019', CAST(N'2024-01-15' AS Date), CAST(14000000.00 AS Decimal(18, 2)), N'Thưởng tháng 1 cho trưởng phòng chăm sóc khách hàng', 20)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT020', CAST(N'2024-01-20' AS Date), CAST(9000000.00 AS Decimal(18, 2)), N'Trả lương tháng 1 cho trưởng phòng chăm sóc khách hàng', 20)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT021', CAST(N'2024-01-25' AS Date), CAST(8000000.00 AS Decimal(18, 2)), N'Tiền thưởng dịch vụ khách hàng', 20)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT022', CAST(N'2024-02-15' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Thưởng tháng 2 cho trưởng phòng nhân sự', 3)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT023', CAST(N'2024-02-20' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Trả lương tháng 2 cho trưởng phòng nhân sự', 3)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT024', CAST(N'2024-02-25' AS Date), CAST(20000000.00 AS Decimal(18, 2)), N'Tiền dự án phát triển nguồn nhân lực', 3)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT025', CAST(N'2024-02-15' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Thưởng tháng 2 cho trưởng phòng tài chính', 6)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT026', CAST(N'2024-02-20' AS Date), CAST(12000000.00 AS Decimal(18, 2)), N'Trả lương tháng 2 cho trưởng phòng tài chính', 6)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT027', CAST(N'2024-02-28' AS Date), CAST(3000000.00 AS Decimal(18, 2)), N'Tiền thưởng cho việc tiết kiệm chi phí', 6)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT028', CAST(N'2024-02-15' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Thưởng tháng 2 cho trưởng phòng marketing', 8)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT029', CAST(N'2024-02-20' AS Date), CAST(13000000.00 AS Decimal(18, 2)), N'Trả lương tháng 2 cho trưởng phòng marketing', 8)
GO
INSERT [dbo].[ThanhToan] ([MaGiaoDich], [NgayGiaoDich], [GiaTri], [NoiDung], [MaNhanVien]) VALUES (N'TT030', CAST(N'2024-02-25' AS Date), CAST(25000000.00 AS Decimal(18, 2)), N'Tiền dự án marketing trực tuyến', 8)
GO
ALTER TABLE [dbo].[BaoHiem]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ChiTietDuAn]  WITH CHECK ADD FOREIGN KEY([MaDuAn])
REFERENCES [dbo].[DuAn] ([MaDuAn])
GO
ALTER TABLE [dbo].[ChiTietDuAn]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ChiTietKhoaDaoTao]  WITH CHECK ADD FOREIGN KEY([MaDaoTao])
REFERENCES [dbo].[DaoTao] ([MaDaoTao])
GO
ALTER TABLE [dbo].[ChiTietKhoaDaoTao]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ChiTietKT_KL]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ChiTietKT_KL]  WITH CHECK ADD FOREIGN KEY([MaSuKien])
REFERENCES [dbo].[KT_KL] ([MaSuKien])
GO
ALTER TABLE [dbo].[HopDongLaoDong]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[LichSuHoatDong]  WITH CHECK ADD FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPhongBan])
GO
ALTER TABLE [dbo].[PhieuLuong]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[SoYeuLyLich]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
