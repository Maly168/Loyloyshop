USE [loyloyshopdb]
GO
/****** Object:  Table [dbo].[Details]    Script Date: 1/31/2023 9:37:36 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/31/2023 9:37:36 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Details] ON 
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (4, N'Fixing', CAST(20 AS Decimal(18, 0)), N'Fixing', CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-01-17T00:00:00.000' AS DateTime), 70)
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (6, N'ដេរកែប', CAST(3 AS Decimal(18, 0)), N'ដេរកែប', CAST(N'2023-01-18T15:31:57.473' AS DateTime), CAST(N'2023-01-18T15:31:57.473' AS DateTime), 74)
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (7, N'ដេរកែប', CAST(4 AS Decimal(18, 0)), N'ដេរកែប', CAST(N'2023-01-18T15:35:03.670' AS DateTime), CAST(N'2023-01-18T15:35:03.670' AS DateTime), 68)
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (8, N'ផ្សារកាទែរ', CAST(3 AS Decimal(18, 0)), NULL, CAST(N'2023-01-19T16:22:15.620' AS DateTime), CAST(N'2023-01-19T16:22:15.620' AS DateTime), 78)
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (9, N'ផ្សារដែក', CAST(4 AS Decimal(18, 0)), NULL, CAST(N'2023-01-20T10:52:27.893' AS DateTime), CAST(N'2023-01-20T10:52:27.893' AS DateTime), 75)
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (10, N'បាញ់ថ្នាំ', CAST(20 AS Decimal(18, 0)), NULL, CAST(N'2023-01-24T09:05:48.523' AS DateTime), CAST(N'2023-01-24T09:05:48.523' AS DateTime), 71)
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (11, N'ផ្សារកាទែរ', CAST(15 AS Decimal(18, 0)), NULL, CAST(N'2023-01-24T09:06:35.970' AS DateTime), CAST(N'2023-01-24T09:06:35.970' AS DateTime), 71)
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (12, N'បាញ់ថ្នាំ', CAST(15 AS Decimal(18, 0)), NULL, CAST(N'2023-01-25T16:43:49.500' AS DateTime), CAST(N'2023-01-25T16:43:49.500' AS DateTime), 85)
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (13, N'បាញ់ថ្នាំ', CAST(13 AS Decimal(18, 0)), NULL, CAST(N'2023-01-26T16:44:18.647' AS DateTime), CAST(N'2023-01-26T16:44:18.647' AS DateTime), 78)
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (14, N'តែម ដេរកែប ផ្សារកាទែរ', CAST(30 AS Decimal(18, 0)), NULL, CAST(N'2023-01-26T16:45:31.667' AS DateTime), CAST(N'2023-01-26T16:45:31.667' AS DateTime), 78)
GO
INSERT [dbo].[Details] ([Id], [Name], [Payment], [Note], [CreatedOn], [ModifiedOn], [ProductId]) VALUES (15, N'ជួសជុល', CAST(50 AS Decimal(18, 0)), NULL, CAST(N'2023-01-26T16:49:44.450' AS DateTime), CAST(N'2023-01-26T16:49:44.450' AS DateTime), 89)
GO
SET IDENTITY_INSERT [dbo].[Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Nex', N'ស្រី', N'ស បៃតងខ្ចី', N'300311', N'300311', N'1BW-9936', 2013, N'110', CAST(520 AS Decimal(18, 0)), CAST(600 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T15:12:20.497' AS DateTime), NULL, CAST(N'2023-01-12T15:53:27.330' AS DateTime), 1, 7, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Icon ', N'ស្រី', N'ស', N'0005586', N'0005586', N'1B-0175', 2008, N'110', CAST(320 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-23T15:15:06.837' AS DateTime), NULL, CAST(N'2023-01-05T14:55:33.803' AS DateTime), 2, 16, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Today ', N'ស្រី', N'ស', N'1087578', N'1087578', N'1FK-4010', 2015, N'50', CAST(200 AS Decimal(18, 0)), CAST(285 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T15:19:51.110' AS DateTime), NULL, CAST(N'2023-01-16T10:08:46.297' AS DateTime), 3, 5, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Today', N'ស្រី', N'ស', N'1081999', N'11083337', N'1HV-5503', 2014, N'50', CAST(230 AS Decimal(18, 0)), CAST(270 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T15:23:39.053' AS DateTime), NULL, CAST(N'2023-01-08T15:01:30.957' AS DateTime), 4, 5, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Today', N'', N'', N'None', N'None', N'1A-0894', 2018, N'50', CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-23T15:26:21.757' AS DateTime), NULL, CAST(N'2023-01-04T21:59:56.807' AS DateTime), 5, 5, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Today', N'', N'', N'1596808', N'1607262', N'1CK-8230', 2014, N'50', CAST(200 AS Decimal(18, 0)), CAST(280 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T15:28:09.060' AS DateTime), NULL, CAST(N'2023-01-16T10:10:24.600' AS DateTime), 6, 5, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Suzuki Smash', N'ស្រី', N'ខ្មៅ', N'212398', N'212398', N'1P-8709', 2007, N'110', CAST(300 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-23T15:31:09.017' AS DateTime), NULL, CAST(N'2023-01-05T14:52:24.980' AS DateTime), 7, 2, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Suzuki Smash', N'ស្រី', N'ក្រហម ខ្មៅ', N'153760', N'0106084', N'1CG-7662', 2014, N'110', CAST(350 AS Decimal(18, 0)), CAST(430 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T15:37:44.680' AS DateTime), NULL, CAST(N'2023-01-07T09:50:56.493' AS DateTime), 8, 2, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Suzuki Smash', N'ស្រី', N'ក្រហម ខ្មៅ', N'249186', N'249186', N'1AM-9590', 2010, N'110', CAST(310 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-23T15:41:08.660' AS DateTime), NULL, CAST(N'2023-01-05T14:51:38.787' AS DateTime), 9, 2, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'MSX', N'ប្រុស', N'បៃតង', N'5800348', N'5800348', N'1AJ-1194', 2017, N'110', CAST(305 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-23T15:50:23.513' AS DateTime), NULL, CAST(N'2023-01-05T14:51:14.017' AS DateTime), 10, 4, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Smash Revo', N'ស្រី', N'ខ្មៅ', N'121833', N'121833', N'1BO-8766', 2012, N'110', CAST(340 AS Decimal(18, 0)), CAST(500 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T15:53:28.170' AS DateTime), NULL, CAST(N'2022-12-26T16:16:15.507' AS DateTime), 11, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Icon', N'ស្រី', N'', N'8000489', N'8000489', N'1E-4585', 2009, N'110', CAST(350 AS Decimal(18, 0)), CAST(415 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T15:55:46.467' AS DateTime), NULL, CAST(N'2023-01-18T10:07:52.660' AS DateTime), 12, 16, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Pulsar200', N'ប្រុស', N'ស ខ្មៅ', N'41004', N'45506', N'1CG-7335', 2014, N'200', CAST(360 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-23T16:05:39.077' AS DateTime), NULL, CAST(N'2023-01-05T14:49:56.750' AS DateTime), 14, 13, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Icon', N'ស្រី', N'', N'8000654', N'8000654', N'1AH-0702', 2009, N'110', CAST(220 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-23T16:07:25.897' AS DateTime), NULL, CAST(N'2023-01-05T14:55:21.453' AS DateTime), 15, 16, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Today', N'ស្រី', N'', N'1134696', N'1137175', N'1M-1209', 2016, N'50', CAST(200 AS Decimal(18, 0)), CAST(270 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T16:16:07.463' AS DateTime), NULL, CAST(N'2023-01-02T10:55:46.490' AS DateTime), 16, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Dream', N'ស្រី', N'ខ្មៅ', N'8004658', N'8004658', N'1BH-8814', 2012, N'110', CAST(375 AS Decimal(18, 0)), CAST(520 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T16:18:36.963' AS DateTime), NULL, CAST(N'2023-01-12T15:54:05.480' AS DateTime), 17, 10, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Zoomer', N'ស្រី', N'', N'None', N'None', N'1GW-7403', 2018, N'110', CAST(280 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-23T16:22:01.347' AS DateTime), NULL, CAST(N'2023-01-05T14:48:45.197' AS DateTime), 18, 14, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Zoomer', N'ស្រី', N'ស', N'17092842', N'0092842', N'1U-0048', 2018, N'110', CAST(310 AS Decimal(18, 0)), CAST(525 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T16:24:00.113' AS DateTime), NULL, CAST(N'2022-12-31T13:42:12.813' AS DateTime), 19, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Zoomer', N'ស្រី', N'ក្រហម', N'17051498', N'17051498', N'1GO-8290', 2017, N'110', CAST(185 AS Decimal(18, 0)), CAST(450 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T16:33:45.293' AS DateTime), NULL, CAST(N'2023-01-16T10:13:28.053' AS DateTime), 20, 14, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Suzuki Smash', N'', N'ក្រហម ខ្មៅ', N'148981', N'148981', N'1M-1691', 2018, N'110', CAST(320 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-23T16:36:48.040' AS DateTime), NULL, CAST(N'2023-01-05T14:45:42.533' AS DateTime), 21, 2, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Fino', N'ស្រី', N'', N'060352', N'060352', N'1AK-5995', 2009, N'110', CAST(330 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-23T16:57:38.053' AS DateTime), NULL, CAST(N'2023-01-05T14:45:28.400' AS DateTime), 22, 12, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Icon', N'ស្រី', N'បៃតងខ្ចី', N'0004681', N'0004681', N'1V-5002', 2008, N'110', CAST(350 AS Decimal(18, 0)), CAST(385 AS Decimal(18, 0)), 2, CAST(N'2022-12-23T17:00:39.213' AS DateTime), NULL, CAST(N'2022-12-26T16:32:13.907' AS DateTime), 23, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Icon', N'ស្រី', N'លឿង', N'8001881', N'8001881', N'1K-1581', 2009, N'110', CAST(355 AS Decimal(18, 0)), CAST(420 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T08:23:33.787' AS DateTime), NULL, CAST(N'2023-01-04T08:56:20.133' AS DateTime), 24, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Scoopy', N'ស្រី', N'ខ្មៅ', N'0225738', N'0225738', N'1BC-1168', 2011, N'110', CAST(425 AS Decimal(18, 0)), CAST(500 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T08:48:37.933' AS DateTime), NULL, CAST(N'2023-01-20T09:16:08.033' AS DateTime), 25, 1, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Fino', N'ស្រី', N'ក្រហម', N'002623', N'002623', N'1AA-3957', 2008, N'110', CAST(330 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-24T08:50:39.787' AS DateTime), NULL, CAST(N'2023-01-05T14:44:54.330' AS DateTime), 26, 12, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Scoopy', N'ស្រី', N'ក្រហម ខ្មៅ', N'0179566', N'0179566', N'1BB-0205', 2011, N'110', CAST(310 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-24T08:52:13.660' AS DateTime), NULL, CAST(N'2023-01-05T14:44:32.737' AS DateTime), 27, 1, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Fino', N'ស្រី', N'ខ្មៅ', N'030120', N'030120', N'1C-2709', 2009, N'149', CAST(330 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-24T08:55:00.503' AS DateTime), NULL, CAST(N'2023-01-05T14:44:15.543' AS DateTime), 28, 12, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Fino', N'ស្រី', N'ស​ ទឺកក្រូច', N'030311', N'030311', N'1AJ-7371', 2009, N'149', CAST(330 AS Decimal(18, 0)), CAST(430 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T08:56:29.150' AS DateTime), NULL, CAST(N'2022-12-28T10:42:43.150' AS DateTime), 29, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Fino', N'ស្រី', N'ខ្មៅ', N'547396', N'547396', N'1A-7951', 2007, N'110', CAST(340 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-24T09:05:15.743' AS DateTime), NULL, CAST(N'2023-01-05T14:29:42.817' AS DateTime), 30, 12, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Viva', N'ស្រី', N'ខ្មៅ', N'500140', N'500140', N'1AX-5886', 2011, N'110', CAST(250 AS Decimal(18, 0)), CAST(380 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T09:08:14.710' AS DateTime), NULL, CAST(N'2023-01-17T13:41:50.423' AS DateTime), 31, 3, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Zoomer', N'ស្រី', N'ត្រួយចេក', N'17031025', N'0031192', N'1Q-4893', 2017, N'2008', CAST(215 AS Decimal(18, 0)), CAST(430 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T09:17:00.930' AS DateTime), NULL, CAST(N'2022-12-30T13:14:50.890' AS DateTime), 32, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Air Blade', N'ស្រី', N'ក្រហម ខ្មៅ', N'8000018', N'8000018', N'1AI-9864', 2009, N'110', CAST(345 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-24T09:23:33.523' AS DateTime), NULL, CAST(N'2023-01-13T10:27:19.363' AS DateTime), 33, 8, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Dream', N'ស្រី', N'ខ្មៅ', N'0007540', N'0007540', N'1C-2346', 2010, N'110', CAST(350 AS Decimal(18, 0)), CAST(400 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T09:27:59.853' AS DateTime), NULL, CAST(N'2022-12-25T14:25:26.887' AS DateTime), 34, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Fino', N'ស្រី', N'ខៀវ ខ្ចី', N'136165', N'136165', N'1P-8557', 2007, N'110', CAST(250 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-12-24T09:33:53.277' AS DateTime), NULL, CAST(N'2023-01-05T14:27:49.693' AS DateTime), 35, 12, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'MSX', N'ប្រុស', N'ស', N'5020834', N'5020834', N'1IR-5287', 2016, N'110', CAST(280 AS Decimal(18, 0)), CAST(400 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T09:38:10.170' AS DateTime), NULL, CAST(N'2022-12-29T15:53:51.353' AS DateTime), 36, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Nex', N'ស្រី', N'ត្រួយចេក', N'100825', N'100825', N'1BV-3581', 2013, N'110', CAST(370 AS Decimal(18, 0)), CAST(540 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T09:40:14.443' AS DateTime), NULL, CAST(N'2022-12-30T12:53:57.737' AS DateTime), 37, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Cub70', N'ស្រី', N'ខៀវចាស់', N'8646838', N'8648854', N'5136', 1998, N'70', CAST(230 AS Decimal(18, 0)), CAST(310 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T09:42:38.917' AS DateTime), NULL, CAST(N'2022-12-29T13:22:01.390' AS DateTime), 38, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Click', N'ស្រី', N'ក្រហម ខ្មៅ', N'0221701', N'0221701', N'1AT-6921', 2010, N'110', CAST(420 AS Decimal(18, 0)), CAST(500 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T09:45:07.483' AS DateTime), NULL, CAST(N'2022-12-28T09:43:27.943' AS DateTime), 39, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Click', N'ស្រី', N'លឿង', N'0038495', N'0038495', N'1AH-1187', 2009, N'110', CAST(360 AS Decimal(18, 0)), CAST(425 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T09:46:44.497' AS DateTime), NULL, CAST(N'2023-01-19T11:02:44.450' AS DateTime), 40, 9, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Scopy Mini', N'ស្រី', N'ស​ ខៀវខ្ចី', N'1021358', N'1021358', N'1BL-6191', 2012, N'110', CAST(205 AS Decimal(18, 0)), CAST(260 AS Decimal(18, 0)), 2, CAST(N'2022-12-24T11:24:29.313' AS DateTime), NULL, CAST(N'2023-01-04T08:57:30.730' AS DateTime), 41, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'MSX', N'ប្រុស', N'ក្រហម', N'None', N'None', N'1IQ-7224', 2018, N'110', CAST(170 AS Decimal(18, 0)), CAST(300 AS Decimal(18, 0)), 2, CAST(N'2022-12-25T08:48:31.967' AS DateTime), NULL, CAST(N'2023-01-21T16:39:58.053' AS DateTime), 42, 4, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Air Blade', N'ស្រី', N'ក្រហម ចាស់', N'8000201', N'8000201', N'1Z-8111', 2008, N'110', CAST(320 AS Decimal(18, 0)), CAST(450 AS Decimal(18, 0)), 2, CAST(N'2022-12-26T16:18:11.523' AS DateTime), NULL, CAST(N'2023-01-28T12:22:07.900' AS DateTime), 43, 8, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Scopy ', N'ស្រី', N'ស', N'8000153', N'8000153', N'1AQ-6979', 2010, N'110', CAST(455 AS Decimal(18, 0)), CAST(600 AS Decimal(18, 0)), 2, CAST(N'2022-12-28T16:32:46.650' AS DateTime), NULL, CAST(N'2023-01-04T08:49:23.737' AS DateTime), 44, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Smash', N'ស្រី', N'ខ្មៅ', N'136430', N'136430', N'1CM-1154', 2018, N'110', CAST(310 AS Decimal(18, 0)), CAST(400 AS Decimal(18, 0)), 2, CAST(N'2022-12-28T16:34:49.760' AS DateTime), NULL, CAST(N'2022-12-29T15:35:03.923' AS DateTime), 45, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'អាសង់ការ៉េ', N'ប្រុស', N'ក្រហម ', N'1990175', N'1990175', N'1L-5480', 2005, N'110', CAST(195 AS Decimal(18, 0)), CAST(260 AS Decimal(18, 0)), 2, CAST(N'2022-12-28T16:36:53.130' AS DateTime), NULL, CAST(N'2023-01-02T15:51:36.677' AS DateTime), 46, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'អាសង់ការ៉េ', N'ប្រុស', N'ក្រហម', N'1335918', N'1335918', N'1E-1489', 2005, N'110', CAST(195 AS Decimal(18, 0)), CAST(270 AS Decimal(18, 0)), 2, CAST(N'2022-12-28T16:39:27.520' AS DateTime), NULL, CAST(N'2023-01-08T15:24:06.217' AS DateTime), 47, 15, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Click', N'ប្រុស', N'ខ្មៅ', N'0018849', N'0018849', N'1AD-0083', 2008, N'110', CAST(320 AS Decimal(18, 0)), CAST(380 AS Decimal(18, 0)), 2, CAST(N'2022-12-30T13:25:33.760' AS DateTime), NULL, CAST(N'2023-01-06T21:32:06.613' AS DateTime), 48, 9, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Air Blade', N'ប្រុស', N'ខ្មៅ', N'1050943', N'1016925', N'1F-9670', 2012, N'110', CAST(420 AS Decimal(18, 0)), CAST(490 AS Decimal(18, 0)), 2, CAST(N'2022-12-30T13:26:51.963' AS DateTime), NULL, CAST(N'2022-12-31T10:55:23.127' AS DateTime), 49, NULL, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'CUB 50', N'ស្រី', N'ខ្មៅ', N'0896009', N'2107685', N'1C-4615', 2006, N'50', CAST(250 AS Decimal(18, 0)), CAST(310 AS Decimal(18, 0)), 2, CAST(N'2022-12-31T13:23:14.393' AS DateTime), NULL, CAST(N'2023-01-31T16:20:31.627' AS DateTime), 50, 11, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'CUB 50', N'ស្រី', N'ខ្មៅ', N'0799512', N'0842868', N'1BS-4041', 2013, N'50', CAST(250 AS Decimal(18, 0)), CAST(350 AS Decimal(18, 0)), 2, CAST(N'2022-12-31T14:28:12.517' AS DateTime), NULL, CAST(N'2023-01-07T15:21:50.460' AS DateTime), 51, 11, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Scopy Mini', N'ស្រី', N'ខ្មៅ', N'1009448', N'1032888', N'1BY-5635', 2013, N'50', CAST(200 AS Decimal(18, 0)), CAST(270 AS Decimal(18, 0)), 2, CAST(N'2022-12-31T15:01:56.937' AS DateTime), NULL, CAST(N'2023-01-17T17:03:50.703' AS DateTime), 52, 6, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Click', N'ស្រី', N'ខ្មៅ', N'0038599', N'0038599', N'1L-6758', 2006, N'110', CAST(240 AS Decimal(18, 0)), CAST(350 AS Decimal(18, 0)), 2, CAST(N'2023-01-01T12:16:31.417' AS DateTime), NULL, CAST(N'2023-01-07T13:33:05.413' AS DateTime), 53, 9, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'CUB 50', N'ស្រី', N'ទឺកប្រាក់', N'0758588', N'0801899', N'1L-3677', 2006, N'50', CAST(255 AS Decimal(18, 0)), CAST(350 AS Decimal(18, 0)), 2, CAST(N'2023-01-02T10:57:48.483' AS DateTime), NULL, CAST(N'2023-01-07T13:06:15.673' AS DateTime), 54, 11, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Scopy ', N'ស្រី', N'ស', N'0006076', N'0006076', N'1AP-5550', 2010, N'110', CAST(445 AS Decimal(18, 0)), CAST(580 AS Decimal(18, 0)), 2, CAST(N'2023-01-02T11:03:56.117' AS DateTime), NULL, CAST(N'2023-01-16T10:15:16.387' AS DateTime), 55, 1, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Suzuki Smash', N'ប្រុស', N'ក្រហម', N'116364', N'116364', N'1BJ-4886', 2012, N'110', CAST(365 AS Decimal(18, 0)), CAST(450 AS Decimal(18, 0)), 2, CAST(N'2023-01-04T09:21:12.323' AS DateTime), NULL, CAST(N'2023-01-16T10:49:19.557' AS DateTime), 56, 2, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Dream', N'ស្រី', N'ខ្មៅ', N'8674753', N'8674753', N'1E-6663', 2012, N'110', CAST(555 AS Decimal(18, 0)), CAST(645 AS Decimal(18, 0)), 2, CAST(N'2023-01-04T12:28:20.190' AS DateTime), NULL, CAST(N'2023-01-06T17:13:28.920' AS DateTime), 57, 10, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'CUB', N'ស្រី', N'ខ្មៅ', N'None', N'None', N'None', 2005, N'50', CAST(210 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2023-01-06T12:59:12.823' AS DateTime), NULL, CAST(N'2023-01-16T10:45:50.977' AS DateTime), 58, 11, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Air Blade', N'ស្រី', N'ក្រហម ខ្មៅ', N'0044923', N'0044923', N'1AC-8082', 2008, N'110', CAST(360 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-08T11:36:06.760' AS DateTime), NULL, CAST(N'2023-01-08T11:36:06.760' AS DateTime), 59, 8, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'CUB', N'ស្រី', N'ខ្មៅ', N'3041272', N'3048611', N'1CA-9972', 2013, N'50', CAST(335 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-10T16:03:58.677' AS DateTime), NULL, CAST(N'2023-01-10T16:03:58.677' AS DateTime), 60, 11, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Dream', N'ស្រី', N'ខ្មៅ', N'8510472', N'8510472', N'1AT-5147', 2010, N'110', CAST(540 AS Decimal(18, 0)), CAST(690 AS Decimal(18, 0)), 2, CAST(N'2023-01-10T16:09:46.240' AS DateTime), NULL, CAST(N'2023-01-18T09:19:14.403' AS DateTime), 61, 10, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Scopy', N'ស្រី', N'ស', N'0176773', N'0176773', N'1G-9577', 2012, N'110', CAST(420 AS Decimal(18, 0)), CAST(540 AS Decimal(18, 0)), 2, CAST(N'2023-01-11T10:52:32.870' AS DateTime), NULL, CAST(N'2023-01-11T13:33:42.870' AS DateTime), 62, 1, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Nex', N'ស្រី', N'លឿង', N'100254', N'100254', N'1BK-3840', 2012, N'110', CAST(435 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2023-01-12T15:52:55.027' AS DateTime), NULL, CAST(N'2023-01-13T10:24:55.100' AS DateTime), 63, 7, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Fino', N'ស្រី', N'ស', N'004223', N'004223', N'1AN-2634', 2010, N'110', CAST(250 AS Decimal(18, 0)), CAST(300 AS Decimal(18, 0)), 2, CAST(N'2023-01-12T17:11:44.823' AS DateTime), NULL, CAST(N'2023-01-31T09:32:21.673' AS DateTime), 64, 12, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Icon', N'ស្រី', N'លឿង', N'8000383', N'8000383', N'1AI-2361', 2009, N'110', CAST(275 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-13T10:56:30.883' AS DateTime), NULL, CAST(N'2023-01-13T10:56:30.883' AS DateTime), 65, 16, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Msx', N'ប្រុស', N'ខ្មៅ', N'5800172', N'5800172', N'1GO-9132', 2017, N'110', CAST(125 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-13T13:15:17.917' AS DateTime), NULL, CAST(N'2023-01-13T13:15:17.917' AS DateTime), 66, 4, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'អាសង់ការ៉េ', N'ប្រុស', N'ក្រហម', N'1401667', N'1401626', N'1N-8049', 2012, N'110', CAST(205 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-13T16:28:21.320' AS DateTime), NULL, CAST(N'2023-01-13T16:28:21.320' AS DateTime), 67, 15, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Let', N'ស្រី', N'ស', N'403664', N'403697', N'1CM-8319', 2014, N'110', CAST(400 AS Decimal(18, 0)), CAST(650 AS Decimal(18, 0)), 2, CAST(N'2023-01-16T10:17:33.863' AS DateTime), NULL, CAST(N'2023-01-21T12:46:26.397' AS DateTime), 68, 17, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Icon', N'ស្រី', N'ឈូក', N'0001639', N'0001639', N'1C-4235', 2009, N'110', CAST(350 AS Decimal(18, 0)), CAST(400 AS Decimal(18, 0)), 2, CAST(N'2023-01-16T10:20:03.530' AS DateTime), NULL, CAST(N'2023-01-21T12:52:02.170' AS DateTime), 69, 16, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Let', N'ស្រី', N'ស', N'201837', N'201837', N'1FZ-9060', 2016, N'110', CAST(400 AS Decimal(18, 0)), CAST(560 AS Decimal(18, 0)), 2, CAST(N'2023-01-16T10:28:39.190' AS DateTime), NULL, CAST(N'2023-01-21T08:53:38.873' AS DateTime), 70, 17, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Let', N'ស្រី', N'ស', N'403990', N'404049', N'1CM-4680', 2014, N'110', CAST(455 AS Decimal(18, 0)), CAST(715 AS Decimal(18, 0)), 2, CAST(N'2023-01-16T10:30:58.183' AS DateTime), NULL, CAST(N'2023-01-26T11:13:00.803' AS DateTime), 71, 17, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'CUB 70', N'ស្រី', N'ខ្មៅ', N'1001506', N'1001557', N'1BF-5513', 2008, N'50', CAST(300 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-17T09:59:06.943' AS DateTime), NULL, CAST(N'2023-01-17T09:59:06.943' AS DateTime), 72, 11, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Step', N'ស្រី', N'ក្រហម', N'7170006', N'717006', N'1S-2683', 2007, N'110', CAST(230 AS Decimal(18, 0)), CAST(350 AS Decimal(18, 0)), 2, CAST(N'2023-01-17T10:19:59.447' AS DateTime), NULL, CAST(N'2023-01-23T13:01:34.033' AS DateTime), 73, 18, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'CUB ', N'ស្រី', N'ខ្មៅ', N'0835382', N'0878742', N'1AF-5810', 2008, N'110', CAST(150 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-17T10:28:33.197' AS DateTime), NULL, CAST(N'2023-01-17T10:28:33.197' AS DateTime), 74, 11, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Dream', N'ស្រី', N'ខ្មៅ', N'8868831', N'8868831', N'1BV-6490', 2013, N'110', CAST(535 AS Decimal(18, 0)), CAST(600 AS Decimal(18, 0)), 2, CAST(N'2023-01-18T09:21:29.337' AS DateTime), NULL, CAST(N'2023-01-30T13:58:03.847' AS DateTime), 75, 10, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Viva', N'ស្រី', N'ខ្មៅ', N'341862', N'341862', N'1Y-3028', 2008, N'110', CAST(300 AS Decimal(18, 0)), CAST(400 AS Decimal(18, 0)), 2, CAST(N'2023-01-18T09:25:17.807' AS DateTime), NULL, CAST(N'2023-01-23T13:00:41.423' AS DateTime), 76, 3, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Viva', N'ស្រី', N'ខ្មៅ', N'508478', N'508478', N'1D-4208', 2013, N'110', CAST(330 AS Decimal(18, 0)), CAST(450 AS Decimal(18, 0)), 2, CAST(N'2023-01-18T09:26:31.647' AS DateTime), NULL, CAST(N'2023-01-21T08:54:49.870' AS DateTime), 77, 3, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Clik', N'ស្រី', N'លឿង', N'0007762', N'0007762', N'1AH-2874', 2009, N'110', CAST(310 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-18T10:03:41.360' AS DateTime), NULL, CAST(N'2023-01-18T10:03:41.363' AS DateTime), 78, 9, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Today', N'ស្រី', N'ខ្មៅ', N'1578095', N'1580529', N'1IG-5729', 2004, N'50', CAST(220 AS Decimal(18, 0)), CAST(290 AS Decimal(18, 0)), 2, CAST(N'2023-01-18T14:09:18.520' AS DateTime), NULL, CAST(N'2023-01-28T16:25:12.693' AS DateTime), 79, 5, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Scopy', N'ស្រី', N'ស', N'0212320', N'0212320', N'1CV-8485', 2014, N'110', CAST(400 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-19T11:50:54.757' AS DateTime), NULL, CAST(N'2023-01-19T11:50:54.757' AS DateTime), 80, 1, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Susuki step', N'ស្រី', N'ខ្មៅ', N'503057', N'503057', N'1U-5058', 2007, N'110', CAST(200 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-19T12:41:49.717' AS DateTime), NULL, CAST(N'2023-01-19T12:41:49.717' AS DateTime), 81, 18, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'smash', N'ប្រុស', N'ក្រហម', N'117143', N'117143', N'1BN-8324', 2012, N'110', CAST(410 AS Decimal(18, 0)), CAST(520 AS Decimal(18, 0)), 2, CAST(N'2023-01-19T13:59:23.743' AS DateTime), NULL, CAST(N'2023-01-25T14:00:30.103' AS DateTime), 82, 2, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'CUB', N'ស្រី', N'ស', N'None', N'None', N'3175', 2005, N'110', CAST(150 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-22T09:06:40.383' AS DateTime), NULL, CAST(N'2023-01-22T09:06:40.387' AS DateTime), 83, 11, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Today', N'ស្រី', N'ក្រហម', N'1000186', N'1000136', N'1DD-4271', 2015, N'50', CAST(200 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-24T09:20:38.477' AS DateTime), NULL, CAST(N'2023-01-24T09:20:38.480' AS DateTime), 84, 5, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Click', N'ស្រី', N'ខ្មៅ', N'0018849', N'0018849', N'1AD-0083', 2009, N'110', CAST(300 AS Decimal(18, 0)), CAST(450 AS Decimal(18, 0)), 2, CAST(N'2023-01-24T14:46:14.400' AS DateTime), NULL, CAST(N'2023-01-27T11:32:07.963' AS DateTime), 85, 9, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Step', N'ស្រី', N'ក្រហម ខ្មៅ', N'350385', N'350385', N'1AP-9253', 2009, N'110', CAST(230 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-25T15:24:17.747' AS DateTime), NULL, CAST(N'2023-01-25T15:24:17.747' AS DateTime), 86, 18, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'smash V', N'ប្រុស', N'ខ្មៅ', N'116817', N'116817', N'1BI-0940', 2012, N'110', CAST(400 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-25T15:26:03.140' AS DateTime), NULL, CAST(N'2023-01-25T15:26:03.140' AS DateTime), 87, 2, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'smash v', N'ស្រី', N'ខ្មៅ', N'114056', N'114056', N'1BG-6634', 2012, N'110', CAST(360 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-26T11:09:25.517' AS DateTime), NULL, CAST(N'2023-01-26T11:09:25.520' AS DateTime), 88, 2, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'អាគ្រា', N'ស្រី', NULL, N'1136336', N'1131992', N'1FD-7753', 2015, N'50', CAST(120 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-26T16:49:14.503' AS DateTime), NULL, CAST(N'2023-01-26T16:49:14.503' AS DateTime), 89, 5, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'viva', N'ស្រី', N'ខ្មៅ', N'101788', N'101788', N'1A-1664', 2006, N'110', CAST(250 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-28T12:24:09.163' AS DateTime), NULL, CAST(N'2023-01-28T12:24:09.163' AS DateTime), 90, 3, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'CUB', N'ស្រី', N'ខ្មៅ', N'None', N'None', N'1111', 2008, N'50', CAST(180 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-28T16:22:51.110' AS DateTime), NULL, CAST(N'2023-01-28T16:22:51.110' AS DateTime), 91, 11, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Today', N'ស្រី', NULL, N'1525383', N'1523524', N'1FI-0177', 2014, N'50', CAST(150 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-30T11:12:04.067' AS DateTime), NULL, CAST(N'2023-01-30T11:12:04.067' AS DateTime), 93, 5, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'scopy', N'ស្រី', N'ស', N'5289913', N'5289913', N'1GO-4800', 2016, N'110', CAST(650 AS Decimal(18, 0)), CAST(800 AS Decimal(18, 0)), 2, CAST(N'2023-01-30T11:15:19.083' AS DateTime), NULL, CAST(N'2023-01-30T11:22:34.110' AS DateTime), 94, 1, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Let', N'ស្រី', NULL, N'103120', N'103120', N'1F-6426', 2016, N'110', CAST(570 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-30T11:21:46.767' AS DateTime), NULL, CAST(N'2023-01-30T11:21:46.767' AS DateTime), 95, 17, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Scopy', N'ស្រី', N'ស', N'1111', N'111', N'1AP-5550', 2010, N'110', CAST(400 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-30T11:24:04.320' AS DateTime), NULL, CAST(N'2023-01-30T11:24:04.320' AS DateTime), 96, 1, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'scoopy', N'ស្រី', N'ស', N'8001910', N'8001910', N'1BS-1455', 2013, N'110', CAST(480 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(N'2023-01-30T11:33:46.483' AS DateTime), NULL, CAST(N'2023-01-30T12:59:50.920' AS DateTime), 97, 1, NULL)
GO
INSERT [dbo].[Products] ([Name], [Type], [Color], [EngineNumber], [FrameNumber], [PlateNumber], [MadeYear], [Power], [PriceBuy], [PriceSell], [Status], [CreatedOn], [DateSell], [ModifiedOn], [Id], [CategoryId], [Description]) VALUES (N'Zoomer x', N'ស្រី', N'ខ្មៅ', N'170901785', N'170901785', N'1HK-9292', 2017, N'110', CAST(310 AS Decimal(18, 0)), NULL, 1, CAST(N'2023-01-31T09:44:18.687' AS DateTime), NULL, CAST(N'2023-01-31T09:44:18.687' AS DateTime), 98, 14, NULL)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Details] ADD  DEFAULT ((0)) FOR [Payment]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
