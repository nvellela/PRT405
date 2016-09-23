USE [DOTNETDB]
GO

/****** Object:  Table [dbo].[User]    Script Date: 23/09/2016 11:13:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[Username] [varchar](30) NOT NULL,
	[Name] [varchar](50) NULL,
	[Age] [int] NULL,
	[Address] [varchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO


