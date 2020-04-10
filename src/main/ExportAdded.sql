SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*[[LICENSE]]*/
CREATE PROCEDURE [dbo].[ExportAdded]
	@ourTableName sysname,
	@theirTableName sysname,
	@map nvarchar(max) = null,
	@join nvarchar(max) = null,
	@use nvarchar(max) = null,
	@ids nvarchar(max) = null,
	@where nvarchar(max) = null,
	@showSql bit = null,
	@interleave bit = null
AS
BEGIN
	SET NOCOUNT ON;

	EXEC core.SqlDataComparison
		@ourTableName = @ourTableName,
		@theirTableName = @theirTableName,
		@map = @map,
		@join = @join,
		@use = @use,
		@ids = @ids,
		@where = @where,
		@showSql = @showSql,
		@interleave = @interleave,
		@import = -1,
		@added_rows = 1
END
GO
