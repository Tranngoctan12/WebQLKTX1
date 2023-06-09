USE [master]
GO
/****** Object:  Database [QUAN_LY_KTX]    Script Date: 08-May-23 8:27:36 PM ******/
CREATE DATABASE [QUAN_LY_KTX]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUAN_LY_KTX', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QUAN_LY_KTX.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUAN_LY_KTX_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QUAN_LY_KTX_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QUAN_LY_KTX] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUAN_LY_KTX].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUAN_LY_KTX] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUAN_LY_KTX] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUAN_LY_KTX] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUAN_LY_KTX] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUAN_LY_KTX] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUAN_LY_KTX] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUAN_LY_KTX] SET  MULTI_USER 
GO
ALTER DATABASE [QUAN_LY_KTX] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUAN_LY_KTX] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUAN_LY_KTX] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUAN_LY_KTX] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QUAN_LY_KTX] SET QUERY_STORE = ON
GO
ALTER DATABASE [QUAN_LY_KTX] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QUAN_LY_KTX]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 08-May-23 8:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[mahd] [int] IDENTITY(1,1) NOT NULL,
	[ngaytao] [datetime] NOT NULL,
	[maphong] [int] NOT NULL,
	[tiendiennuoc] [float] NULL,
	[tongtien] [float] NULL,
	[tienphong] [float] NULL,
	[tenhs] [nvarchar](50) NULL,
	[tennv] [nvarchar](50) NULL,
	[maphieudiennuoc] [int] NOT NULL,
 CONSTRAINT [PK__HOADON__981D1EB23CD73055] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 08-May-23 8:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[mahs] [int] IDENTITY(1,1) NOT NULL,
	[maphong] [int] NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[ngaysinh] [datetime] NULL,
	[quequan] [nvarchar](100) NULL,
	[gioitinh] [bit] NOT NULL,
	[ttphuhuynh] [nvarchar](150) NULL,
	[lop] [nvarchar](30) NULL,
 CONSTRAINT [PK__HOCSINH__7A2100A91276970E] PRIMARY KEY CLUSTERED 
(
	[mahs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH_NEW]    Script Date: 08-May-23 8:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH_NEW](
	[mahs] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [datetime] NULL,
	[quequan] [nvarchar](100) NULL,
	[gioitinh] [bit] NULL,
	[ttphuhuynh] [nvarchar](150) NULL,
	[lop] [nvarchar](30) NULL,
 CONSTRAINT [PK_HOCSINH_NEW] PRIMARY KEY CLUSTERED 
(
	[mahs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH_OLD]    Script Date: 08-May-23 8:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH_OLD](
	[mahs] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [datetime] NULL,
	[quequan] [nvarchar](100) NULL,
	[gioitinh] [bit] NULL,
	[ttphuhuynh] [nvarchar](150) NULL,
	[lop] [nvarchar](30) NULL,
 CONSTRAINT [PK_HOCSINH_OLD] PRIMARY KEY CLUSTERED 
(
	[mahs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_DIENNUOC]    Script Date: 08-May-23 8:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_DIENNUOC](
	[maphieu] [int] IDENTITY(1,1) NOT NULL,
	[ngaytaophieu] [datetime] NULL,
	[maphong] [int] NOT NULL,
	[sodien] [int] NULL,
	[sonuoc] [int] NULL,
	[giadien] [int] NULL,
	[gianuoc] [int] NULL,
	[tongtien] [float] NULL,
 CONSTRAINT [PK__PHIEU_DI__A72B518548848E65] PRIMARY KEY CLUSTERED 
(
	[maphieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 08-May-23 8:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[maphong] [int] IDENTITY(1,1) NOT NULL,
	[tenphong] [nvarchar](50) NOT NULL,
	[tsogiuong] [int] NOT NULL,
	[tang] [int] NULL,
	[tinhtrang] [bit] NULL,
 CONSTRAINT [PK__PHONG__BBA25480B37DBAB9] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 08-May-23 8:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[matk] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[email] [nvarchar](100) NOT NULL,
	[pass] [nvarchar](100) NOT NULL,
	[cvu] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[matk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VATTU]    Script Date: 08-May-23 8:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VATTU](
	[mavt] [int] IDENTITY(1,1) NOT NULL,
	[tenvattu] [nvarchar](100) NULL,
	[soluong] [int] NULL,
	[giatien] [float] NULL,
 CONSTRAINT [PK__VATTU__7A208E5D08B15BC7] PRIMARY KEY CLUSTERED 
(
	[mavt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VATTU_PHONG]    Script Date: 08-May-23 8:27:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VATTU_PHONG](
	[ID] [int] NOT NULL,
	[maphong] [int] NOT NULL,
	[mavt] [int] NOT NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_VATTU_PHONG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HOCSINH] ON 

INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (2, 1, N'Nguyễn Văn A', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'HN', 0, N'NO', N'60K1 - CNTT')
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (3, 1, N'Nguyễn Văn B', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'HN', 1, N'NO', N'60K2-CNTT')
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (4, 1, N'Nguyễn Văn C', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'HN', 0, N'NO', N'60K2-CNTT')
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (5, 1, N'Nguyễn Văn D', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'BG', 1, N'NO', N'60K2-CNTT')
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (6, 2, N'Trần Vỹ', CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'TN', 1, N'No', N'60K3-CNTT')
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (7, 2, N'Nguyễn Nhi', CAST(N'1998-12-01T00:00:00.000' AS DateTime), N'HN', 1, N'No', N'60K2-CNTT')
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (8, 3, N'Hồng Nhung', CAST(N'1990-02-03T00:00:00.000' AS DateTime), N'Hà Nam', 0, N'NO', N'60K3-CNTT')
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (9, 3, N'Thúy Anh', CAST(N'2001-02-02T00:00:00.000' AS DateTime), N'Hà Nội', 0, NULL, N'60K3-CNTT')
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (10, 3, N'Phú Mỹ', CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'Hà Tĩnh', 1, NULL, N'60K1-CNTT')
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (13, 4, N'Nguyễn Hà', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'Hà Nam', 0, NULL, N'60K1-CNTT')
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (16, 4, N'Thế Anh', CAST(N'2000-02-09T00:00:00.000' AS DateTime), N'Nghệ An', 1, NULL, N'60K3-CNTT')
SET IDENTITY_INSERT [dbo].[HOCSINH] OFF
GO
SET IDENTITY_INSERT [dbo].[HOCSINH_NEW] ON 

INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (1, N'hs mới 1', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'9a')
INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (2, N'hs mới 232', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'9a')
INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (3, N'hs mới 3', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'9a')
INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (4, N'hs mới 4', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'9a')
INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (5, N'hs mới 5', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'9a')
INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (6, N'The Anh', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'54', 1, N's', N's')
SET IDENTITY_INSERT [dbo].[HOCSINH_NEW] OFF
GO
SET IDENTITY_INSERT [dbo].[HOCSINH_OLD] ON 

INSERT [dbo].[HOCSINH_OLD] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (1, N'hs cũ 1', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'no')
INSERT [dbo].[HOCSINH_OLD] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (2, N'hs cũ 2', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'no')
INSERT [dbo].[HOCSINH_OLD] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (3, N'hs cũ 3', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'no')
INSERT [dbo].[HOCSINH_OLD] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (4, N'hs cũ 45', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'no')
INSERT [dbo].[HOCSINH_OLD] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (5, N'hs cũ 33', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'no')
SET IDENTITY_INSERT [dbo].[HOCSINH_OLD] OFF
GO
SET IDENTITY_INSERT [dbo].[PHONG] ON 

INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (1, N'Phòng 101', 8, 1, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (2, N'Phòng 102', 8, 1, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (3, N'Phòng 103', 8, 1, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (4, N'Phòng 104', 6, 1, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (6, N'Phòng 201', 6, 1, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (7, N'Phòng 202', 5, 2, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (8, N'Phòng 203', 5, 2, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (9, N'Phòng 204', 7, 2, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (10, N'Phòng 301', 6, 2, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (11, N'Phòng 302', 8, 2, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (12, N'Phòng 303', 7, 3, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (13, N'Phòng 304', 8, 3, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (14, N'Phòng 401', 7, 3, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (15, N'Phòng 402', 5, 3, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (16, N'Phòng 403', 5, 3, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (17, N'Phòng 404', 7, 4, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (18, N'Phòng 501', 8, 4, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (19, N'Phòng 502', 7, 4, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (20, N'Phòng 503', 5, 4, 1)
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (21, N'Phòng 504', 5, 4, 1)
SET IDENTITY_INSERT [dbo].[PHONG] OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([matk], [hoten], [email], [pass], [cvu]) VALUES (1, N'Anthony', N'nam@gmail.com', N'123456', N'ADMIN4')
INSERT [dbo].[TAIKHOAN] ([matk], [hoten], [email], [pass], [cvu]) VALUES (2, N'Nhung', N'nhung12@gmail.com', N'123456', N'Học sinh')
INSERT [dbo].[TAIKHOAN] ([matk], [hoten], [email], [pass], [cvu]) VALUES (3, N'Nguyễn Thảo', N'thao97@gmail.com', N'123456', N'Nhân viên')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
SET IDENTITY_INSERT [dbo].[VATTU] ON 

INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (1, N'Bàn ', 12, 120000)
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (2, N'Giường', 123, 450000)
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (3, N'Tủ', 32, 345000)
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (4, N'Ghế', 76, 65000)
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (5, N'Điều hòa', 43, 2300000)
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (6, N'Máy giặt ', 56, 5600000)
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (8, N'máy tính', 4, 456)
SET IDENTITY_INSERT [dbo].[VATTU] OFF
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_ngayhoadon]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[PHIEU_DIENNUOC] ADD  CONSTRAINT [DF_PHIEU_DIENNUOC_ngaytaophieu]  DEFAULT (getdate()) FOR [ngaytaophieu]
GO
ALTER TABLE [dbo].[VATTU_PHONG] ADD  CONSTRAINT [DF_VATTU_PHONG_soluong]  DEFAULT ((1)) FOR [soluong]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk_dn_1] FOREIGN KEY([maphieudiennuoc])
REFERENCES [dbo].[PHIEU_DIENNUOC] ([maphieu])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk_dn_1]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_PHONG] FOREIGN KEY([maphong])
REFERENCES [dbo].[PHONG] ([maphong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_PHONG]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [fk_ii_1] FOREIGN KEY([maphong])
REFERENCES [dbo].[PHONG] ([maphong])
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [fk_ii_1]
GO
ALTER TABLE [dbo].[PHIEU_DIENNUOC]  WITH CHECK ADD  CONSTRAINT [fk_p_2] FOREIGN KEY([maphong])
REFERENCES [dbo].[PHONG] ([maphong])
GO
ALTER TABLE [dbo].[PHIEU_DIENNUOC] CHECK CONSTRAINT [fk_p_2]
GO
ALTER TABLE [dbo].[VATTU_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_VATTU_PHONG_PHONG] FOREIGN KEY([maphong])
REFERENCES [dbo].[PHONG] ([maphong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VATTU_PHONG] CHECK CONSTRAINT [FK_VATTU_PHONG_PHONG]
GO
ALTER TABLE [dbo].[VATTU_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_VATTU_PHONG_VATTU] FOREIGN KEY([mavt])
REFERENCES [dbo].[VATTU] ([mavt])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VATTU_PHONG] CHECK CONSTRAINT [FK_VATTU_PHONG_VATTU]
GO
USE [master]
GO
ALTER DATABASE [QUAN_LY_KTX] SET  READ_WRITE 
GO
