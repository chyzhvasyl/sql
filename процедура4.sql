use ITS1SQL
go
create procedure TheBestOfTheBest
As
begin
 create table TheBestOfTheBest1
 (
 LastName nvarchar(255) null,
 FirstName nvarchar(255) null,
 NameGroup  nvarchar(255) null,
 NameSubject nvarchar(255) null,
 LastNameTeacher nvarchar(255) null,
 FirstNameTeacher nvarchar(255) null,
 Mark int null
 )
 insert into TheBestOfTheBest1
  (
  LastName, FirstName,  NameGroup, 
  LastNameTeacher, FirstNameTeacher, 
  NameSubject, Mark
  )
 SELECT top (5)  Студент.LastName 
 AS Студент_LastName, Студент.FirstName 
 AS Студент_FirstName, Група.Name 
 AS Група_Name, Викладач.LastName 
 AS Викладач_LastName, Викладач.FirstName 
 AS Викладач_FirstName, Предмет.Name 
 AS Предмет_Name, Успішність.Mark
FROM (Предмет INNER JOIN Успішність ON Предмет.[SubjectID] = Успішність.[SubjectID]) 
INNER JOIN ((Група INNER JOIN Студент ON Група.[GroupID] = Студент.[GroupID]) 
INNER JOIN (Викладач INNER JOIN Вивчення 
ON Викладач.[TeacherID] = Вивчення.[TeacherID]) 
ON Група.[GroupID] = Вивчення.[GroupID]) 
ON Предмет.[SubjectID] = Вивчення.[SubjectID]
where Успішність.Mark > 2
end
return
