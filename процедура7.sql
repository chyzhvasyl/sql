use ITS1SQL
go
create procedure updateLearn
as
begin
 update dbo.Вивчення 
 set Hours = '',
 Semesters = '',
 Access_mark_to_exam = ''
select*from Вивчення
 end
 return
