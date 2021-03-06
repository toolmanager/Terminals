USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[SetFavoriteIcon]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SetFavoriteIcon]
(
  @FavoriteId int,
  @IconData varbinary(max)
)

AS
update  Favorites
set     IconData = @IconData
WHERE   (Id = @FavoriteId)
GO
