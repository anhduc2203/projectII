USE [BOOKSHOP]
GO
/****** Object:  Trigger [dbo].[tr_NextUserCode]    Script Date: 1/3/2019 4:10:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[tr_NextUserCode] ON [dbo].[USERS]
FOR INSERT
AS
	BEGIN
		DECLARE @lastBookCode VARCHAR(10)
		SET @lastBookCode = (SELECT TOP 1 UserCode FROM dbo.USERS ORDER BY UserCode DESC)
		UPDATE dbo.USERS SET UserCode = dbo.func_NextID(@lastBookCode,'USER',10) WHERE UserCode=''
	END