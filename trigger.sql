use ITS1SQL
go
create trigger Everlast
on Вивчення
for insert
as
if @@ROWCOUNT = 0--показує скільки рядків ми збираємося вставити
return--вихід з тригера
set nocount on-- отключає вивід повідомлень про кількість оброблених записів повишает производительность
if @@ROWCOUNT >= 1
begin
if exists(Select*from inserted  where inserted.Hours > 180)
begin rollback tran
print 'Бабааааах'
execute Learn GroupID, SubjectID, 
TeacherID, SubjectTypeID, ExamTypeID, 
Hours, Semesters, Access_mark_to_exam;
end
end
