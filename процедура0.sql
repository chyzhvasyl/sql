use ITS1SQL
go
create procedure AddData
(
@GroupID int,
@StudentID int,
@Number int,
@LastName nvarchar(255),
@FirsName nvarchar(255),
@BirthDate datetime,
@Adress nvarchar(255),
@P_Ball int
)
As
begin
insert  into dbo.Студент(Студент.GroupID, Студент.StudentID, Студент.Number, Студент.LastName, Студент.FirstName, Студент.BirthDate, Студент.Adress, Студент.P_ball)	
values 
(@GroupID, @StudentID, @Number, @LastName, @FirsName, @BirthDate, @Adress, @P_Ball)
end
return




