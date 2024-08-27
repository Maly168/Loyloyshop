USE [sealongmaly_loyloyshopdb]
GO

INSERT INTO [dbo].[Details]
           ([Name]
           ,[Payment]
           ,[Note]
           ,[CreatedOn]
           ,[ModifiedOn]
           ,[ProductId])
     VALUES
           (<Name, nvarchar(50),>
           ,<Payment, decimal(18,0),>
           ,<Note, nvarchar(300),>
           ,<CreatedOn, datetime,>
           ,<ModifiedOn, datetime,>
           ,<ProductId, int,>)
GO

