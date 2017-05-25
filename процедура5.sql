use ITS1SQL
go
create procedure TheBestOfTheBest2
As
begin
 SELECT top(5) Студент.LastName 
 AS Студент_LastName, Студент.FirstName 
 AS Студент_FirstName, Група.Name 
 AS Група_Name, Викладач.LastName 
 AS Викладач_LastName, Викладач.FirstName 
 AS Викладач_FirstName, Предмет.Name 
 AS Предмет_Name, Успішність.Mark 
 INTO TheBestOfTheBest123
FROM (Предмет INNER JOIN Успішність ON Предмет.[SubjectID] = Успішність.[SubjectID]) 
INNER JOIN ((Група INNER JOIN Студент ON Група.[GroupID] = Студент.[GroupID]) 
INNER JOIN (Викладач INNER JOIN Вивчення ON Викладач.[TeacherID] = Вивчення.[TeacherID]) 
ON Група.[GroupID] = Вивчення.[GroupID]) 
ON Предмет.[SubjectID] = Вивчення.[SubjectID]
where Успішність.Mark > 2
end
return
