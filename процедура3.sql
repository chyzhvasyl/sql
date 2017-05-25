use ITS1SQL
go
create procedure upgrade
As
begin
update ”сп≥шн≥сть 
Set Mark='3'
where StudentID=any( 
select StudentID 
from ”сп≥шн≥сть 
group by Mark, StudentID 
having mark=1 and count(Mark)>=1
)
select*from ”сп≥шн≥сть
end
