﻿CREATE DATABASE [ImageHandlerDB]

GO

USE [ImageHandlerDB]

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_Image](
	[ImageId] [UNIQUEIDENTIFIER] NOT NULL,
	[ImageName] [VARCHAR](100) NOT NULL,
	[ImageType] [VARCHAR](20) NOT NULL,
	[ImageData] [IMAGE] NOT NULL,
	[CreateDate] [DATETIME] NOT NULL,
 CONSTRAINT [pk_Image] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_Image] ADD  DEFAULT (NEWID()) FOR [ImageId]
GO

ALTER TABLE [dbo].[tbl_Image] ADD  DEFAULT (GETDATE()) FOR [CreateDate]
GO