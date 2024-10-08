USE [master]
GO
/****** Object:  Database [sealongmaly_loyloyshopdb]    Script Date: 3/13/2024 1:22:23 PM ******/
CREATE DATABASE [sealongmaly_loyloyshopdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sealongmaly_loyloyshopdb', FILENAME = N'D:\sql-freeasphost-user-dbs\sealongmaly_loyloyshopdb.mdf' , SIZE = 10240KB , MAXSIZE = 51200KB , FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'sealongmaly_loyloyshopdb_log', FILENAME = N'D:\sql-freeasphost-user-dbs\sealongmaly_loyloyshopdb.ldf' , SIZE = 5120KB , MAXSIZE = 25600KB , FILEGROWTH = 5120KB )
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sealongmaly_loyloyshopdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET RECOVERY FULL 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET  MULTI_USER 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET QUERY_STORE = OFF
GO
USE [sealongmaly_loyloyshopdb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [sealongmaly_loyloyshopdb]
GO
/****** Object:  Table [dbo].[Details]    Script Date: 3/13/2024 1:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Payment] [decimal](18, 0) NULL,
	[Note] [nvarchar](300) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ProductId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/13/2024 1:22:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[EngineNumber] [nvarchar](50) NULL,
	[FrameNumber] [nvarchar](50) NULL,
	[PlateNumber] [nvarchar](50) NOT NULL,
	[MadeYear] [int] NULL,
	[Power] [nvarchar](50) NULL,
	[PriceBuy] [decimal](18, 0) NOT NULL,
	[PriceSell] [decimal](18, 0) NULL,
	[Status] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[DateSell] [datetime] NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[SellingPrice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Details] ADD  DEFAULT ((0)) FOR [Payment]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_SellingPrice]  DEFAULT ((0)) FOR [SellingPrice]
GO
USE [master]
GO
ALTER DATABASE [sealongmaly_loyloyshopdb] SET  READ_WRITE 
GO
