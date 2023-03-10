USE [master]
GO
/****** Object:  Database [dataQLKS]    Script Date: 12/24/2022 11:36:28 AM ******/
CREATE DATABASE [dataQLKS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dataQLKS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dataQLKS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dataQLKS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dataQLKS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dataQLKS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dataQLKS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dataQLKS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dataQLKS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dataQLKS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dataQLKS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dataQLKS] SET ARITHABORT OFF 
GO
ALTER DATABASE [dataQLKS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dataQLKS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dataQLKS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dataQLKS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dataQLKS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dataQLKS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dataQLKS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dataQLKS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dataQLKS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dataQLKS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dataQLKS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dataQLKS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dataQLKS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dataQLKS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dataQLKS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dataQLKS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dataQLKS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dataQLKS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dataQLKS] SET  MULTI_USER 
GO
ALTER DATABASE [dataQLKS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dataQLKS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dataQLKS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dataQLKS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dataQLKS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dataQLKS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dataQLKS] SET QUERY_STORE = OFF
GO
USE [dataQLKS]
GO
/****** Object:  Table [dbo].[tblChucVu]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChucVu](
	[ma_chuc_vu] [int] IDENTITY(1,1) NOT NULL,
	[chuc_vu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_chuc_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDichVu]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDichVu](
	[ma_dv] [int] IDENTITY(1,1) NOT NULL,
	[ten_dv] [nvarchar](100) NULL,
	[gia] [float] NULL,
	[don_vi] [nvarchar](30) NULL,
	[anh] [nvarchar](200) NULL,
	[ton_kho] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_dv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDichVuDaDat]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDichVuDaDat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_hd] [int] NULL,
	[ma_dv] [int] NULL,
	[so_luong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[ma_hd] [int] IDENTITY(1,1) NOT NULL,
	[ma_nv] [int] NULL,
	[ma_pdp] [int] NULL,
	[ngay_tra_phong] [datetime] NULL,
	[ma_tinh_trang] [int] NULL,
	[tien_phong] [float] NULL,
	[tien_dich_vu] [float] NULL,
	[phu_thu] [float] NULL,
	[tong_tien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_hd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[ma_kh] [nvarchar](50) NOT NULL,
	[mat_khau] [nvarchar](50) NULL,
	[ho_ten] [nvarchar](50) NULL,
	[cmt] [nvarchar](30) NULL,
	[sdt] [nvarchar](15) NULL,
	[mail] [nvarchar](100) NULL,
	[diem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_kh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLoaiPhong]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiPhong](
	[loai_phong] [int] IDENTITY(1,1) NOT NULL,
	[mo_ta] [nvarchar](50) NULL,
	[gia] [float] NULL,
	[ti_le_phu_thu] [int] NULL,
	[anh] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[loai_phong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[ma_nv] [int] IDENTITY(1,1) NOT NULL,
	[ho_ten] [nvarchar](50) NULL,
	[ngay_sinh] [date] NULL,
	[dia_chi] [nvarchar](100) NULL,
	[sdt] [nvarchar](15) NULL,
	[tai_khoan] [nvarchar](50) NULL,
	[mat_khau] [nvarchar](50) NULL,
	[ma_chuc_vu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhieuDatPhong]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuDatPhong](
	[ma_pdp] [int] IDENTITY(1,1) NOT NULL,
	[ma_kh] [nvarchar](50) NULL,
	[ngay_dat] [datetime] NULL,
	[ngay_vao] [datetime] NULL,
	[ngay_ra] [datetime] NULL,
	[ma_phong] [int] NULL,
	[thong_tin_khach_thue] [nvarchar](400) NULL,
	[ma_tinh_trang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_pdp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhong]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhong](
	[ma_phong] [int] IDENTITY(1,1) NOT NULL,
	[so_phong] [nvarchar](10) NULL,
	[loai_phong] [int] NULL,
	[ma_tang] [int] NULL,
	[ma_tinh_trang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTang]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTang](
	[ma_tang] [int] IDENTITY(1,1) NOT NULL,
	[ten_tang] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTinhTrangHoaDon]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTinhTrangHoaDon](
	[ma_tinh_trang] [int] IDENTITY(1,1) NOT NULL,
	[mo_ta] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tinh_trang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTinhTrangPhieuDatPhong]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTinhTrangPhieuDatPhong](
	[ma_tinh_trang] [int] IDENTITY(1,1) NOT NULL,
	[tinh_trang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tinh_trang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTinhTrangPhong]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTinhTrangPhong](
	[ma_tinh_trang] [int] IDENTITY(1,1) NOT NULL,
	[mo_ta] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tinh_trang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTinNhan]    Script Date: 12/24/2022 11:36:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTinNhan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ngay_gui] [datetime] NULL,
	[ma_kh] [nvarchar](50) NULL,
	[ho_ten] [nvarchar](100) NULL,
	[mail] [nvarchar](100) NULL,
	[noi_dung] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblChucVu] ON 

INSERT [dbo].[tblChucVu] ([ma_chuc_vu], [chuc_vu]) VALUES (1, N'Quản trị viên')
INSERT [dbo].[tblChucVu] ([ma_chuc_vu], [chuc_vu]) VALUES (2, N'Quản lý')
INSERT [dbo].[tblChucVu] ([ma_chuc_vu], [chuc_vu]) VALUES (3, N'Nhân viên')
SET IDENTITY_INSERT [dbo].[tblChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDichVu] ON 

INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (1, N'Nước ngọt', 10000, N'lon', N'/Content/Images/DichVu/1.png', 49)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (2, N'Bia 333', 10000, N'lon', N'/Content/Images/DichVu/2.png', 49)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (3, N'Khăn lạnh', 5000, N'chiếc', N'/Content/Images/DichVu/3.jpg', 50)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (4, N'Bim Bim', 10000, N'gói', N'/Content/Images/DichVu/4.jpg', 37)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (5, N'Nước suối', 10000, N'chai', N'/Content/Images/DichVu/5.png', 48)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (6, N'Nước tăng lực', 20000, N'chai', N'/Content/Images/DichVu/6.png', 48)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (8, N'Cơm hộp', 30000, N'hộp', N'/Content/Images/DichVu/8.jpg', 49)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (10, N'Bia', 15000, N'Chai', N'/Content/Images/DichVu/bia.png', 100)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (12, N'Thuê xe', 200000, N'Chiếc', N'/Content/Images/DichVu/default.png', 4)
SET IDENTITY_INSERT [dbo].[tblDichVu] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDichVuDaDat] ON 

INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (13, 17, 6, 1)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (14, 18, 4, 12)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (15, 18, 6, 1)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (16, 20, 2, 1)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (17, 20, 5, 1)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (18, 23, 5, 1)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (19, 23, 8, 1)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (20, 27, 1, 1)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (21, 27, 12, 1)
SET IDENTITY_INSERT [dbo].[tblDichVuDaDat] OFF
GO
SET IDENTITY_INSERT [dbo].[tblHoaDon] ON 

INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (17, 4, 17, CAST(N'2022-10-29T14:18:02.783' AS DateTime), 2, 150000, 20000, 112500, 282500)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (18, 4, 18, CAST(N'2022-10-29T13:22:44.603' AS DateTime), 2, 150000, 140000, 0, 290000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (19, 4, 25, CAST(N'2022-11-05T08:06:32.253' AS DateTime), 2, 750000, 0, 150000, 900000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (20, 4, 23, CAST(N'2022-11-05T08:05:49.747' AS DateTime), 2, 500000, 20000, 40000, 560000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (21, 4, 24, CAST(N'2022-11-05T08:06:12.693' AS DateTime), 2, 750000, 0, 75000, 825000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (22, 4, 27, CAST(N'2022-11-27T14:30:02.230' AS DateTime), 2, 1600000, 0, 280000, 1880000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (23, 4, 28, CAST(N'2022-11-27T14:30:16.963' AS DateTime), 2, 1600000, 40000, 280000, 1920000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (24, 4, 32, CAST(N'2022-11-16T15:58:11.297' AS DateTime), 2, 100000, 0, 40000, 140000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (25, 4, 31, CAST(N'2022-12-14T23:52:30.340' AS DateTime), 2, 2900000, 0, 520000, 3420000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (26, 4, 39, CAST(N'2022-12-02T23:21:24.243' AS DateTime), 2, 600000, 0, 80000, 680000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (27, NULL, 42, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (28, NULL, 47, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (29, NULL, 48, NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblHoaDon] OFF
GO
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'khach', N'12345', N'Khach', N'1311412131', N'0166776868', N'khach@gmail.com', 0)
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'Minh Khoi', N'minhkhoi123', N'Minh Khoi', N'675876789', N'0329456712', N'Khoiak@gmail.com', NULL)
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'Nguyen Nguyen', N'Nguyennguyen123', N'Nguyen Nguyen', N'678876123', N'0987678212', NULL, NULL)
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'NhatHuy', N'Nhathuy', N'Ngo nhat huy', N'234432234', N'098779987', NULL, NULL)
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'qaz', N'123qazx', N'qaz', N'1234554321', N'1233323235', NULL, NULL)
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'Quynh Nhu', N'QuynhNhu123', N'Quynh Nhu', N'67896789', N'0123456765', N'qazcde@gmail.com', NULL)
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'qwe', N'123qazx', N'qaz', N'1234554321', N'1233323235', NULL, NULL)
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'Trung Hieu', N'trunghieu123', N'Vo Le Trung Hieu', N'325876456', N'0325437890', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblLoaiPhong] ON 

INSERT [dbo].[tblLoaiPhong] ([loai_phong], [mo_ta], [gia], [ti_le_phu_thu], [anh]) VALUES (1, N'Phòng đơn', 100000, 20, N'["/Content/Images/Phong/11.jpg","/Content/Images/Phong/12.jpg","/Content/Images/Phong/13.jpg"]')
INSERT [dbo].[tblLoaiPhong] ([loai_phong], [mo_ta], [gia], [ti_le_phu_thu], [anh]) VALUES (2, N'Phòng đôi', 150000, 25, N'["/Content/Images/Phong/21.jpg","/Content/Images/Phong/22.jpg","/Content/Images/Phong/23.jpg"]')
INSERT [dbo].[tblLoaiPhong] ([loai_phong], [mo_ta], [gia], [ti_le_phu_thu], [anh]) VALUES (3, N'Phòng vip', 200000, 30, N'["/Content/Images/Phong/31.jpg","/Content/Images/Phong/32.jpg"]')
INSERT [dbo].[tblLoaiPhong] ([loai_phong], [mo_ta], [gia], [ti_le_phu_thu], [anh]) VALUES (5, N'Phòng giường đôi', 500000, 100, N'["/Content/Images/Phong/giuongdoi.png"]')
INSERT [dbo].[tblLoaiPhong] ([loai_phong], [mo_ta], [gia], [ti_le_phu_thu], [anh]) VALUES (17, N'Căn hộ', 1500000, 200000, N'["/Content/Images/Phong/default.png"]')
SET IDENTITY_INSERT [dbo].[tblLoaiPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNhanVien] ON 

INSERT [dbo].[tblNhanVien] ([ma_nv], [ho_ten], [ngay_sinh], [dia_chi], [sdt], [tai_khoan], [mat_khau], [ma_chuc_vu]) VALUES (4, N'NTTNgan', CAST(N'2002-12-21' AS Date), NULL, N'0', N'TNgan', N'123qaz', 2)
INSERT [dbo].[tblNhanVien] ([ma_nv], [ho_ten], [ngay_sinh], [dia_chi], [sdt], [tai_khoan], [mat_khau], [ma_chuc_vu]) VALUES (5, N'Thanh Ngan', NULL, NULL, NULL, N'admin', N'1qazxsw', 1)
INSERT [dbo].[tblNhanVien] ([ma_nv], [ho_ten], [ngay_sinh], [dia_chi], [sdt], [tai_khoan], [mat_khau], [ma_chuc_vu]) VALUES (6, N'Nhat Huy', CAST(N'2002-10-02' AS Date), NULL, NULL, N'Thanh Ngan', N'nhuy123', 3)
SET IDENTITY_INSERT [dbo].[tblNhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPhieuDatPhong] ON 

INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (16, N'khach', CAST(N'2022-10-29T11:16:24.370' AS DateTime), CAST(N'2022-10-29T11:16:24.370' AS DateTime), CAST(N'2022-11-02T12:00:00.000' AS DateTime), 1, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (17, NULL, CAST(N'2022-10-29T13:04:25.423' AS DateTime), CAST(N'2022-10-29T13:04:25.423' AS DateTime), CAST(N'2022-11-02T12:00:00.000' AS DateTime), 5, N'[{"hoten":"Quynh nhu","socmt":"123321123","tuoi":"20","sodt":"0123443212"},{"hoten":"Huy","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (18, N'NhatHuy', CAST(N'2022-10-29T13:20:48.960' AS DateTime), CAST(N'2022-10-29T13:20:48.960' AS DateTime), CAST(N'2022-10-30T12:00:00.000' AS DateTime), 10, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (19, N'Minh Khoi', CAST(N'2022-10-30T22:16:33.517' AS DateTime), CAST(N'2022-11-01T12:00:00.000' AS DateTime), CAST(N'2022-11-05T12:00:00.000' AS DateTime), 17, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (20, N'khach', CAST(N'2022-10-30T22:21:23.193' AS DateTime), CAST(N'2022-11-03T12:00:00.000' AS DateTime), CAST(N'2022-11-05T12:00:00.000' AS DateTime), 19, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (21, N'khach', CAST(N'2022-10-30T22:21:23.193' AS DateTime), CAST(N'2022-11-03T12:00:00.000' AS DateTime), CAST(N'2022-11-05T12:00:00.000' AS DateTime), 16, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (22, N'khach', CAST(N'2022-10-30T22:21:23.193' AS DateTime), CAST(N'2022-11-03T12:00:00.000' AS DateTime), CAST(N'2022-11-05T12:00:00.000' AS DateTime), 18, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (23, N'Trung Hieu', CAST(N'2022-10-30T23:44:17.250' AS DateTime), CAST(N'2022-10-31T12:00:00.000' AS DateTime), CAST(N'2022-11-03T12:00:00.000' AS DateTime), 2, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (24, N'Trung Hieu', CAST(N'2022-10-30T23:44:17.250' AS DateTime), CAST(N'2022-10-31T12:00:00.000' AS DateTime), CAST(N'2022-11-03T12:00:00.000' AS DateTime), 4, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (25, N'Quynh Nhu', CAST(N'2022-10-31T00:22:25.370' AS DateTime), CAST(N'2022-10-31T12:00:00.000' AS DateTime), CAST(N'2022-11-01T12:00:00.000' AS DateTime), 11, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (26, N'Quynh Nhu', CAST(N'2022-10-31T00:22:54.707' AS DateTime), CAST(N'2022-11-01T12:00:00.000' AS DateTime), CAST(N'2022-11-05T12:00:00.000' AS DateTime), 1, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (27, N'Quynh Nhu', CAST(N'2022-11-12T10:59:49.617' AS DateTime), CAST(N'2022-11-12T12:00:00.000' AS DateTime), CAST(N'2022-11-14T12:00:00.000' AS DateTime), 1, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (28, N'Quynh Nhu', CAST(N'2022-11-12T10:59:49.617' AS DateTime), CAST(N'2022-11-12T12:00:00.000' AS DateTime), CAST(N'2022-11-14T12:00:00.000' AS DateTime), 7, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (29, N'Trung Hieu', CAST(N'2022-11-12T11:00:38.467' AS DateTime), CAST(N'2022-11-13T12:00:00.000' AS DateTime), CAST(N'2022-11-15T12:00:00.000' AS DateTime), 13, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (30, N'Trung Hieu', CAST(N'2022-11-12T11:00:38.467' AS DateTime), CAST(N'2022-11-13T12:00:00.000' AS DateTime), CAST(N'2022-11-15T12:00:00.000' AS DateTime), 8, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (31, N'Nguyen Nguyen', CAST(N'2022-11-12T12:39:30.547' AS DateTime), CAST(N'2022-11-16T12:00:00.000' AS DateTime), CAST(N'2022-11-19T12:00:00.000' AS DateTime), 20, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (32, N'Nguyen Nguyen', CAST(N'2022-11-12T12:39:30.547' AS DateTime), CAST(N'2022-11-16T12:00:00.000' AS DateTime), CAST(N'2022-11-19T12:00:00.000' AS DateTime), 19, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (33, N'Nguyen Nguyen', CAST(N'2022-11-12T12:52:19.327' AS DateTime), CAST(N'2022-11-22T12:00:00.000' AS DateTime), CAST(N'2022-11-24T12:00:00.000' AS DateTime), 1, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (34, N'Nguyen Nguyen', CAST(N'2022-11-12T12:52:19.327' AS DateTime), CAST(N'2022-11-22T12:00:00.000' AS DateTime), CAST(N'2022-11-24T12:00:00.000' AS DateTime), 2, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (35, N'Quynh Nhu', CAST(N'2022-11-19T08:03:41.193' AS DateTime), CAST(N'2022-12-01T12:00:00.000' AS DateTime), CAST(N'2022-12-05T12:00:00.000' AS DateTime), 1, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (36, N'Quynh Nhu', CAST(N'2022-11-19T08:03:41.193' AS DateTime), CAST(N'2022-12-01T12:00:00.000' AS DateTime), CAST(N'2022-12-05T12:00:00.000' AS DateTime), 1, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (37, N'Nguyen Nguyen', CAST(N'2022-11-24T11:24:38.013' AS DateTime), CAST(N'2022-11-25T12:00:00.000' AS DateTime), CAST(N'2022-11-26T12:00:00.000' AS DateTime), 1, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (38, N'Nguyen Nguyen', CAST(N'2022-11-24T11:24:38.013' AS DateTime), CAST(N'2022-11-25T12:00:00.000' AS DateTime), CAST(N'2022-11-26T12:00:00.000' AS DateTime), 2, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (39, NULL, CAST(N'2022-11-27T14:33:29.917' AS DateTime), CAST(N'2022-11-27T14:33:29.917' AS DateTime), CAST(N'2022-11-29T12:00:00.000' AS DateTime), 2, N'[{"hoten":"Minh Khôi","socmt":"2380808088","tuoi":"21","sodt":"0987786545"}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (40, N'Minh Khoi', CAST(N'2022-12-02T23:02:44.120' AS DateTime), CAST(N'2022-12-21T12:00:00.000' AS DateTime), CAST(N'2022-12-30T12:00:00.000' AS DateTime), 1, NULL, 1)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (41, N'Minh Khoi', CAST(N'2022-12-02T23:03:43.377' AS DateTime), CAST(N'2022-12-07T12:00:00.000' AS DateTime), CAST(N'2022-12-14T12:00:00.000' AS DateTime), 3, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (42, N'Minh Khoi', CAST(N'2022-12-02T23:21:53.743' AS DateTime), CAST(N'2022-12-02T12:00:00.000' AS DateTime), CAST(N'2022-12-06T12:00:00.000' AS DateTime), 3, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 2)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (43, N'Trung Hieu', CAST(N'2022-12-03T13:24:31.077' AS DateTime), CAST(N'2022-12-04T12:00:00.000' AS DateTime), CAST(N'2022-12-07T12:00:00.000' AS DateTime), 1, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (44, N'Trung Hieu', CAST(N'2022-12-03T13:24:31.077' AS DateTime), CAST(N'2022-12-04T12:00:00.000' AS DateTime), CAST(N'2022-12-07T12:00:00.000' AS DateTime), 2, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (45, N'Quynh Nhu', CAST(N'2022-12-03T13:34:07.853' AS DateTime), CAST(N'2022-12-14T12:00:00.000' AS DateTime), CAST(N'2022-12-17T12:00:00.000' AS DateTime), 1, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (46, N'Quynh Nhu', CAST(N'2022-12-03T13:34:07.853' AS DateTime), CAST(N'2022-12-14T12:00:00.000' AS DateTime), CAST(N'2022-12-17T12:00:00.000' AS DateTime), 2, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (47, N'Quynh Nhu', CAST(N'2022-12-03T14:02:19.350' AS DateTime), CAST(N'2022-12-03T12:00:00.000' AS DateTime), CAST(N'2022-12-05T12:00:00.000' AS DateTime), 5, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 2)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (48, N'Quynh Nhu', CAST(N'2022-12-03T14:02:19.350' AS DateTime), CAST(N'2022-12-03T12:00:00.000' AS DateTime), CAST(N'2022-12-05T12:00:00.000' AS DateTime), 6, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null}]', 2)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (49, N'Quynh Nhu', CAST(N'2022-12-03T14:02:19.350' AS DateTime), CAST(N'2022-12-03T12:00:00.000' AS DateTime), CAST(N'2022-12-05T12:00:00.000' AS DateTime), 7, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (50, N'Quynh Nhu', CAST(N'2022-12-03T14:10:53.713' AS DateTime), CAST(N'2022-12-03T12:00:00.000' AS DateTime), CAST(N'2022-12-04T12:00:00.000' AS DateTime), 13, NULL, 3)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (51, N'Quynh Nhu', CAST(N'2022-12-11T12:23:22.797' AS DateTime), CAST(N'2022-12-11T12:00:00.000' AS DateTime), CAST(N'2022-12-14T12:00:00.000' AS DateTime), 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[tblPhieuDatPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPhong] ON 

INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (1, N'101', 1, 1, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (2, N'102', 1, 1, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (3, N'103', 1, 1, 2)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (4, N'104', 2, 1, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (5, N'105', 2, 1, 2)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (6, N'106', 3, 1, 2)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (7, N'201', 1, 2, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (8, N'202', 1, 2, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (9, N'203', 1, 2, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (10, N'204', 2, 2, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (11, N'205', 2, 2, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (12, N'206', 3, 2, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (13, N'301', 1, 3, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (14, N'302', 1, 3, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (15, N'303', 1, 3, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (16, N'304', 2, 3, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (17, N'305', 2, 3, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (18, N'306', 3, 3, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (19, N'12', 1, 3, 5)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (20, N'13', 1, 3, 3)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (26, N'307', 1, 3, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (27, N'101', 1, 1, 5)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (28, N'101', 1, 1, 5)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (29, N'2002', 1, 1, 5)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (31, N'123', 1, 1, 5)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (36, N'1011', 1, 1, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (39, N'107', 1, 1, 1)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang]) VALUES (41, N'110', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tblPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTang] ON 

INSERT [dbo].[tblTang] ([ma_tang], [ten_tang]) VALUES (1, N'Tầng 1')
INSERT [dbo].[tblTang] ([ma_tang], [ten_tang]) VALUES (2, N'Tầng 2')
INSERT [dbo].[tblTang] ([ma_tang], [ten_tang]) VALUES (3, N'Tầng 3')
INSERT [dbo].[tblTang] ([ma_tang], [ten_tang]) VALUES (7, N'Tầng 4')
SET IDENTITY_INSERT [dbo].[tblTang] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTinhTrangHoaDon] ON 

INSERT [dbo].[tblTinhTrangHoaDon] ([ma_tinh_trang], [mo_ta]) VALUES (1, N'Chưa thanh toán')
INSERT [dbo].[tblTinhTrangHoaDon] ([ma_tinh_trang], [mo_ta]) VALUES (2, N'Đã thanh toán')
SET IDENTITY_INSERT [dbo].[tblTinhTrangHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTinhTrangPhieuDatPhong] ON 

INSERT [dbo].[tblTinhTrangPhieuDatPhong] ([ma_tinh_trang], [tinh_trang]) VALUES (1, N'Đang đặt')
INSERT [dbo].[tblTinhTrangPhieuDatPhong] ([ma_tinh_trang], [tinh_trang]) VALUES (2, N'Đã nhận')
INSERT [dbo].[tblTinhTrangPhieuDatPhong] ([ma_tinh_trang], [tinh_trang]) VALUES (3, N'Đã hủy')
INSERT [dbo].[tblTinhTrangPhieuDatPhong] ([ma_tinh_trang], [tinh_trang]) VALUES (4, N'Đã thanh toán')
SET IDENTITY_INSERT [dbo].[tblTinhTrangPhieuDatPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTinhTrangPhong] ON 

INSERT [dbo].[tblTinhTrangPhong] ([ma_tinh_trang], [mo_ta]) VALUES (1, N'Trống')
INSERT [dbo].[tblTinhTrangPhong] ([ma_tinh_trang], [mo_ta]) VALUES (2, N'Đang sử dụng')
INSERT [dbo].[tblTinhTrangPhong] ([ma_tinh_trang], [mo_ta]) VALUES (3, N'Đang dọn')
INSERT [dbo].[tblTinhTrangPhong] ([ma_tinh_trang], [mo_ta]) VALUES (4, N'Đang bảo trì')
INSERT [dbo].[tblTinhTrangPhong] ([ma_tinh_trang], [mo_ta]) VALUES (5, N'Dừng sử dụng')
SET IDENTITY_INSERT [dbo].[tblTinhTrangPhong] OFF
GO
ALTER TABLE [dbo].[tblDichVuDaDat]  WITH CHECK ADD  CONSTRAINT [fk_ma_dv] FOREIGN KEY([ma_dv])
REFERENCES [dbo].[tblDichVu] ([ma_dv])
GO
ALTER TABLE [dbo].[tblDichVuDaDat] CHECK CONSTRAINT [fk_ma_dv]
GO
ALTER TABLE [dbo].[tblDichVuDaDat]  WITH CHECK ADD  CONSTRAINT [fk_ma_hd] FOREIGN KEY([ma_hd])
REFERENCES [dbo].[tblHoaDon] ([ma_hd])
GO
ALTER TABLE [dbo].[tblDichVuDaDat] CHECK CONSTRAINT [fk_ma_hd]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_ma_nv] FOREIGN KEY([ma_nv])
REFERENCES [dbo].[tblNhanVien] ([ma_nv])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [fk_ma_nv]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_ma_pdp] FOREIGN KEY([ma_pdp])
REFERENCES [dbo].[tblPhieuDatPhong] ([ma_pdp])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [fk_ma_pdp]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_ma_tthd] FOREIGN KEY([ma_tinh_trang])
REFERENCES [dbo].[tblTinhTrangHoaDon] ([ma_tinh_trang])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [fk_ma_tthd]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [fk_ma_cv] FOREIGN KEY([ma_chuc_vu])
REFERENCES [dbo].[tblChucVu] ([ma_chuc_vu])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [fk_ma_cv]
GO
ALTER TABLE [dbo].[tblPhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_tgd_ma_kh2] FOREIGN KEY([ma_kh])
REFERENCES [dbo].[tblKhachHang] ([ma_kh])
GO
ALTER TABLE [dbo].[tblPhieuDatPhong] CHECK CONSTRAINT [fk_tgd_ma_kh2]
GO
ALTER TABLE [dbo].[tblPhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_tgd_ma_phong_2] FOREIGN KEY([ma_phong])
REFERENCES [dbo].[tblPhong] ([ma_phong])
GO
ALTER TABLE [dbo].[tblPhieuDatPhong] CHECK CONSTRAINT [fk_tgd_ma_phong_2]
GO
ALTER TABLE [dbo].[tblPhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_tgd_tt_2] FOREIGN KEY([ma_tinh_trang])
REFERENCES [dbo].[tblTinhTrangPhieuDatPhong] ([ma_tinh_trang])
GO
ALTER TABLE [dbo].[tblPhieuDatPhong] CHECK CONSTRAINT [fk_tgd_tt_2]
GO
ALTER TABLE [dbo].[tblPhong]  WITH CHECK ADD  CONSTRAINT [fk_ma_lp] FOREIGN KEY([loai_phong])
REFERENCES [dbo].[tblLoaiPhong] ([loai_phong])
GO
ALTER TABLE [dbo].[tblPhong] CHECK CONSTRAINT [fk_ma_lp]
GO
ALTER TABLE [dbo].[tblPhong]  WITH CHECK ADD  CONSTRAINT [fk_ma_tang] FOREIGN KEY([ma_tang])
REFERENCES [dbo].[tblTang] ([ma_tang])
GO
ALTER TABLE [dbo].[tblPhong] CHECK CONSTRAINT [fk_ma_tang]
GO
ALTER TABLE [dbo].[tblPhong]  WITH CHECK ADD  CONSTRAINT [fk_ma_tt_2] FOREIGN KEY([ma_tinh_trang])
REFERENCES [dbo].[tblTinhTrangPhong] ([ma_tinh_trang])
GO
ALTER TABLE [dbo].[tblPhong] CHECK CONSTRAINT [fk_ma_tt_2]
GO
ALTER TABLE [dbo].[tblTinNhan]  WITH CHECK ADD  CONSTRAINT [fk_tin_nhan] FOREIGN KEY([ma_kh])
REFERENCES [dbo].[tblKhachHang] ([ma_kh])
GO
ALTER TABLE [dbo].[tblTinNhan] CHECK CONSTRAINT [fk_tin_nhan]
GO
USE [master]
GO
ALTER DATABASE [dataQLKS] SET  READ_WRITE 
GO
