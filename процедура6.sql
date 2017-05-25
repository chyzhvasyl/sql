use ITS1SQL
go
create procedure Learn
(
@GroupID int ,
@SubjectID int ,
@TeacherID int ,
@SubjectTypeID int ,
@ExamTypeID int ,
@Hours int ,
@Semesters int ,
@Access_mark_to_exam int
)
As
begin
insert  into dbo.Вивчення(Вивчення.GroupID, Вивчення.SubjectID, Вивчення.TeacherID, Вивчення.SubjectTypeID, Вивчення.ExamTypeID, Вивчення.Hours, Вивчення.Semesters, Вивчення.Access_mark_to_exam)	
values 
(@GroupID, @SubjectID, @TeacherID, @SubjectTypeID, @ExamTypeID, @Hours, @Semesters, @Access_mark_to_exam)
end
return




