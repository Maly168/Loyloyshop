USE [sealongmaly_loyloyshopdb]
GO
/****** Object:  Table [dbo].[Details]    Script Date: 2/19/2023 11:27:33 AM ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 2/19/2023 11:27:34 AM ******/
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
