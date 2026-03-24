CREATE TABLE [dbo].[Dogs]
(
  [Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  [Name] NVARCHAR(200) NOT NULL UNIQUE,
  [IsGoodDog] BIT NOT NULL CONSTRAINT [DF_Dogs_IsGoodDog_True] DEFAULT ((1)),
  [AgeYears] INT NOT NULL,
  [FurColor] NVARCHAR(100) NOT NULL,
  [WeightKilo] DECIMAL(5,1) NOT NULL,
  CONSTRAINT [CK_Dogs_IsGoodDog_AlwaysTrue] CHECK ([IsGoodDog] = 1)
)
