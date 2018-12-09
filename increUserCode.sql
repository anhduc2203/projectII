create trigger tr_NextUserCode on dbo.USERS
for insert
as
	begin
		declare @lastBookCode varchar(10)
		set @lastBookCode = (select top 1 UserCode from dbo.USERS order by UserCode desc)
		update dbo.USERS set UserCode = dbo.func_NextID(@lastBookCode, 'USER', 10) where UserCode=''
	end

	insert into dbo.USERS values(
	'', 
	'abc4',
	'123456',
	'1234',
	'1345',
	'1234123',
	'1234123',
	'12341234',
	'124312',
	'13412'
	)