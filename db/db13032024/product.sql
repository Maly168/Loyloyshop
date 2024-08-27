USE [sealongmaly_loyloyshopdb]
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
           ,[ModifiedOn]
           ,[CategoryId]
           ,[Description]
           ,[SellingPrice])
     VALUES
           (<Name, nvarchar(50),>
           ,<Type, nvarchar(50),>
           ,<Color, nvarchar(50),>
           ,<EngineNumber, nvarchar(50),>
           ,<FrameNumber, nvarchar(50),>
           ,<PlateNumber, nvarchar(50),>
           ,<MadeYear, int,>
           ,<Power, nvarchar(50),>
           ,<PriceBuy, decimal(18,0),>
           ,<PriceSell, decimal(18,0),>
           ,<Status, int,>
           ,<CreatedOn, datetime,>
           ,<DateSell, datetime,>
           ,<ModifiedOn, datetime,>
           ,<CategoryId, int,>
           ,<Description, nvarchar(500),>
           ,<SellingPrice, decimal(18,0),>)
GO

