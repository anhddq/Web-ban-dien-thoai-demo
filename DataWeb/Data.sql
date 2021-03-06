USE QuanLyBanHang
GO
/****** Object:  Database [QuanLyBanHang]    Script Date: 18/11/2018 22:33:54 ******/
CREATE DATABASE [QuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLyBanHang.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLyBanHang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyBanHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyBanHang]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 18/11/2018 22:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](500) NULL,
	[MatKhau] [nvarchar](500) NULL,
	[TenAdmin] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 18/11/2018 22:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDT] [int] NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [nchar](10) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC,
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 18/11/2018 22:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[MaDT] [int] IDENTITY(1,1) NOT NULL,
	[TenDT] [nvarchar](50) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[Mota] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](50) NULL,
	[NgayCapNhap] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLDT] [int] NULL,
	[Moi] [int] NULL,
 CONSTRAINT [PK_DienThoai_1] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 18/11/2018 22:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [nvarchar](100) NULL,
	[TinhTrangGiaoHang] [nvarchar](100) NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[MaKH] [int] NULL,
	[DiaChi] [nvarchar](500) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 18/11/2018 22:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[DienThoai] [varchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiDienThoai]    Script Date: 18/11/2018 22:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDienThoai](
	[MaLDT] [int] IDENTITY(1,1) NOT NULL,
	[TenLDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_DienThoai] PRIMARY KEY CLUSTERED 
(
	[MaLDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 18/11/2018 22:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NoiXuatXu]    Script Date: 18/11/2018 22:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiXuatXu](
	[MaXuatXu] [int] IDENTITY(1,1) NOT NULL,
	[NoiXuatXu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NoiXuatXu] PRIMARY KEY CLUSTERED 
(
	[MaXuatXu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThamGia]    Script Date: 18/11/2018 22:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamGia](
	[MaDT] [int] NOT NULL,
	[MaNSX] [int] NOT NULL,
	[VaiTro] [nvarchar](50) NULL,
	[ViTri] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThamGia] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC,
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [TenDangNhap], [MatKhau], [TenAdmin]) VALUES (1, N'admin', N'admin123', N'Lê Văn Thanh')
INSERT [dbo].[Admin] ([Id], [TenDangNhap], [MatKhau], [TenAdmin]) VALUES (2, N'asd', N'123', N'123')
SET IDENTITY_INSERT [dbo].[Admin] off
SET IDENTITY_INSERT [dbo].[DienThoai] ON 

INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (2, N'IPhone 7', CAST(1200000 AS Decimal(18, 0)), N'<p>iPhone 7 c&oacute; thiết kế giống với iPhone 6s (v&agrave; iPhone 6 trước đ&oacute;) với th&acirc;n kim loại bo tr&ograve;n. Nhưng điểm mới trong thiết kế của điện thoại n&agrave;y l&agrave; khả năng chống nước đạt chuẩn IP67, nghĩa l&agrave; n&oacute; c&oacute; thể trụ được 30 ph&uacute;t dưới nước ở độ s&acirc;u 1 m&eacute;t. C&aacute;c chi tiết mới đ&aacute;ng kể nữa trong thiết kế l&agrave; vị tr&iacute; dải ăng ten thay đổi, hiện nằm ở s&aacute;t ph&iacute;a tr&ecirc;n v&agrave; dưới mặt lưng khiến iPhone mới tr&ocirc;ng tho&aacute;ng đạt hơn. iPhone 7 c&oacute; th&ecirc;m lựa chọn m&agrave;u đen b&oacute;ng v&agrave; đen nh&aacute;m lạ mắt c&ugrave;ng với c&aacute;c lựa chọn m&agrave;u cũ l&agrave; v&agrave;ng, v&agrave;ng hồng v&agrave; bạc.</p>', N'001.jpg', CAST(N'2018-11-17 00:00:00.000' AS DateTime), 21, 1, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (3, N'IPhone 6 plus', CAST(1200000 AS Decimal(18, 0)), N'<p>2017 l&agrave; dấu mốc quan trọng trong qu&aacute; tr&igrave;nh ph&aacute;t triển của Apple bởi đ&acirc;y năm l&agrave; dịp kỉ niệm sinh nhật 10 tuổi d&ograve;ng iPhone. Nếu theo đ&uacute;ng logic, T&aacute;o khuyết sẽ tung ra hai sản phẩm mới l&agrave; iPhone 7s v&agrave; 7s Plus, tuy nhi&ecirc;n, nếu chỉ ra mắt bộ đ&ocirc;i iPhone "s" &iacute;t c&oacute; thay đổi trong thiết kế sẽ kh&oacute; l&ograve;ng thỏa m&atilde;n sự tr&ocirc;ng ng&oacute;ng của c&aacute;c iFan suốt nhiều năm qua, v&igrave; vậy, nhiều khả năng nh&agrave; T&aacute;o sẽ ph&aacute;t h&agrave;nh k&egrave;m theo một phi&ecirc;n bản iPhone 8 "Ferrari" với thiết kế k&iacute;nh nguy&ecirc;n khối mới.</p>', N'003.jpg', CAST(N'2017-08-20 00:00:00.000' AS DateTime), 20, 1, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (4, N'SamSung Galaly A3', CAST(7000000 AS Decimal(18, 0)), N'<p>Galaxy A3 (2017) sản phẩm mới Samsung vừa mới ra mắt, c&oacute; nhiều thay đổi lớn như cấu h&igrave;nh, pin v&agrave; nhiều trải nghiệm mới so với người anh em Galaxy A3 (2016).</p>', N'007.jpg', CAST(N'2017-05-10 00:00:00.000' AS DateTime), 15, 2, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (5, N'SamSung Galaxy A7', CAST(8000000 AS Decimal(18, 0)), N'<p>Samsung Galaxy A7 (2017) tạo bước đột ph&aacute; cho d&ograve;ng A với thiết kế sang trọng v&agrave; đẳng cấp, cấu h&igrave;nh mạnh mẽ, nhiều tiện &iacute;ch cao cấp.</p>', N'010.jpg', CAST(N'2017-07-02 00:00:00.000' AS DateTime), 17, 2, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (24, N'IPhone 6', CAST(9000000 AS Decimal(18, 0)), N'<p class="MsoNormal" style="margin-bottom: 12.0pt; text-align: justify; line-height: 22.5pt; mso-outline-level: 3;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman''; color: black;">M&agrave;n h&igrave;nh của phi&ecirc;n bản 4.7 inch được trang bị k&iacute;nh cường lực với thiết kế cong ở c&aacute;c m&eacute;p để trải nghiệm qu&eacute;t tay tr&ecirc;n m&agrave;n h&igrave;nh th&uacute; vị hơn. M&agrave;n h&igrave;nh của m&aacute;y vẫn l&agrave; m&agrave;n h&igrave;nh IPS LCD độ ph&acirc;n giải "Retina HD" 1334 x 750 pixel v&agrave; cho mật độ điểm ảnh 326 PPI.</span></p>
<p class="MsoNormal" style="margin-bottom: 12.0pt; text-align: justify; line-height: 22.5pt; mso-outline-level: 3;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman''; color: black;">Camera iSight 8MP vẫn được sử dụng tr&ecirc;n iPhone mới. Apple cho biết cảm biến m&aacute;y ảnh lớn hơn một ch&uacute;t, hỗ trợ lấy n&eacute;t tự động theo pha v&agrave; ống k&iacute;nh khẩu f/2.2. Kh&ocirc;ng c&oacute; t&iacute;nh năng chống rung quang học (OIS), camera của iPhone mới dựa tr&ecirc;n ổn định h&igrave;nh ảnh số. Đ&aacute;ng ch&uacute; &yacute;, camera của m&aacute;y c&oacute; thể chụp ảnh rộng panorama tới 43MP.</span></p>', N'004.jpg', CAST(N'2018-11-10 00:00:00.000' AS DateTime), 15, 1, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (25, N'ViVo V7', CAST(4500000 AS Decimal(18, 0)), N'<p style="margin: 0cm; margin-bottom: .0001pt; text-align: justify; line-height: 15.6pt; mso-outline-level: 3;"><span style="color: black; mso-themecolor: text1; mso-bidi-font-weight: bold;">Chiếc&nbsp;<a title="Tham khảo c&aacute;c d&ograve;ng điện thoại Vivo ch&iacute;nh h&atilde;ng" href="https://www.thegioididong.com/dtdd-vivo" target="_blank" type="Tham khảo c&aacute;c d&ograve;ng điện thoại Vivo ch&iacute;nh h&atilde;ng"><span style="color: black; mso-themecolor: text1;"><span style="text-decoration-line: none;">điện thoại Vivo</span></span></a>&nbsp;vẫn mang trong m&igrave;nh khung viền chắc chắn, c&aacute;c g&oacute;c cạnh được l&agrave;m kh&aacute; vu&ocirc;ng vức đem lại sự nam t&iacute;nh v&agrave; cuốn h&uacute;t cho thiết bị.</span></p>
<p style="text-align: start; line-height: 15.6pt; mso-outline-level: 3; margin-block-start: 0px; margin-block-end: 0px; text-rendering: geometricprecision; margin: 7.5pt 0cm 7.5pt 0cm;"><span style="color: black; mso-themecolor: text1; mso-bidi-font-weight: bold;">Điểm ấn tượng tr&ecirc;n&nbsp;V7 Plus l&agrave; tỉ lệ m&agrave;n h&igrave;nh cao hơn c&ugrave;ng c&aacute;c bezels mỏng ở 4 cạnh tương tự như chiếc flagship Galaxy Note 8 mới ra mắt của Samsung.</span></p>', N'006.jpg', CAST(N'2018-11-04 00:00:00.000' AS DateTime), 25, 1006, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (26, N'IPhone XS', CAST(25000000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: #333333; background: white;">iPhone XS v&agrave; iPhone XS Max đều được trang bị vi xử l&yacute; Apple A12 Bionic dựa tr&ecirc;n tiến tr&igrave;nh 7nm mạnh mẽ nhất hiện nay. A12 Bionic gồm CPU 6 l&otilde;i, trong đ&oacute; 2 l&otilde;i hiệu năng v&agrave; 2 l&otilde;i hiệu quả, một GPU 4 nh&acirc;n c&oacute; hiệu năng gấp 50% so với A11 v&agrave; đặc biệt l&agrave; con chip AI ri&ecirc;ng biệt để thực hiện c&aacute;c t&aacute;c vụ học m&aacute;y th&ocirc;ng minh, hiện đại.</span></p>', N'015.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 10, 1, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (27, N'SamSung J8', CAST(5000000 AS Decimal(18, 0)), N'<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: #333333; background: white;">Galaxy J8 chắc chắn l&agrave; chiếc điện thoại c&oacute; camera đ&aacute;ng gờm nhất trong ph&acirc;n kh&uacute;c, đặc biệt l&agrave; khả năng chụp đ&ecirc;m khi mang tr&ecirc;n m&igrave;nh cụm camera k&eacute;p th&ocirc;ng số v&ocirc; c&ugrave;ng chất lượng. Hai cảm biến camera sau 16MP f/1.7 + 5MP f/1.9 đều c&oacute; khẩu độ cực lớn, thu s&aacute;ng tốt trong cả những điều kiện khắc nghiệt, mang đến cho bạn những bức ảnh chụp đ&ecirc;m tuyệt vời.</span></p>', N'21.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 15, 2, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (28, N'IPhone 8', CAST(18000000 AS Decimal(18, 0)), N'<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: black; mso-themecolor: text1; background: white;">iPhone 8 c&oacute; thiết kế giống với iPhone 7 với th&acirc;n kim loại bo tr&ograve;n. Điểm kh&aacute;c biệt với iPhone 7 l&agrave; m&aacute;y được trang bị 2 mặt k&iacute;nh tương tự như tr&ecirc;n iPhone 4 v&agrave; 4S. Việc sử dụng k&iacute;nh sẽ gi&uacute;p Apple khả thi trong việc đưa t&iacute;nh năng sạc kh&ocirc;ng d&acirc;y lần đầu ti&ecirc;n xuất hiện tr&ecirc;n c&aacute;c thiết bị iOS, v&agrave; iPhone 8 l&agrave; thiết bị đầu ti&ecirc;n sở hữu t&iacute;nh năng n&agrave;y. Ngo&agrave;i ra m&aacute;y vẫn được trang bị&nbsp;khả năng chống nước đạt chuẩn IP67 nghĩa l&agrave; n&oacute; c&oacute; thể trụ được 30 ph&uacute;t dưới nước ở độ s&acirc;u 1 m&eacute;t. C&aacute;c thiết kế vị tr&iacute; dải ăng ten kh&ocirc;ng thay đổi. M&aacute;y sẽ c&oacute; ba m&agrave;u sắc l&agrave; bạc, x&aacute;m v&agrave; v&agrave;ng.</span></p>', N'22.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 10, 1, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (29, N'SamSung Note 9', CAST(20000000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: black; mso-themecolor: text1;">Điểm th&uacute; vị nhất ở Galaxy Note 9 l&agrave; c&oacute; sự trợ gi&uacute;p của b&uacute;t S Pen thế hệ mới được t&iacute;ch hợp chức năng Bluetooth, cho ph&eacute;p bạn chụp ảnh từ xa bằng b&uacute;t, điều khiển trang tr&igrave;nh chiếu v&agrave; c&aacute;c ứng dụng từ xa.</span></p>', N'23.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 25, 2, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (30, N'Oppo F9', CAST(7190000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 13.0pt; line-height: 107%; font-family: ''Times New Roman'',serif;">L&agrave; chiếc điện thoại Oppo mới nhất sở hữu c&ocirc;ng nghệ sạc VOOC đ&ocirc;t ph&aacute;, Oppo F9 c&ograve;n được ưu &aacute;i nhiều t&iacute;nh năng nổi trội như thiết kế mặt lưng chuyển m&agrave;u độc đ&aacute;o, m&agrave;n h&igrave;nh tr&agrave;n viền giọt nước v&agrave; camera chụp ch&acirc;n dung t&iacute;ch hợp tr&iacute; tuệ nh&acirc;n tạo A.I ho&agrave;n hảo</span></p>', N'24.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 10, 4, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (31, N'Oppo A3S', CAST(3950000 AS Decimal(18, 0)), N'<p style="text-align: justify;">&nbsp;</p>
<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 13.0pt; line-height: 107%; font-family: ''Times New Roman'',serif;">Oppo A3S l&agrave; một chiếc smartphone gi&aacute; rẻ hiếm hoi tr&ecirc;n thị trường sở hữu những t&iacute;nh năng kh&aacute; hấp dẫn trong năm 2018 đ&oacute; l&agrave; camera k&eacute;p ở mặt lưng v&agrave; m&agrave;n h&igrave;nh tai thỏ ở mặt trước. Điểm ấn tượng đầu ti&ecirc;n tr&ecirc;n Oppo A3S ch&iacute;nh l&agrave; phần tai thỏ b&ecirc;n tr&ecirc;n m&agrave;n h&igrave;nh tương tụ như chiế Iphone X tới từ Apple</span></p>
<p>&nbsp;</p>
<p style="text-align: justify;">&nbsp;</p>', N'25.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 25, 4, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (32, N'Xiaomi 8 Lite', CAST(6690000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 13.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: black; mso-themecolor: text1; background: white;">Xiaomi Mi 8 Lite nổi bật với mặt lưng chế t&aacute;c bằng k&iacute;nh c&oacute; hiệu ứng m&agrave;u sắc gradient cho ph&eacute;p sắc m&agrave;u biến đổi theo g&oacute;c nh&igrave;n. Đ&acirc;y l&agrave; kết quả của c&ocirc;ng thức mạ nano nh&uacute;ng gương đang rất &ldquo;hot&rdquo; của c&aacute;c mẫu điện thoại Trung Quốc thời gian gần đ&acirc;y. Ta c&oacute; thể thấy thiết kế n&agrave;y tr&ecirc;n điện thoại&nbsp;</span><span style="font-size: 13.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: black; mso-themecolor: text1;"><a style="font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; outline: none; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; word-spacing: 0px;" href="https://hoanghamobile.com/huawei-p20-pro-chinh-hang-p12561.html"><span style="color: black; border: 1pt none windowtext; padding: 0cm; background: white;">Huawei P20</span></a><span style="background: white;"><span style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; float: none; word-spacing: 0px;">.</span></span></span></p>', N'26.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 15, 1005, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (33, N'Xiaomi Redmi 6', CAST(3088000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 10.5pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: black; background: white;">Tiếp bước Xiaomi Redmi 5, Xiaomi Redmi 6 được Xiaomi Digital World đưa v&agrave;o thị trường Việt Nam. Mặc d&ugrave;, kh&ocirc;ng chạy theo thiết kế tai thỏ của thời đại như SAMSUNG hay Huawei nhưng với thiết kế m&agrave;n h&igrave;nh 5,45&rdquo; tỉ lệ 18:9, độ ph&acirc;n giải HD+ 720x1440 pixels Xiaomi Redmi 6 cho người d&ugrave;ng cảm gi&aacute;c nhỏ gọn vừa tay, m&agrave;n h&igrave;nh tr&agrave;n viền v&agrave; độ ph&acirc;n giải HD+ mang đến những trải nghiệm tinh tế khi xem bạn video hay h&igrave;nh ảnh.</span></p>', N'27.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 10, 1005, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (34, N'Oppo F1S', CAST(2000000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: black; background: white;">Nh&igrave;n tổng quan th&igrave; Oppo F1s sẽ mang trong m&igrave;nh thiết kế tương tự như người an hem Oppo F1 Plus với chất liệu kim loại cao cấp. F1s cũng sẽ sở hữu cho m&igrave;nh phần viền m&agrave;n h&igrave;nh 2 b&ecirc;n si&ecirc;u mỏng với độ mỏng chỉ 1.55 mm</span></p>', N'28.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 30, 4, 23, 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (35, N'Oppo A37', CAST(3404000 AS Decimal(18, 0)), N'<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: black; background: white;">Thiết kế l&agrave; điểm cải tiến lớn nhất tr&ecirc;n Oppo A37 so với c&aacute;c th&ecirc; hệ Oppo Neo 5 v&agrave; Neo 7 đi trước, vẫn được l&agrave;m từ nhựa nhưng Oppo A37 đ&atilde; chắc chắn v&agrave; thời trang hơn c&aacute;c d&agrave;n anh của m&igrave;nh rất nhiều</span></p>', N'29.jpg', CAST(N'2018-11-10 00:00:00.000' AS DateTime), 25, 4, 23, 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (36, N'Iphone XS Max', CAST(27950000 AS Decimal(18, 0)), N'<p style="margin: 0cm; margin-bottom: .0001pt; text-align: justify; background: white; vertical-align: baseline;"><span style="color: #333333;">Vừa qua, Apple đ&atilde; ra mắt thế hệ iPhone mới với nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute;, đặc biệt l&agrave; k&iacute;ch thước lớn hơn cho trải nghiệm tốt hơn nhiều so với thế hệ trước. Hai thiết bị mới n&agrave;y c&oacute; t&ecirc;n gọi kh&aacute; giống với những g&igrave; đ&atilde; r&ograve; rỉ trước đ&oacute; l&agrave; iPhone XS v&agrave; XS Max v&agrave; ch&uacute;ng cũng sở hữu thiết kế ho&agrave;n to&agrave;n giống với chiếc Iphone X nhưng c&oacute; k&iacute;ch thước lớn hơn v&agrave; đặc biệt l&agrave; đ&atilde; được bổ sung th&ecirc;m m&agrave;u v&agrave;ng. Đặc biệt, iPhone XS Max kh&ocirc;ng chỉ c&oacute; k&iacute;ch thước lớn nhất từ trước đến giờ của Apple m&agrave; l&agrave; điện thoại c&oacute; m&agrave;n h&igrave;nh lớn nhất từ trước tới nay.</span></p>', N'30.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 10, 1, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (37, N'SamSung J7 Pro', CAST(6090000 AS Decimal(18, 0)), N'<h2 style="margin-top: 0cm; line-height: 15.6pt; text-align: justify;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; color: #333333;">Trong tầm gi&aacute; 6 triệu, Galaxy J7 Pro l&agrave; một trong những chiếc điện thoại&nbsp;đ&aacute;ng mua nhất, bởi sự ổn định khi lướt web, chơi game; thiết kế sang trọng giống d&ograve;ng S cũng như dung lượng pin tr&acirc;u l&ecirc;n tới 3600 mAh.</span></h2>
<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif;">&nbsp;</span></p>', N'31.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 10, 2, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (38, N'SamSung Galaxy J7', CAST(4588000 AS Decimal(18, 0)), N'<h2 style="margin-top: 0cm; text-align: justify; line-height: 15.6pt;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; color: #333333;">SamSung Galaxy J7 c&oacute; thiết kế kh&aacute; quen thuộc tr&ecirc;n d&ograve;ng điện thoại SamSung J Series, cộng với đ&oacute; l&agrave; cấu h&igrave;nh ổn định, camera tốt. Thiết kế đậm chất d&ograve;ng Galaxy J Series, Galaxy J7 sở hữu phong c&aacute;ch thiết kế đầy trẻ trung v&agrave; năng động, c&aacute;c cạnh m&aacute;y được bo tr&ograve;n c&ugrave;ng với viền giả kim loại mang lại cảm gi&aacute;c thoải m&aacute;i khi cầm tr&ecirc;n tay</span></h2>
<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif;">&nbsp;</span></p>', N'32.jpg', CAST(N'2018-11-10 00:00:00.000' AS DateTime), 15, 2, 23, 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (39, N'Nokia 3', CAST(3050000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: black; mso-themecolor: text1; background: white;">Nokia 3 sở hữu thiết kế tốt so với tầm gi&aacute;, phần khung nh&ocirc;m đem lại cảm gi&aacute;c rất cứng c&aacute;p. Sự kết hợp giữa viền nh&ocirc;m v&agrave; mặt lưng bằng nhựa polycarbonate c&ugrave;ng mặt k&iacute;nh cong 2.5D c&oacute; thể khiến nhiều người li&ecirc;n tưởng tới chiếc Lumia 925 trước đ&acirc;y, một trong những thiết bị đẹp nhất của d&ograve;ng Lumia.</span> Khi nh&igrave;n kỹ v&agrave;o c&aacute;c chi tiết th&igrave; Nokia 3 vẫn cho thấy khả năng gia c&ocirc;ng tốt. Khe Micro USB v&agrave; tai nghe đều được l&oacute;t nhựa, c&aacute;c n&uacute;t bấm c&oacute; độ d&agrave;y v&agrave; nảy hợp l&yacute;, mặt k&iacute;nh 2.5D đẹp mắt, c&aacute;c chi tiết kim loại đều được xử l&yacute; sắc sảo. Chi tiết "ọp ẹp" duy nhất l&agrave; khi ấn tay v&agrave;o mặt sau, c&oacute; thể cảm nhận được khoảng c&aacute;ch giữa vỏ nhựa v&agrave; c&aacute;c linh kiện b&ecirc;n trong.</p>', N'33.jpg', CAST(N'2018-11-07 00:00:00.000' AS DateTime), 25, 3, 23, 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (40, N'Nokia X5', CAST(3220000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; color: black; mso-themecolor: text1; background: white;">Thiết kế m&agrave;n h&igrave;nh tai thỏ đang l&agrave; xu hướng chung của c&aacute;c h&atilde;ng điện thoại tr&ecirc;n thế giới. Cũng như Apple hay Huawei, nh&agrave; sản xuất HMD Global đ&atilde; bắt đầu giới thiệu sản phẩm Nokia X5 c&oacute; m&agrave;n h&igrave;nh 5,9&rdquo; với tỉ lệ m&agrave;n h&igrave;nh 19:9 v&agrave; độ ph&acirc;n giải 720 x 1520 pixels. Mặc d&ugrave; m&agrave;n h&igrave;nh lớn gần tới 6&rdquo; nhưng m&aacute;y kh&aacute; l&agrave; nhỏ gọn, &ocirc;m tay v&agrave; nhẹ. V&agrave; đặc biệt hơn, người Phần Lan đ&atilde; mang thiết kế tai thỏ v&agrave;o sản phẩm của m&igrave;nh.</span></p>', N'34.jpg', CAST(N'2018-11-08 00:00:00.000' AS DateTime), 10, 3, 23, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (41, N'Nokia 6', CAST(4290000 AS Decimal(18, 0)), N'<p style="margin: 13.5pt 0cm; background: white; vertical-align: baseline; text-align: justify;"><span style="color: #333333;">Nokia 6 l&agrave; sản phẩm đầu ti&ecirc;n của HMD Global. M&aacute;y sở hữu cấu h&igrave;nh phổ th&ocirc;ng với m&agrave;n h&igrave;nh IPS LCD 5,5 inch độ ph&acirc;n giải 1.080 x 1.920 pixel, d&ugrave;ng chip Qualcomm Snapdragon 430 tốc độ 1,4 GHz, RAM 4 GB k&egrave;m dung lượng lưu trữ 64 GB. Thiết bị c&oacute; camera ch&iacute;nh 16 megapixel khẩu độ f/2.0, lấy n&eacute;t theo phase trong khi camera trước c&oacute; độ ph&acirc;n giải 8 megapixel. Smartphone n&agrave;y d&ugrave;ng pin kh&ocirc;ng thể th&aacute;o rời dung lượng 3.000 mAh, t&iacute;ch hợp sẵn hệ điều h&agrave;nh Android 7 Nougat. Tại Trung Quốc, thiết bị n&agrave;y c&oacute; gi&aacute; b&aacute;n tương đương&nbsp;<abbr class="rate-usd quickview tooltipstered" style="box-sizing: border-box; text-rendering: geometricprecision; margin: 0px; padding: 0px; border-top: 0px; border-right: 0px; border-bottom: 1px dashed #bbbbbb !important; border-left: 0px; border-image: initial; outline: 0px; font-size: 18px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; cursor: pointer;" data-content="245 USD">245 USD</abbr>.</span></p>
<p class="MsoNormal" style="text-align: justify;">&nbsp;</p>', N'35.jpg', CAST(N'2018-11-11 00:00:00.000' AS DateTime), 25, 3, 23, 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (42, N'Samsung Galaxy Tab E', CAST(3895000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; background: white;">Samsung&nbsp;đ&atilde; ch&iacute;nh thức giới thiệu d&ograve;ng tablet mới với t&ecirc;n gọi Samsung Galaxy Tab E 9.6, thu h&uacute;t sự ch&uacute; &yacute; của c&aacute;c fan y&ecirc;u th&iacute;ch c&ocirc;ng nghệ. D&ograve;ng tablet mới n&agrave;y được Samsung trang bị m&agrave;n h&igrave;nh k&iacute;ch thước l&ecirc;n đến 9.6 inches, bộ vi xử l&yacute; bốn nh&acirc;n, RAM 1,5 GB, bộ nhớ trong 8 GB...</span></p>', N'36.jpg', CAST(N'2018-11-09 00:00:00.000' AS DateTime), 25, 2, 24, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (43, N'Samsung Galaxy Tab A', CAST(9500000 AS Decimal(18, 0)), N'<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">Galaxy Tab A 10.5&rdquo; l&agrave; mẫu m&aacute;y t&iacute;nh bảng c&oacute; gi&aacute; b&aacute;n phải chăng, m&aacute;y sở hữu m&agrave;n h&igrave;nh được thiết kế tỉ lệ 16:10 so với th&acirc;n m&aacute;y, m&agrave;n h&igrave;nh tr&agrave;n viền 10.5&rdquo; gi&uacute;p trải rộng tầm nh&igrave;n đến mức tối đa, cho khung h&igrave;nh sắc n&eacute;t, mượt m&agrave;.</span></p>
<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif;">&nbsp;</span></p>', N'37.jpg', CAST(N'2018-11-10 00:00:00.000' AS DateTime), 25, 2, 24, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (44, N'IPad Pro 9.7', CAST(13690000 AS Decimal(18, 0)), N'<p style="margin: 0cm 0cm 7.5pt 0cm;">Tr&ecirc;n I<a style="box-sizing: border-box; outline: none !important;" href="https://duchungmobile.vn/danh-muc/apple/ipad/ipad-pro/"><span style="color: windowtext; text-decoration: none; text-underline: none;">pad Pro</span></a>&nbsp;người d&ugrave;ng vẫn c&oacute; thể thấy một số thiết kế quen thuộc của phi&ecirc;n bản Ipad Mini hay Ipad Air trước đ&oacute;. M&aacute;y sử dụng vỏ nh&ocirc;m nguy&ecirc;n khối, m&agrave;n h&igrave;nh 12,9 inch lớn hơn rất nhiều so với c&aacute;c m&aacute;y t&iacute;nh bảng phi&ecirc;n bản trước. Một số người cho rằng m&agrave;n h&igrave;nh lớn thế n&agrave;y rất thuận tiện để chơi game hay xem phim, video thoải m&aacute;i v&agrave; phần lớn c&aacute;c trang b&aacute;o quốc tế đều d&agrave;nh những lời khen ngợi về sản phẩm n&agrave;y. Tuy nhi&ecirc;n để thay thế laptop th&igrave; model n&agrave;y chưa đủ mạnh.</p>
<p style="box-sizing: border-box; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 0cm 0cm 7.5pt 0cm;">Đa số người d&ugrave;ng h&agrave;i l&ograve;ng với sản phẩm n&agrave;y với thiết kế mới mẻ độc đ&aacute;o, từ trước tới nay chưa c&oacute; một sản phẩm m&aacute;y t&iacute;nh bảng n&agrave;o c&oacute; k&iacute;ch thước lơn như vậy.</p>
<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; background: white;">Ipad pro được coi l&agrave; phi&ecirc;n bản ph&oacute;ng to của c&aacute;c phi&ecirc;n bản m&aacute;y t&iacute;nh bảng trước đ&oacute;. K&iacute;ch thước m&agrave;n h&igrave;nh 12,9 inch, độ ph&acirc;n giải m&agrave;n h&igrave;nh l&agrave;: 2731 x 2048 điểm ảnh. Thiết kế m&agrave;n h&igrave;nh hơn 5,6 triệu điểm ảnh, con số n&agrave;y lớn hơn rất nhiều so với chiếc Macbook Pro m&agrave;n h&igrave;nh 15 inch Rentina. M&agrave;n h&igrave;nh n&agrave;y c&ograve;n c&oacute; tần s&ocirc; qu&eacute;t gấp đ&ocirc;i cho trải nghiệm h&igrave;nh ảnh tốc độ cao.</span></p>', N'38.jpg', CAST(N'2018-11-10 00:00:00.000' AS DateTime), 10, 1, 24, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (45, N'IPad Mini 3 Cellular', CAST(7990000 AS Decimal(18, 0)), N'<p class="MsoNormal"><strong><span style="font-size: 12.0pt; line-height: 107%; background: white; font-weight: normal;">iPad Mini 3</span></strong><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; background: white;"><span style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; float: none; word-spacing: 0px;">&nbsp;được vận h&agrave;nh tr&ecirc;n nền tảng iOS 8.1, với những t&iacute;nh năng mới v&agrave; độc đ&aacute;o như: tương t&aacute;c trực tiếp tr&ecirc;n thanh th&ocirc;ng b&aacute;o, hẹn giờ chụp ảnh, t&ugrave;y biến b&agrave;n ph&iacute;m, chế độ gợi &yacute; li&ecirc;n lạc th&ocirc;ng minh, email đa nhiệm c&ugrave;ng h&agrave;ng loạt những t&ugrave;y biến h&igrave;nh ảnh&hellip; Cho bạn trải nghiệm những t&iacute;nh năng l&agrave;m việc cũng như giải tr&iacute; một c&aacute;ch nhanh ch&oacute;ng, tiện lợi v&agrave; dễ d&agrave;ng nhất.</span></span></p>', N'39.jpg', CAST(N'2018-11-10 00:00:00.000' AS DateTime), 20, 1, 24, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (46, N'Xiaomi MiPad 4', CAST(3899000 AS Decimal(18, 0)), N'<p class="MsoNormal"><strong><span style="font-size: 12.0pt; line-height: 107%; background: white; font-weight: normal;">M&aacute;y t&iacute;nh bảng Xiaomi Mi Pad 4</span></strong><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; background: white;"><span style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; float: none; word-spacing: 0px;">&nbsp;vẫn giữ phong c&aacute;ch thiết kế quen thuộc với&nbsp;chất liệu kim loại nguy&ecirc;n khối cao cấp, c&aacute;c cạnh được bo cong mềm mại, tạo cảm gi&aacute;c cầm nắm thoải m&aacute;i v&agrave; chắc tay. B&ecirc;n cạnh đ&oacute; c&aacute;c chi tiết đều được gia c&ocirc;ng một c&aacute;ch tỉ mỉ v&agrave; tinh tế, bạn sẽ phải "Wow" l&ecirc;n v&igrave; sức h&uacute;t m&atilde;nh liệt từ vẻ đẹp b&ecirc;n ngo&agrave;i của n&oacute;.</span></span></p>', N'40.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 16, 1005, 24, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (47, N'CutePad Tab 4 M9601.', CAST(1990000 AS Decimal(18, 0)), N'<p style="margin: 0cm; margin-bottom: .0001pt; background: white;">M&aacute;y sử dụng CPU thế hệ mới của h&atilde;ng Mediatek Đ&agrave;i loan MT6580, nổi tiếng với việc cung cấp ch&iacute;p cho c&aacute;c loại điện thoại di động tr&ecirc;n thị trường với chất lượng rất ổn định,&nbsp;MT6580, với tốc độ tối đa&nbsp;tới 1.3GHz, được x&acirc;y dựng tr&ecirc;n nền tảng Cortex A7, với c&ocirc;ng nghệ 40nm, gi&uacute;p&nbsp;<strong style="box-sizing: border-box;">Tab 4 M9601</strong>&nbsp;tiết kiệm điện năng tới 40% so với nền tảng CPU trước đ&acirc;y.<br style="box-sizing: border-box;" /> Mediatek MT6580 l&agrave; chip 4 nh&acirc;n, được trang bị bộ xử l&yacute; đồ hoạ ri&ecirc;ng ARM Mali-400MP v&agrave; với bộ nhớ trong 16GB, RAM 2GB cho ph&eacute;p chiếc m&aacute;y t&iacute;nh bảng của bạn xử l&yacute; hiệu quả hơn khi chơi game cũng như c&aacute;c t&aacute;c vụ h&igrave;nh ảnh sẽ nhanh v&agrave; mượt m&agrave; hơn.</p>
<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif;">&nbsp;</span></p>', N'41.jpg', CAST(N'2018-11-10 00:00:00.000' AS DateTime), 25, 2, 24, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (48, N'Samsung Galaxy Tab A6', CAST(7490000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif;">L&agrave; d&ograve;ng m&aacute;y trong ph&acirc;n kh&uacute;c tầm trung, Samsung Galaxy Tab A6 10.1 Spen được thiết kế với vỏ nhựa nh&aacute;m nhẹ c&ugrave;ng c&aacute;c g&oacute;c bo tr&ograve;n cho cảm gi&aacute;c chắc chắn, kh&ocirc;ng b&aacute;m v&acirc;n tay khi cầm.</span></p>
<p style="margin: 7.5pt 0cm 7.5pt 0cm;">Sở hữu m&agrave;n h&igrave;nh k&iacute;ch thước 10.1 inch kh&ocirc;ng qu&aacute; lớn, c&oacute; thể nh&eacute;t vừa một chiếc balo dạng nhỏ, Samsung Galaxy Tab A6 10.1 Spen sử dụng tấm nền TFT LCD cho khả năng hiển thị tốt.</p>
<p style="margin-block-start: 0px; margin-block-end: 0px; margin-inline-start: 0px; margin-inline-end: 0px; text-rendering: geometricprecision; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px; margin: 7.5pt 0cm 7.5pt 0cm;">Độ ph&acirc;n giải &nbsp;WUXGA 1920 x 1200 pixels cho chất lượng h&igrave;nh ảnh sắc n&eacute;t, sử dụng tốt khi đi ngo&agrave;i trời.</p>
<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif;">&nbsp;</span></p>', N'42.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 15, 2, 24, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (51, N'Sạc IPHONE 7/8PLUS', CAST(100000 AS Decimal(18, 0)), N'<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">M&ocirc; tả sản phẩm BỘ CỐC V&Agrave; C&Aacute;P SẠC&nbsp; CAO CẤP iphone 5/6/7 /8</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">iPhone 5 trở l&ecirc;n: 5, 5s, 6, 6s, 6 plus, 6s plus, 7, 7 plus...</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">iPad mini trở l&ecirc;n: ipad mini 3/2/1, ipad mini 4, ipad air, ipad air 2, ipad pro, ipad 2/3/4.</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-outline-level: 4; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">D&acirc;y C&aacute;p lightning ch&iacute;nh h&atilde;ng :</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">Kh&ocirc;ng g&acirc;y loạn cảm ứng.</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">Kh&ocirc;ng l&agrave;m chậm thời gian sạc pin.</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-outline-level: 4; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">L&yacute; do n&ecirc;n D&acirc;y C&aacute;p lightning ch&iacute;nh h&atilde;ng :</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">Sạc đ&uacute;ng dung lượng pin, kh&ocirc;ng l&agrave;m lệch cảm ứng như sạc thường.</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">Đ&aacute;p ứng ti&ecirc;u chuẩn an to&agrave;n sản xuất n&ecirc;n kh&ocirc;ng bị r&ograve; rỉ điện g&acirc;y giật điện.</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">Tăng tuổi thọ pin v&agrave; cảm ứng, an to&agrave;n cho người sử dụng.</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">L&agrave; nh&agrave; sản xuất c&aacute;p sạc theo m&aacute;y cho Apple</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">=&gt; C&aacute;p Lightning v&agrave; c&aacute;p theo m&aacute;y c&oacute; chất lượng như nhau v&igrave; ch&uacute;ng c&ugrave;ng một nh&agrave; sản xuất, c&ugrave;ng c&ocirc;ng nghệ v&agrave; chất liệu. Tuy nhi&ecirc;n rất kh&oacute; để ch&uacute;ng ta c&oacute; được một sợi c&aacute;p theo m&aacute;y nếu kh&ocirc;ng phải từ việc đập hộp 1 thiết bị Apple, n&ecirc;n ch&iacute;nh l&agrave; lựa chọn h&agrave;ng đầu để thay thế khi d&acirc;y c&aacute;p của ch&uacute;ng ta bị hỏng hay thất lạc.</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">Chỗ tiếp x&uacute;c USB bằng đồng s&aacute;ng b&oacute;ng, kh&ocirc;ng xỉn m&agrave;u.</span></p>
<p class="MsoNormal" style="margin-bottom: .0001pt; text-align: justify; line-height: normal; background: white;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',serif; mso-fareast-font-family: ''Times New Roman'';">Hai ch&acirc;n cắm điện l&agrave;m bằng hợp kim, kh&ocirc;ng h&uacute;t nam ch&acirc;m v&agrave; c&oacute; thể đứng bằng hai ch&acirc;n tr&ecirc;n mặt phẳng&nbsp;</span></p>
<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif;">&nbsp;</span></p>', N'44.jpg', CAST(N'2018-11-10 00:00:00.000' AS DateTime), 50, 1, 25, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (52, N'Sạc SamSung J7', CAST(199000 AS Decimal(18, 0)), N'<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 107%; font-family: ''Times New Roman'',serif; background: white;">Bộ củ v&agrave; c&aacute;p sạc&nbsp;</span><strong style="box-sizing: border-box; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">Samsung Galaxy J7 Prime</strong><span style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; float: none; word-spacing: 0px;">&nbsp;ch&iacute;nh h&atilde;ng bao gồm một củ sạc v&agrave; một c&aacute;p sạc ch&iacute;nh h&atilde;ng d&agrave;i 1m. &nbsp;Sạc c&oacute; d&ograve;ng điện ra ổn định 5V -2A, c&aacute;p c&oacute;&nbsp;sợi d&acirc;y nhỏ lưới th&eacute;p b&ecirc;n trong được l&agrave;m d&agrave;y hơn để chống đứt, chống nhiễu hiệu quả. Ngo&agrave;i việc d&ugrave;ng cho chức năng sạc c&aacute;p sạc c&ograve;n hỗ trợ việc kết nối v&agrave; chia sẻ dữ liệu với m&aacute;y t&iacute;nh v&agrave; điện thoại.&nbsp;Củ&nbsp;sạc v&agrave; c&aacute;p được l&agrave;m ho&agrave;n to&agrave;n từ chất liệu nhựa cao cấp, độ bền cao v&agrave; kh&ocirc;ng g&acirc;y hại cho người d&ugrave;ng.&nbsp;Chỉ cần thao t&aacute;c đơn giản, cắm trực tiếp c&aacute;p&nbsp;v&agrave;o&nbsp;đầu của củ sạc v&agrave; thiết bị l&agrave; ngay lập tức bạn c&oacute; thể nạp năng lượng cho thiết bị&nbsp;của m&igrave;nh.&nbsp;</span></p>', N'45.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 50, 2, 25, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (53, N'Sạc Oppo 2018', CAST(99000 AS Decimal(18, 0)), N'<p style="box-sizing: border-box; margin: 5px 0px 12px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">C&ocirc;ng suất 5V - 2A</p>
<p style="box-sizing: border-box; margin: 5px 0px 12px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">C&aacute;p zin d&agrave;y chắc chắn d&ugrave;ng sạc hoặc ch&eacute;p dữ liệu</p>
<p style="box-sizing: border-box; margin: 5px 0px 12px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">Độ bền v&agrave; ổn định cao</p>
<p style="box-sizing: border-box; margin: 5px 0px 12px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">Hạn chế ch&aacute;y nổ khi sạc</p>
<p style="box-sizing: border-box; margin: 5px 0px 12px; color: #242424; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">D&ugrave;ng tốt cho c&aacute;c d&ograve;ng m&aacute;y v&agrave; pin dự ph&ograve;ng</p>', N'46.jpg', CAST(N'2018-11-09 00:00:00.000' AS DateTime), 57, 4, 25, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDT], [GiaBan], [Mota], [AnhBia], [NgayCapNhap], [SoLuongTon], [MaNSX], [MaLDT], [Moi]) VALUES (54, N'Tai Nghe SamSung', CAST(159000 AS Decimal(18, 0)), N'<table style="box-sizing: border-box; border-collapse: collapse; border-spacing: 0px; width: 1002px; margin: 0px; border-radius: 4px; color: #333333; text-align: justify; padding: 0px; font-family: Roboto-Regular, ''Helvetica Neue'', Helvetica, Tahoma, Arial, sans-serif; font-size: 12px;" border="0" cellspacing="0" cellpadding="0">
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; padding: 0px; margin: 0px;" colspan="5">
<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">
<li style="box-sizing: border-box; margin: 0px; padding: 0px;">in-ear noise reduction thiết kế, với c&aacute;ch ly tiếng ồn hiệu lực, chất lượng &acirc;m thanh thậm ch&iacute; c&ograve;n di chuyển! Ergonomic mặc thiết kế.</li>
</ul>
</td>
<td style="box-sizing: border-box; padding: 0px; margin: 0px;">&nbsp;</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; padding: 0px; margin: 0px;" colspan="5">
<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">
<li style="box-sizing: border-box; margin: 0px; padding: 0px;">tiếp nhận v&agrave; trả lời điện thoại cuộc gọi th&ocirc;ng qua c&aacute;c in-line microphone v&agrave; trả lời key. từ xa C&oacute; D&acirc;y khối lượng (+-) kiểm so&aacute;t</li>
</ul>
</td>
<td style="box-sizing: border-box; padding: 0px; margin: 0px;">&nbsp;</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<td style="box-sizing: border-box; padding: 0px; margin: 0px;" colspan="5">
<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">
<li style="box-sizing: border-box; margin: 0px; padding: 0px;" data-spm-anchor-id="a2o4n.pdp.product_detail.i3.a07834d2AtDmUq">3.5 m&eacute;t ba giai đoạn v&agrave;ng-mạ cắm, chỉ được sử dụng trong hầu hết c&aacute;c điện thoại di động, để đảm bảo rằng việc truyền t&iacute;n hiệu qu&aacute; tr&igrave;nh m&agrave; kh&ocirc;ng bị m&eacute;o chất lượng &acirc;m thanh, cắm hơn mặc!</li>
</ul>
</td>
</tr>
</tbody>
</table>', N'48.jpg', CAST(N'2018-11-15 00:00:00.000' AS DateTime), 100, 2, 25, 1)
SET IDENTITY_INSERT [dbo].[DienThoai] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (15, N'Lê Văn Thanh', N'agls1', N'agls1', N'levanthanh12321@gmail.com', N'Định Công', N'01668961442', N'Nam', CAST(N'1998-03-24 00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (17, N'vcb', N'abcd', N'abcd', N'abcd@gmail.com', N'ghj', N'078785675', N'Nữ', CAST(N'1997-05-16 00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (19, N'Lê Văn Thanh', N'tyui', N'tyui', N'levanthanh12321@gmail.com', N'Định Công', N'01668961442', N'Nam', CAST(N'1998-03-24 00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (20, N'Lê Văn Thanh', N'thn12321', N'thn12321', N'levanthanh12321@gmail.com', N'Định Công', N'01668961442', N'Nam', CAST(N'1998-03-24 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiDienThoai] ON 

INSERT [dbo].[LoaiDienThoai] ([MaLDT], [TenLDT]) VALUES (23, N'Điện Thoại')
INSERT [dbo].[LoaiDienThoai] ([MaLDT], [TenLDT]) VALUES (24, N'Máy Tính Bảng')
INSERT [dbo].[LoaiDienThoai] ([MaLDT], [TenLDT]) VALUES (25, N'Phụ Kiện')
SET IDENTITY_INSERT [dbo].[LoaiDienThoai] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (1, N'IPhone', N'Mỹ', N'1800.1062')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (2, N'SamSung', N'Hàn Quốc', N'1900.633.719')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (3, N'Nokia', N'Phần Lan', N'1800.1064')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (4, N'Oppo', N'Trung Quốc', N'1800.577.776')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (1005, N'Xiaomi', N'Trung Quốc', N'19001006')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (1006, N'Vivo', N'Trung Quốc', N'19001007')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[NoiXuatXu] ON 

INSERT [dbo].[NoiXuatXu] ([MaXuatXu], [NoiXuatXu]) VALUES (1, N'Mỹ')
INSERT [dbo].[NoiXuatXu] ([MaXuatXu], [NoiXuatXu]) VALUES (2, N'Phần Lan')
INSERT [dbo].[NoiXuatXu] ([MaXuatXu], [NoiXuatXu]) VALUES (3, N'Hàn Quốc')
INSERT [dbo].[NoiXuatXu] ([MaXuatXu], [NoiXuatXu]) VALUES (4, N'Trung Quốc')
SET IDENTITY_INSERT [dbo].[NoiXuatXu] OFF
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DienThoai] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DienThoai] ([MaDT])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DienThoai]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD  CONSTRAINT [FK_DienThoai_LoaiDienThoai] FOREIGN KEY([MaLDT])
REFERENCES [dbo].[LoaiDienThoai] ([MaLDT])
GO
ALTER TABLE [dbo].[DienThoai] CHECK CONSTRAINT [FK_DienThoai_LoaiDienThoai]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD  CONSTRAINT [FK_DienThoai_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[DienThoai] CHECK CONSTRAINT [FK_DienThoai_NhaSanXuat]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_DienThoai] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DienThoai] ([MaDT])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_DienThoai]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanHang] SET  READ_WRITE 
GO
