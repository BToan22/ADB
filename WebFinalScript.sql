
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebFinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebFinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebFinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebFinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebFinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebFinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebFinal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebFinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebFinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebFinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebFinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebFinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebFinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebFinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebFinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebFinal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebFinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebFinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebFinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebFinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebFinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebFinal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebFinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebFinal] SET RECOVERY FULL 
GO
ALTER DATABASE [WebFinal] SET  MULTI_USER 
GO
ALTER DATABASE [WebFinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebFinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebFinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebFinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebFinal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebFinal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebFinal', N'ON'
GO
ALTER DATABASE [WebFinal] SET QUERY_STORE = OFF
GO
USE [WebFinal]
GO
/****** Object:  Table [dbo].[Lecturers]    Script Date: 09/01/2023 20:19:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturers](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LecturerID] [nvarchar](50) NULL,
	[LecturerName] [nvarchar](50) NULL,
	[LecturerPhone] [nvarchar](50) NULL,
	[LecturerEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 09/01/2023 20:19:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[ID] [float] NULL,
	[Province] [nvarchar](255) NULL,
	[HeadCity] [nvarchar](255) NULL,
	[Section] [nvarchar](255) NULL,
	[YearOfFoundation] [float] NULL,
	[Population] [float] NULL,
	[Area] [float] NULL,
	[Desnity] [float] NULL,
	[AdminLevel] [float] NULL,
	[RegPlate] [float] NULL,
	[TelCode] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 09/01/2023 20:19:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentID] [nvarchar](50) NULL,
	[StudentName] [nvarchar](50) NULL,
	[StudentPhone] [nvarchar](50) NULL,
	[StudentTown] [nvarchar](50) NULL,
	[StudentGender] [nvarchar](50) NULL,
	[StudentEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 09/01/2023 20:19:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubjectID] [nvarchar](50) NULL,
	[SubjectName] [nvarchar](50) NULL,
	[Credits] [tinyint] NULL,
	[Major] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/01/2023 20:19:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Lecturers] ON 

INSERT [dbo].[Lecturers] ([ID], [LecturerID], [LecturerName], [LecturerPhone], [LecturerEmail]) VALUES (1, N'123', N'Le Thi Ngoc Tho', N'1234567890', N'thole@gmail.com')
INSERT [dbo].[Lecturers] ([ID], [LecturerID], [LecturerName], [LecturerPhone], [LecturerEmail]) VALUES (2, N'234', N'Nguyen Le Hoang Anh', N'2345678901', N'hoanganh@gmail.com')
INSERT [dbo].[Lecturers] ([ID], [LecturerID], [LecturerName], [LecturerPhone], [LecturerEmail]) VALUES (3, N'345', N'Le Ngoc Hieu', N'3456789012', N'haolee@gmail.com')
INSERT [dbo].[Lecturers] ([ID], [LecturerID], [LecturerName], [LecturerPhone], [LecturerEmail]) VALUES (4, N'456', N'Bui Van Nghia', N'4567890123', N'nghia@gmail.com')
INSERT [dbo].[Lecturers] ([ID], [LecturerID], [LecturerName], [LecturerPhone], [LecturerEmail]) VALUES (5, N'567', N'Huynh Huu Nghia', N'5678901234', N'hnghia@gmail.com')
INSERT [dbo].[Lecturers] ([ID], [LecturerID], [LecturerName], [LecturerPhone], [LecturerEmail]) VALUES (6, N' 678', N'Truong Tuan Anh', N'6789012345', N'tanh@gmail.com')
INSERT [dbo].[Lecturers] ([ID], [LecturerID], [LecturerName], [LecturerPhone], [LecturerEmail]) VALUES (7, N'789', N'Ta Thi Nguyet Nga', N'7890123456', N'nga@gmail.com')
INSERT [dbo].[Lecturers] ([ID], [LecturerID], [LecturerName], [LecturerPhone], [LecturerEmail]) VALUES (8, N'890', N'Trinh Cong Nhut', N'8901234567', N'nhut@gmail.com')
INSERT [dbo].[Lecturers] ([ID], [LecturerID], [LecturerName], [LecturerPhone], [LecturerEmail]) VALUES (9, N'901', N'Phan Thanh Hy', N'9012345678', N'hy@gmail.com')
INSERT [dbo].[Lecturers] ([ID], [LecturerID], [LecturerName], [LecturerPhone], [LecturerEmail]) VALUES (10, N'012', N'Nguyen Thanh Tung', N'0123456789', N'tung@gmail.com')
SET IDENTITY_INSERT [dbo].[Lecturers] OFF
GO
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (1, N'An Giang', N'Thành phố Long Xuyên', N'Đồng bằng sông Cửu Long', 1832, 1908352, 3536,7, 540, 11, 67, 296)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (2, N'Bà Rịa – Vũng Tàu', N'Thành phố Bà Rịa', N'Đông Nam Bộ', 1899, 1148313, 1980,8, 580, 8, 72, 254)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (3, N'Bạc Liêu', N'Thành phố Bạc Liêu', N'Đồng bằng sông Cửu Long', 1900, 907236, 2669, 340, 7, 94, 291)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (4, N'Bắc Giang', N'Thành phố Bắc Giang', N'Đông Bắc Bộ', 1895, 1803950, 3851,4, 468, 10, NULL, 204)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (5, N'Bắc Kạn', N'Thành phố Bắc Kạn', N'Đông Bắc Bộ', 1900, 313905, 4860, 65, 8, 97, 209)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (6, N'Bắc Ninh', N'Thành phố Bắc Ninh', N'Đồng bằng sông Hồng', 1831, 1368840, 822,7, 1664, 8, NULL, 222)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (7, N'Bến Tre', N'Thành phố Bến Tre', N'Đồng bằng sông Cửu Long', 1900, 1288463, 2394,6, 538, 9, 71, 275)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (8, N'Bình Dương', N'Thành phố Thủ Dầu Một', N'Đông Nam Bộ', 1899, 2426561, 2694,7, 900, 9, 61, 274)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (9, N'Bình Định', N'Thành phố Quy Nhơn', N'Duyên hải Nam Trung Bộ', 1799, 1486918, 6066,2, 245, 11, 77, 256)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (10, N'Bình Phước', N'Thành phố Đồng Xoài', N'Đông Nam Bộ', 1971, 994679, 6877, 145, 11, 93, 271)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (11, N'Bình Thuận', N'Thành phố Phan Thiết', N'Duyên hải Nam Trung Bộ', 1697, 1230808, 7812,8, 158, 10, 86, 252)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (12, N'Cà Mau', N'Thành phố Cà Mau', N'Đồng bằng sông Cửu Long', 1956, 1194476, 5294,8, 226, 9, 69, 290)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (13, N'Cao Bằng', N'Thành phố Cao Bằng', N'Đông Bắc Bộ', 1499, 530341, 6700,3, 79, 10, 11, 206)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (14, N'Cần Thơ', N'Quận Ninh Kiều', N'Đồng bằng sông Cửu Long', 1900, 1235171, 1439,2, 858, 9, 65, 292)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (15, N'Đà Nẵng', N'Quận Hải Châu', N'Duyên hải Nam Trung Bộ', 1889, 1134310, 1284,9, 883, 8, 43, 236)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (16, N'Đắk Lắk', N'Thành phố Buôn Ma Thuột', N'Tây Nguyên', 1904, 1869322, 13030,5, 143, 15, 47, 262)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (17, N'Đắk Nông', N'Thành phố Gia Nghĩa', N'Tây Nguyên', 2004, 622168, 6509,3, 96, 8, 48, 261)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (18, N'Điện Biên', N'Thành phố Điện Biên Phủ', N'Tây Bắc Bộ', 2004, 598856, 9541, 63, 10, 27, 215)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (19, N'Đồng Nai', N'Thành phố Biên Hòa', N'Đông Nam Bộ', 1808, 3097107, 5905,7, 524, 11, NULL, 251)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (20, N'Đồng Tháp', N'Thành phố Cao Lãnh', N'Đồng bằng sông Cửu Long', 1976, 1599504, 3383,8, 473, 12, 66, 277)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (21, N'Gia Lai', N'Thành phố Pleiku', N'Tây Nguyên', 1932, 1513847, 15510,8, 98, 17, 81, 269)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (22, N'Hà Giang', N'Thành phố Hà Giang', N'Đông Bắc Bộ', 1891, 854679, 7929,5, 108, 11, 23, 219)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (23, N'Hà Nam', N'Thành phố Phủ Lý', N'Đồng bằng sông Hồng', 1890, 852800, 860,9, 991, 6, 90, 226)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (24, N'Hà Nội', N'Quận Hoàn Kiếm', N'Đồng bằng sông Hồng', 1010, 8053663, 3358,9, 2398, 30, NULL, 24)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (25, N'Hà Tĩnh', N'Thành phố Hà Tĩnh', N'Bắc Trung Bộ', 1831, 1288866, 5990,7, 215, 13, 38, 239)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (26, N'Hải Dương', N'Thành phố Hải Dương', N'Đồng bằng sông Hồng', 1469, 1892254, 1668,2, 1135, 12, 34, 220)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (27, N'Hải Phòng', N'Quận Hồng Bàng', N'Đồng bằng sông Hồng', 1888, 2028514, 1522,5, 1332, 15, NULL, 225)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (28, N'Hậu Giang', N'Thành phố Vị Thanh', N'Đồng bằng sông Cửu Long', 2004, 733017, 1621,8, 452, 8, 95, 293)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (29, N'Hòa Bình', N'Thành phố Hòa Bình', N'Tây Bắc Bộ', 1886, 854131, 4591, 186, 10, 28, 218)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (30, N'Thành phố Hồ Chí Minh', N'Quận 1', N'Đông Nam Bộ', 1697, 8993082, 2061, 4363, 22, NULL, 28)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (31, N'Hưng Yên', N'Thành phố Hưng Yên', N'Đồng bằng sông Hồng', 1831, 1252731, 930,2, 1347, 10, 89, 221)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (32, N'Khánh Hòa', N'Thành phố Nha Trang', N'Duyên hải Nam Trung Bộ', 1832, 1231107, 5137,8, 240, 9, 79, 258)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (33, N'Kiên Giang', N'Thành phố Rạch Giá', N'Đồng bằng sông Cửu Long', 1956, 1723067, 6348,8, 271, 15, 68, 297)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (34, N'Kon Tum', N'Thành phố Kon Tum', N'Tây Nguyên', 1913, 540438, 9674,2, 56, 10, 82, 260)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (35, N'Lai Châu', N'Thành phố Lai Châu', N'Tây Bắc Bộ', 1909, 460196, 9068,8, 51, 8, 25, 213)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (36, N'Lạng Sơn', N'Thành phố Lạng Sơn', N'Đông Bắc Bộ', 1831, 781655, 8310,2, 94, 11, 12, 205)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (37, N'Lào Cai', N'Thành phố Lào Cai', N'Tây Bắc Bộ', 1907, 730420, 6364, 115, 9, 24, 214)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (38, N'Lâm Đồng', N'Thành phố Đà Lạt', N'Tây Nguyên', 1976, 1296606, 9783,2, 133, 12, 49, 263)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (39, N'Long An', N'Thành phố Tân An', N'Đồng bằng sông Cửu Long', 1956, 1688547, 4490,2, 376, 15, 62, 272)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (40, N'Nam Định', N'Thành phố Nam Định', N'Đồng bằng sông Hồng', 1822, 1780393, 1668, 1067, 10, 18, 228)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (41, N'Nghệ An', N'Thành phố Vinh', N'Bắc Trung Bộ', 1469, 3327791, 16493,7, 202, 21, 37, 238)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (42, N'Ninh Bình', N'Thành phố Ninh Bình', N'Đồng bằng sông Hồng', 1831, 982487, 1387, 708, 8, 35, 229)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (43, N'Ninh Thuận', N'Thành phố Phan Rang – Tháp Chàm', N'Duyên hải Nam Trung Bộ', 1901, 590467, 3355,3, 176, 7, 85, 259)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (44, N'Phú Thọ', N'Thành phố Việt Trì', N'Đông Bắc Bộ', 1891, 1463726, 3534,6, 414, 13, 19, 210)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (45, N'Phú Yên', N'Thành phố Tuy Hòa', N'Duyên hải Nam Trung Bộ', 1611, 961152, 5023,4, 191, 9, 78, 257)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (46, N'Quảng Bình', N'Thành phố Đồng Hới', N'Bắc Trung Bộ', 1604, 895430, 8065,3, 111, 8, 73, 232)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (47, N'Quảng Nam', N'Thành phố Tam Kỳ', N'Duyên hải Nam Trung Bộ', 1471, 1495812, 10574,7, 141, 18, 92, 235)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (48, N'Quảng Ngãi', N'Thành phố Quảng Ngãi', N'Duyên hải Nam Trung Bộ', 1832, 1231697, 5135,2, 240, 13, 76, 255)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (49, N'Quảng Ninh', N'Thành phố Hạ Long', N'Đông Bắc Bộ', 1963, 1320324, 6177,7, 214, 13, 14, 203)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (50, N'Quảng Trị', N'Thành phố Đông Hà', N'Bắc Trung Bộ', 1832, 632375, 4739,8, 133, 10, 74, 233)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (51, N'Sóc Trăng', N'Thành phố Sóc Trăng', N'Đồng bằng sông Cửu Long', 1900, 1199653, 3311,8, 362, 11, 83, 299)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (52, N'Sơn La', N'Thành phố Sơn La', N'Tây Bắc Bộ', 1895, 1248415, 14123,5, 88, 12, 26, 212)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (53, N'Tây Ninh', N'Thành phố Tây Ninh', N'Đông Nam Bộ', 1900, 1169165, 4041,4, 289, 9, 70, 276)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (54, N'Thái Bình', N'Thành phố Thái Bình', N'Đồng bằng sông Hồng', 1890, 1860447, 1570,5, 1185, 8, 17, 227)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (55, N'Thái Nguyên', N'Thành phố Thái Nguyên', N'Đông Bắc Bộ', 1397, 1286751, 3536,4, 364, 9, 20, 208)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (56, N'Thanh Hóa', N'Thành phố Thanh Hóa', N'Bắc Trung Bộ', 1029, 3640128, 11114,7, 328, 27, 36, 237)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (57, N'Thừa Thiên Huế', N'Thành phố Huế', N'Bắc Trung Bộ', 1822, 1128620, 5048,2, 224, 9, 75, 234)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (58, N'Tiền Giang', N'Thành phố Mỹ Tho', N'Đồng bằng sông Cửu Long', 1976, 1764185, 2510,5, 703, 11, 63, 273)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (59, N'Trà Vinh', N'Thành phố Trà Vinh', N'Đồng bằng sông Cửu Long', 1900, 1009168, 2358,2, 428, 9, 84, 294)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (60, N'Tuyên Quang', N'Thành phố Tuyên Quang', N'Đông Bắc Bộ', 1469, 784811, 5867,9, 134, 7, 22, 207)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (61, N'Vĩnh Long', N'Thành phố Vĩnh Long', N'Đồng bằng sông Cửu Long', 1832, 1022791, 1475, 693, 8, 64, 270)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (62, N'Vĩnh Phúc', N'Thành phố Vĩnh Yên', N'Đồng bằng sông Hồng', 1950, 1154154, 1235,2, 934, 9, 88, 211)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (63, N'Yên Bái', N'Thành phố Yên Bái', N'Tây Bắc Bộ', 1900, 821030, 6887,7, 119, 9, 21, 216)
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (1, N'2011064076', N'Nguyen Khanh An', N'0988266052', N'Thành phố Hồ Chí Minh', N'Male', N'Ankhseram1412@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (2, N'2011062840', N'Tran Anh', N'0901403350', N'Thành phố Hồ Chí Minh', N'Male', N'trananh45698a@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (3, N'2011062022', N'Huynh Chi Bao', N'0372091404', N'Thành phố Hồ Chí Minh', N'Male', N'Hcbao101@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (4, N'2011064793', N'Ho Dac Cuong', N'0962036050', N'Bình Phước', N'Male', N'hodaccuong06@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (5, N'2011064187', N'Do Hoang Cong Danh', N'0392254520', N'Bình Dương', N'Male', N'ddanh14372@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (6, N'2011064807', N'Le Minh Duy', N'0375726360', N'Tây Ninh', N'Male', N'Minhduy674@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (7, N'2011064210', N'Thai Thanh Dat', N'0982822406', N'Thành phố Hồ Chí Minh', N'Male', N'thaithanhdat@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (8, N'2011063378', N'Tran Bui Hoang Gia', N'0797042389', N'Bà Rịa – Vũng Tàu', N'Male', N'rheinmir@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (9, N'2011064383', N'Do Luong Huan', N'0948025455', N'Thành phố Hồ Chí Minh', N'Male', N'Huando22222@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (10, N'2011064851', N'Ho Viet Hung', N'0848322883', N'Bình Phước', N'Male', N'hoviethung883@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (11, N'2011061556', N'Nguyen Minh Huy', N'0337351400', N'Thành phố Hồ Chí Minh', N'Male', N'quilivh11@gmail.com ')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (12, N'2011064861', N'Tran Nguyen Quang Huy', N'0379893873', N'Bến Tre', N'Male', N'huydeptai511@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (13, N'2011064247', N'Nguyen Vo Quoc Huy', N'0984374979', N'Thành phố Hồ Chí Minh', N'Male', N'guiltycrown2020@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (14, N'2011064398', N'Nguyen Le Duy Hung', N'0931289317', N'Long An', N'Male', N'hunggnguyenn569@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (15, N'2011062168', N'Doan Hai Khang', N'0327324144', N'Bến Tre', N'Male', N'0327324144khang@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (16, N'2011065208', N'Vo Dang Khoa', N'0908183035', N'Thành phố Hồ Chí Minh', N'Male', N'vodangkhoa2606@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (17, N'2011063897', N'Nguyen Minh Khoi', N'0825463437', N'Thành phố Hồ Chí Minh', N'Male', N'minhkhoi09061984@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (18, N'2011060554', N'Nguyen Thi Kim Linh', N'0934197361', N'Thành phố Hồ Chí Minh', N'Female', N'ntkimlinh123@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (19, N'2011062230', N'Trinh Vo Dieu Mai', N'0938670524', N'Thành phố Hồ Chí Minh', N'Female', N'trinhvodieumai@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (20, N'2011060612', N'Tran Minh Man', N'0937233287', N'Long An', N'Male', N'minhman3287@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (21, N'2011064981', N'Vu Duy Phuong', N'0971463348', N'Bình Phước', N'Male', N'puong334@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (23, N'2011062327', N'Nguyen Ba Quoc', N'0857618235', N'Thành phố Hồ Chí Minh', N'Male', N'quochutech1@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (24, N'2011063755', N'Ho Tan Quy', N'0378395241', N'Thành phố Hồ Chí Minh', N'Male', N'Tanquy039@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (25, N'2011063261', N'Nguyen Ngoc Sang', N'0584607756', N'Bình Dương', N'Male', N'Ngocsang5177@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (26, N'2011060987', N'Vo Minh Tan', N'0898846964', N'Bến Tre', N'Male', N'votan640@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (28, N'2011061154', N'Tran Nguyen Bao Toan', N'0985876967', N'Đồng Nai', N'Male', N'kuten0900@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (29, N'2011062391', N'Le Van Toan', N'0944809813', N'Thành phố Hồ Chí Minh', N'Male', N'toanle0303@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (30, N'2011061247', N'Nguyen Anh Tuan', N'0833677402', N'Nghệ An', N'Male', N'atuanx100@gmail.com')
INSERT [dbo].[Students] ([ID], [StudentID], [StudentName], [StudentPhone], [StudentTown], [StudentGender], [StudentEmail]) VALUES (31, N'2011250876', N'Nguyen Phan Xuan Vinh', N'0908627338', N'Thành phố Hồ Chí Minh', N'Male', N'xuanvinh16112002@gmail.com')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (1, N'COS122', N'Database', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (2, N'COS120', N'Data Structure and Algorithm', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (3, N'COS101', N'Advance Database', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (4, N'COS117', N'Computer Architecture and Operating System', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (5, N'CMP101', N'Software Engineering', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (6, N'CMP1024', N'Application programming with Java', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (7, N'CMP175', N'Web Programming', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (8, N'CMP169', N'Artificial Intelligence', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (9, N'COS321', N'Practice Data Structure and Algorithm', 1, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (10, N'COS323', N'Practice Database', 1, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (11, N'CMP167', N'Object-Orient Programming', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (12, N'CMP368', N'Practice Object-Orient Programming', 1, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (13, N'CMP376', N'Practice Web Programming', 1, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (14, N'CMP3014', N'Practice Graph Theory', 1, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (15, N'COS318', N'Practice Operating System', 1, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (16, N'COS319', N'Practice Computer Architecture', 1, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (17, N'CMP164', N'Programming Techniques', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (18, N'CMP365', N'Practice Programming Techiniques', 1, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (19, N'CMP1020', N'Deep Learning', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (20, N'CMP1021', N'Computer Vision', 3, N'Information Technology')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (22, N'CMP1021', N'Probability', 3, N'Economic')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (23, N'COS122', N'Statistics', 3, N'Economic')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (24, N'ECO', N'Macro Economic', 3, N'Economic')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (25, N'ECO101', N'Micro Economic', 3, N'Economic')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (26, N'LAW', N'economic Law', 3, N'Law')
INSERT [dbo].[Subjects] ([ID], [SubjectID], [SubjectName], [Credits], [Major]) VALUES (27, N'LAW102', N'Law on Land', 3, N'Law')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Username], [Password], [Fullname], [City]) VALUES (1, N'danh', N'rXiGw0c9HObvksm3TzVWpdc15wBN8bZG14Lnqxn5CUk=', N'Do Hoang Cong Danh', N'Bình Dương')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Fullname], [City]) VALUES (2, N'toan', N'123', N'Tran Nguyen Bao Toan', N'Đồng Nai')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Fullname], [City]) VALUES (3, N'danh123', N'Ioi3hW+DVD4c/RB5rht+eRRatfHXpQteXBn3SrnFjRU=', N'Do Hoang Cong Danh', N'8')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Fullname], [City]) VALUES (4, N'danh@@@', N'32Tjf4pgVbbaEwetWQbQT/MLAB0wQFQr30U4DH0P5kQ=', N'Do Danh', N'8')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Fullname], [City]) VALUES (5, N'toanmiao', N'W+ADs61qe21acm3JMZZ4ces20twqiE2fnG/GUxX41Ms=', N'Tran Nguyen Bao Toan', N'8')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [WebFinal] SET  READ_WRITE 
GO
