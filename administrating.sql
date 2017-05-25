create login babaik

with password='1234'

create login babuska

with password='1234'

create login userok

with password='1234'

create login userik

with password='1234'

create user babaik for login babaik

create user babuska for login babuska

create user userok for login userok

create user userik for login userik


create role selectandview

deny create table, update to selectandview

create role adminn

grant insert, select, update, delete, references to adminn

execute sp_addrolemember 'selectandview', 'babaik'

execute sp_addrolemember 'selectandview', 'babuska'

execute sp_addrolemember 'andminn', 'userok'



create role bannedrole

deny all to bannedrole

execute sp_addrolemember 'bannedrole', 'userik'
