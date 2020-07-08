Create Database AppDbApi

USE [AppDbApi]
GO

/****** Object:  Table [dbo].[Categories]    Script Date: 7/8/2020 6:32:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Categories](
	[CategoryRowId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [nvarchar](max) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[BasePrice] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryRowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [AppDbApi]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 7/8/2020 6:32:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[ProductRowId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [nvarchar](max) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Manufacturer] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[CategoryRowId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductRowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryRowId] FOREIGN KEY([CategoryRowId])
REFERENCES [dbo].[Categories] ([CategoryRowId])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryRowId]
GO

