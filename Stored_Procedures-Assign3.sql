create table tblemployee(id int primary key identity,name varchar(20),gender varchar(10),
salary int,depatid int)
insert into tblemployee values('tom','male',30000,2),('john','male',20000,1),('mary','female',25000,3),
('elizabeth','female',23000,3),('jeremy','male',28000,2)

--1
create  proc uspwelcome_note
as
begin
print 'welcome to SQL Server'
end
exec uspwelcome_note

--2
create proc usptblemployee(@gender varchar(20),@depatid int)
as
begin
select name,gender,salary from tblemployee
where gender=@gender and depatid=@depatid
end

exec usptblemployee 'male',2
drop proc usptblemployee

--3
create proc usptblemployee(@gender varchar(20),@depatid int,
@totalemployeecount int output)
as
begin
select name,gender,salary from tblemployee
where gender=@gender and depatid=@depatid
select @totalemployeecount=@@ROWCOUNT
end

declare @count int
exec usptblemployee 'male',2,@totalemployeecount=@count output
select @count as 'total employee'

drop proc usptblemployee

--4
create proc usptblemployee
as
begin
select gender,count(gender) as 'total employee' from tblemployee
group by gender
end

exec usptblemployee

drop proc usptblemployee

--5
create proc uspadd(@n1 int = 2,
@n2 int =4,
@n3 int =6)
as
begin 
declare @sum int
set @sum=@n1+@n2+@n3
select @sum as 'total sum'
end

exec uspadd 10,23,10