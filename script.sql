USE [master]
GO
/****** Object:  Database [OJTManagement]    Script Date: 22/05/2022 5:03:25 CH ******/
CREATE DATABASE [OJTManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OJTManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.PCTHAI\MSSQL\DATA\OJTManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OJTManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.PCTHAI\MSSQL\DATA\OJTManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OJTManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OJTManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OJTManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OJTManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OJTManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OJTManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OJTManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [OJTManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OJTManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OJTManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OJTManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OJTManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OJTManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OJTManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OJTManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OJTManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OJTManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OJTManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OJTManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OJTManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OJTManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OJTManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OJTManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OJTManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OJTManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OJTManagement] SET  MULTI_USER 
GO
ALTER DATABASE [OJTManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OJTManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OJTManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OJTManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OJTManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OJTManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OJTManagement] SET QUERY_STORE = OFF
GO
USE [OJTManagement]
GO
/****** Object:  Table [dbo].[tblMajor]    Script Date: 22/05/2022 5:03:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMajor](
	[majorID] [nvarchar](10) NOT NULL,
	[majorName] [nvarchar](30) NULL,
 CONSTRAINT [PK_TBLMAJOR] PRIMARY KEY CLUSTERED 
(
	[majorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 22/05/2022 5:03:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[roleID] [nvarchar](10) NOT NULL,
	[roleName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_TBLROLES] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 22/05/2022 5:03:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [nvarchar](30) NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](30) NOT NULL,
	[roleID] [nvarchar](10) NOT NULL,
	[birthday] [date] NULL,
	[phone] [nvarchar](30) NULL,
	[email] [nvarchar](30) NULL,
	[majorID] [nvarchar](10) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_TBLUSERS] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'AI', N'Trí tuệ nhân tạo')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'BA', N'Quản trị kinh doanh')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'DM', N'Digital Marketing')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'EL', N'Ngôn ngữ Anh')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'GD', N'Thiết kế đồ họa')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'HM', N'Quản trị khách sạn')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'HT', N'Quản trị du lịch và lữ hành')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'IA', N'An toàn thông tin')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'IB', N'Kinh doanh quốc tế')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'IoT', N'Internet vạn vật')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'IS', N'Hệ thống thông tin')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'JP', N'Ngôn ngữ Nhật')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'KR', N'Ngôn ngữ Hàn')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'MC', N'Truyền thông đa phương tiện')
INSERT [dbo].[tblMajor] ([majorID], [majorName]) VALUES (N'SE', N'Kỹ thuật phần mềm')
GO
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (N'AD', N'Admin')
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (N'RE', N'Recruiter')
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (N'ST', N'Student')
GO
INSERT [dbo].[tblUsers] ([userID], [userName], [password], [roleID], [birthday], [phone], [email], [majorID], [status]) VALUES (N'ad@gmail.com', N'Thai', N'1', N'AD', CAST(N'2022-03-10' AS Date), N'123456', N'adminne@gmail.com', N'GD', 1)
INSERT [dbo].[tblUsers] ([userID], [userName], [password], [roleID], [birthday], [phone], [email], [majorID], [status]) VALUES (N'recruiter@gmail.com', N'Sy', N'1', N'RE', CAST(N'2022-03-10' AS Date), N'123456', N'recruiterne@gmail.com', N'BA', 1)
INSERT [dbo].[tblUsers] ([userID], [userName], [password], [roleID], [birthday], [phone], [email], [majorID], [status]) VALUES (N'student@gmail.com', N'Thy', N'1', N'ST', CAST(N'2022-03-10' AS Date), N'123456', N'studentne@gmail.com', N'SE', 1)
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD  CONSTRAINT [FK01_TBLUSERS] FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRoles] ([roleID])
GO
ALTER TABLE [dbo].[tblUsers] CHECK CONSTRAINT [FK01_TBLUSERS]
GO
USE [master]
GO
ALTER DATABASE [OJTManagement] SET  READ_WRITE 
GO
