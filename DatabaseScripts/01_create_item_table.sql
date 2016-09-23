USE [DOTNETDB]
GO

/****** Object:  Table [dbo].[Item]    Script Date: 23/09/2016 11:17:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Item](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Seller] [varchar](30) NOT NULL,
	[Item] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item.Seller_User.Username] FOREIGN KEY([Seller])
REFERENCES [dbo].[User] ([Username])
GO

ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item.Seller_User.Username]
GO


