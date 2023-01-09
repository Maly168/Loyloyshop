USE [loyloyshopdb]
GO

/****** Object:  Table [dbo].[Products1]    Script Date: 12/28/2022 2:58:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[EngineNumber] [nvarchar](100) NULL,
	[FrameNumber] [nvarchar](100) NULL,
	[PlateNumber] [nvarchar](100) NULL,
	[MadeYear] [int] NULL,
	[Power] [nvarchar](50) NULL,
	[PriceBuy] [decimal](18, 0) NOT NULL,
	[PriceSell] [decimal](38, 17) NULL,
	[Status] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[DateSell] [datetime] NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Products1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

