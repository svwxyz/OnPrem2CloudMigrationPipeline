CREATE PROCEDURE dbo.updatingwtr
    @tblename  VARCHAR(200),
    @maxDate   DATETIME2
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.wtr
    SET 
        last_uploaded = @maxDate,
        last_updated  = CAST(
                            SYSDATETIMEOFFSET() 
                            AT TIME ZONE 'India Standard Time'
                         AS DATETIME2
                        )
    WHERE table_name = @tblename;
END;
GO
