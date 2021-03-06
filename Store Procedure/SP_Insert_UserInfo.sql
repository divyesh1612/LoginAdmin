IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CreateUserInfo') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
    DROP PROCEDURE dbo.CreateUserInfo
GO

CREATE PROCEDURE dbo.CreateUserInfo
(   @FirstName varchar(20) ,
    @LastName varchar(20) ,
    @Address varchar(20) ,
    @City varchar(20) ,
    @Province varchar(20) ,
    @Country varchar(20) ,
    @PhoneNumber varchar(20) ,
    @Email varchar(20) ,
    @Password varchar(20) ,
    @isAdmin int
)
AS
BEGIN
    SET NOCOUNT ON
    INSERT [UserInfo]
    (
       [FirstName],
		[LastName],
		[Address],
		[City],
		[Province],
		[Country],
		[PhoneNumber],
		[Email],
		[Password],
		[isAdmin]
    )
    VALUES
    (
		@FirstName,
		@LastName,
		@Address,
		@City,
		@Province,
		@Country,
		@PhoneNumber,
		@Email,
		@Password,
		 @isAdmin
    )

END
