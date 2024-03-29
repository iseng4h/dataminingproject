USE [DMP]
GO

/****** Object:  StoredProcedure [dbo].[WEBAPP_READ]    Script Date: 04/26/2010 02:25:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[WEBAPP_READ] (@DATANAME varchar(50)) AS 

SELECT ROW_ID, COLUMN_ID, VALUE FROM ALGORITHM_DATASTORE WHERE DATA_NAME = @DATANAME
GO

/****** Object:  StoredProcedure [dbo].[WEBAPP_WRITE]    Script Date: 04/26/2010 02:25:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[WEBAPP_WRITE] (@DATA_NAME varchar(50), @ROW_ID int, @COLUMN_ID int, @VALUE varchar(50)) AS 

INSERT INTO ALGORITHM_DATASTORE(DATA_NAME, ROW_ID, COLUMN_ID, VALUE)
VALUES
(@DATA_NAME, @ROW_ID, @COLUMN_ID, @VALUE)

GO

