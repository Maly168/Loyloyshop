USE [loyloyshopdb]
GO

INSERT INTO [dbo].[Products]
           ([Name]
           ,[Type]
           ,[Color]
           ,[EngineNumber]
           ,[FrameNumber]
           ,[PlateNumber]
           ,[MadeYear]
           ,[Power]
           ,[PriceBuy]
           ,[PriceSell]
           ,[Status]
           ,[CreatedOn]
           ,[DateSell]
           ,[ModifiedOn])
     VALUES
           (<Name, nvarchar(50),>
           ,<Type, nvarchar(50),>
           ,<Color, nvarchar(50),>
           ,<EngineNumber, nvarchar(100),>
           ,<FrameNumber, nvarchar(100),>
           ,<PlateNumber, nvarchar(100),>
           ,<MadeYear, int,>
           ,<Power, nvarchar(50),>
           ,<PriceBuy, decimal(18,0),>
           ,<PriceSell, decimal(38,17),>
           ,<Status, int,>
           ,<CreatedOn, datetime,>
           ,<DateSell, datetime,>
           ,<ModifiedOn, datetime,>)
GO

