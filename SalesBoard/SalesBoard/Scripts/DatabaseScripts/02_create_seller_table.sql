USE [DOTNETDB]
GO

/****** Object:  Table [dbo].[Seller]    Script Date: 23/09/2016 11:18:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Seller](
	[Seller] [varchar](30) NULL,
	[Buyer] [varchar](30) NULL,
	[TotalSpent] [money] NULL
)

GO

ALTER TABLE [dbo].[Seller]  WITH CHECK ADD  CONSTRAINT [FK_Seller.Buyer_User.Username] FOREIGN KEY([Buyer])
REFERENCES [dbo].[User] ([Username])
GO

ALTER TABLE [dbo].[Seller] CHECK CONSTRAINT [FK_Seller.Buyer_User.Username]
GO

ALTER TABLE [dbo].[Seller]  WITH CHECK ADD  CONSTRAINT [FK_Seller.Seller_User.Username] FOREIGN KEY([Seller])
REFERENCES [dbo].[User] ([Username])
GO

ALTER TABLE [dbo].[Seller] CHECK CONSTRAINT [FK_Seller.Seller_User.Username]
GO


