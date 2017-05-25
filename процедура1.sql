use ITS1SQL
go
create procedure deletedata
as
begin
delete from [Навантаження викладача] where [Нагрузка в годинах]<60
end
return
