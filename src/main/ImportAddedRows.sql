SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*[[LICENSE]]*/
CREATE PROCEDURE [dbo].[ImportAddedRows]
	@our_table_name sysname,
	@their_table_name sysname,
	@map nvarchar(max) = null,
	@join nvarchar(max) = null,
	@use nvarchar(max) = null,
	@interleave bit = 1
AS
BEGIN
	SET NOCOUNT ON;

	EXEC core.SqlDataComparison
		@our_table_name = @our_table_name,
		@their_table_name = @their_table_name,
		@map = @map,
		@join = @join,
		@use = @use,
		@interleave = @interleave,
		@import = 1,
		@added_rows = 1
END
GO