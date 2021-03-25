create table if not exists account
(
	accountID varchar(100) charset utf8 not null
		primary key,
	userName varchar(50) charset utf8 not null,
	pw varchar(300) charset utf8 not null,
	roleID varchar(100) charset utf8 not null
)
comment 'thông tin tài khoản';

create table if not exists ages
(
	ageID varchar(100) charset utf8 not null
		primary key,
	name varchar(50) charset utf8 not null
);

create table if not exists booking
(
	bookingID varchar(100) charset utf8 not null
		primary key,
	customerID varchar(100) charset utf8 not null,
	employeesID varchar(100) charset utf8 not null,
	BookingDate datetime not null,
	totalMoney decimal default 0 null
);

create table if not exists customer
(
	customerID varchar(100) charset utf8 not null
		primary key,
	firstName varchar(50) charset utf8 null,
	lastName varchar(50) charset utf8 not null,
	email varchar(100) charset utf8 null,
	birthDay date not null,
	CCID int not null,
	phoneNumber varchar(40) charset utf8 null
)
comment 'bảnh lưu khách hàng';

create table if not exists diadiemdi
(
	landMarksID varchar(100) not null,
	tourID varchar(45) not null,
	primary key (landMarksID, tourID)
);

create table if not exists employees
(
	employeeID varchar(100) charset utf8 not null
		primary key,
	firstName varchar(50) charset utf8 not null,
	lastName varchar(50) charset utf8 null,
	email varchar(100) charset utf8 null,
	CCID varchar(50) charset utf8 null,
	birthDay date not null,
	phoneNumber varchar(50) charset utf8 null,
	address varchar(200) charset utf8 null
)
comment 'bảng thông tin nhân viên';

create table if not exists landmarks
(
	landMarkID varchar(100) charset utf8 not null,
	provinceID varchar(100) charset utf8 not null,
	landMarkName varchar(200) charset utf8 default '' not null,
	details varchar(2000) charset utf8 null,
	primary key (landMarkID, provinceID)
)
comment 'địa danh';

create table if not exists province
(
	provinceID varchar(100) charset utf8 not null
		primary key,
	provinceName varchar(100) charset utf8 not null
);

create table if not exists role
(
	roleID varchar(100) charset utf8 not null
		primary key,
	name varchar(100) charset utf8 not null,
	description varbinary(300) null
);

create table if not exists ticket
(
	ticketID varbinary(100) not null
		primary key,
	bookingID varchar(100) charset utf8 not null,
	customerID varchar(100) charset utf8 not null,
	ageID varchar(100) charset utf8 not null
);

create table if not exists tour
(
	tourID varchar(100) charset utf8 not null
		primary key,
	tourName varchar(100) charset utf8 not null,
	vehicle varchar(100) charset utf8 null,
	price decimal default 0 not null,
	startDay datetime not null,
	seats int default 1 not null
)
comment 'thông tin tour -- seats người đi trong 1 tour -- startday ngày giời tour bắt đầu';

create table if not exists tourdetails
(
	tourID varchar(100) charset utf8 not null
		primary key,
	contents varchar(2000) charset utf8 null
);

create table if not exists tourprices
(
	ageID varchar(100) charset utf8 not null,
	tourID varchar(100) charset utf8 not null,
	price decimal default 0 not null,
	primary key (ageID, tourID)
)
comment 'bảng giá của một tour';

