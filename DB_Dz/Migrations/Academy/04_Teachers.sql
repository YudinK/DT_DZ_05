CREATE TABLE [dbo].[Teachers] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [EmploymentDate] DATE           NOT NULL,
    [IsAssistant]    BIT            DEFAULT ((0)) NOT NULL,
    [IsProfessor]    BIT            DEFAULT ((0)) NOT NULL,
    [Name]           NVARCHAR (MAX) NOT NULL,
    [Position]       NVARCHAR (MAX) NOT NULL,
    [Premium]        MONEY          DEFAULT ((0)) NOT NULL,
    [Salary]         MONEY          NOT NULL,
    [Surname]        NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CHECK ([EmploymentDate]<='01.01.1990'),
    CHECK ([Name]<>''),
    CHECK ([Position]<>''),
    CHECK ([Premium]>=(0)),
    CHECK ([Salary]>(0)),
    CHECK ([Surname]<>'')
);

