CREATE TABLE [dbo].[Items] (
    [ID]          INT             IDENTITY (1, 1) NOT NULL,
    [Item]        VARCHAR (50)    NOT NULL,
    [about]       VARCHAR (400)   NULL,
    [Price]       DECIMAL (10, 2) NOT NULL,
    [Calories]    INT             NULL,
    [Inventory]   INT             NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

