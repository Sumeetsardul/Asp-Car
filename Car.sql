USE [master]
GO
/****** Object:  Database [Cars]    Script Date: 4/29/2019 9:16:31 AM ******/
CREATE DATABASE [Cars]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cars', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Cars.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cars_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Cars_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Cars] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cars].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cars] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cars] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cars] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cars] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cars] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cars] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cars] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cars] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cars] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cars] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cars] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cars] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cars] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cars] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cars] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cars] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cars] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cars] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cars] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cars] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cars] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cars] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cars] SET RECOVERY FULL 
GO
ALTER DATABASE [Cars] SET  MULTI_USER 
GO
ALTER DATABASE [Cars] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cars] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cars] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cars] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cars] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Cars', N'ON'
GO
ALTER DATABASE [Cars] SET QUERY_STORE = OFF
GO
USE [Cars]
GO
/****** Object:  Table [dbo].[Body]    Script Date: 4/29/2019 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Body](
	[Body_id] [int] IDENTITY(1,1) NOT NULL,
	[BodyType] [nchar](10) NULL,
	[Doors] [nchar](10) NULL,
 CONSTRAINT [PK_Body] PRIMARY KEY CLUSTERED 
(
	[Body_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Engine]    Script Date: 4/29/2019 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Engine](
	[Engine_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Rpm] [nchar](10) NULL,
 CONSTRAINT [PK_Engine] PRIMARY KEY CLUSTERED 
(
	[Engine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Main]    Script Date: 4/29/2019 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Main](
	[Car_id] [int] IDENTITY(1,1) NOT NULL,
	[Engine_id] [int] NULL,
	[Color] [nchar](10) NULL,
	[Name] [nchar](10) NULL,
	[Make] [nchar](10) NULL,
	[Year] [nchar](10) NULL,
 CONSTRAINT [PK_Main] PRIMARY KEY CLUSTERED 
(
	[Car_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/29/2019 9:16:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Engine] ON 

INSERT [dbo].[Engine] ([Engine_id], [Name], [Rpm]) VALUES (1, N'V6        ', N'5200      ')
INSERT [dbo].[Engine] ([Engine_id], [Name], [Rpm]) VALUES (2, N'ata       ', N'4200      ')
INSERT [dbo].[Engine] ([Engine_id], [Name], [Rpm]) VALUES (3, N'v4        ', N'1500      ')
INSERT [dbo].[Engine] ([Engine_id], [Name], [Rpm]) VALUES (4, N'm10       ', N'2300      ')
INSERT [dbo].[Engine] ([Engine_id], [Name], [Rpm]) VALUES (5, N'inline    ', N'3200      ')
SET IDENTITY_INSERT [dbo].[Engine] OFF
SET IDENTITY_INSERT [dbo].[Main] ON 

INSERT [dbo].[Main] ([Car_id], [Engine_id], [Color], [Name], [Make], [Year]) VALUES (1, 2, N'blue      ', N'sunny     ', N'nissan    ', N'2015      ')
INSERT [dbo].[Main] ([Car_id], [Engine_id], [Color], [Name], [Make], [Year]) VALUES (3, 4, N'black     ', N'acoord    ', N'honda     ', N'2013      ')
SET IDENTITY_INSERT [dbo].[Main] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([u_id], [Username], [Password]) VALUES (1, N'sum       ', N'sum       ')
INSERT [dbo].[User] ([u_id], [Username], [Password]) VALUES (2, N'sumit     ', N'sumit     ')
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Main]  WITH CHECK ADD  CONSTRAINT [FK_Main_Engine] FOREIGN KEY([Engine_id])
REFERENCES [dbo].[Engine] ([Engine_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Main] CHECK CONSTRAINT [FK_Main_Engine]
GO
USE [master]
GO
ALTER DATABASE [Cars] SET  READ_WRITE 
GO
