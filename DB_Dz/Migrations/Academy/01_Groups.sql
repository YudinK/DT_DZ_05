CREATE TABLE [dbo].[Groups] 
(
    [Id]     INT           IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (10) NOT NULL,
    [Rating] INT           NOT NULL,
    [Year]   INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Name] ASC),
    CHECK ([Name]<>''),
    CHECK ([Rating]>=(0) AND [Rating]<=(5)),
    CHECK ([Year]>=(1) AND [Year]<=(5))
);