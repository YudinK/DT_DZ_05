CREATE TABLE [dbo].[Departments] 
(
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Financing] MONEY          DEFAULT ((0)) NOT NULL,
    [Name]      NVARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Name] ASC),
    CHECK ([Financing]>=(0)),
    CHECK ([Name]<>'')
);