create table if not exists ages
(
	ageID varchar(100) charset utf8 not null
		primary key,
	name varchar(50) charset utf8 not null
);

create table if not exists province
(
	provinceID varchar(100) charset utf8 not null
		primary key,
	provinceName varchar(100) charset utf8 not null
);

create table if not exists landmarks
(
	landMarkID varchar(100) charset utf8 not null
		primary key,
	provinceID varchar(100) charset utf8 not null,
	landMarkName varchar(200) charset utf8 default '' not null,
	details varchar(2000) charset utf8 null,
	constraint fk_landmarks_province1
		foreign key (provinceID) references province (provinceID)
)
comment 'địa danh';

create index fk_landmarks_province1_idx
	on landmarks (provinceID);

create table if not exists role
(
	roleID varchar(100) charset utf8 not null
		primary key,
	name varchar(100) charset utf8 not null,
	description varbinary(300) null
);

create table if not exists account
(
	accountID varchar(100) charset utf8 not null
		primary key,
	userName varchar(50) charset utf8 not null,
	pw varchar(300) charset utf8 not null,
	status tinyint default 1 not null comment '1 active
0 inactive',
	roleID varchar(100) charset utf8 not null,
	constraint fk_account_role1
		foreign key (roleID) references role (roleID)
)
comment 'thông tin tài khoản';

create index fk_account_role1_idx
	on account (roleID);

create table if not exists customer
(
	customerID varchar(100) charset utf8 not null,
	firstName varchar(50) charset utf8 null,
	lastName varchar(50) charset utf8 not null,
	email varchar(100) charset utf8 null,
	birthDay date not null,
	CCID int not null,
	phoneNumber varchar(40) charset utf8 null,
	accountID varchar(100) charset utf8 not null,
	primary key (customerID, accountID),
	constraint account_accountID_UNIQUE
		unique (accountID),
	constraint fk_customer_account
		foreign key (accountID) references account (accountID)
)
comment 'bảnh lưu khách hàng';

create index fk_customer_account_idx
	on customer (accountID);

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
	address varchar(200) charset utf8 null,
	accountID varchar(100) charset utf8 not null,
	constraint fk_employees_account1
		foreign key (accountID) references account (accountID)
)
comment 'bảng thông tin nhân viên';

create table if not exists booking
(
	bookingID varchar(100) charset utf8 not null
		primary key,
	customerID varchar(100) charset utf8 not null,
	employeesID varchar(100) charset utf8 not null,
	BookingDate datetime not null,
	totalMoney decimal default 0 null,
	constraint fk_booking_customer1
		foreign key (customerID) references customer (customerID),
	constraint fk_booking_employees
		foreign key (employeesID) references employees (employeeID)
);

create index fk_booking_customer1_idx
	on booking (customerID);

create index fk_booking_employees_idx
	on booking (employeesID);

create index fk_employees_account1_idx
	on employees (accountID);

create table if not exists pricedetails
(
	bookingID varchar(100) charset utf8 not null,
	ageID varchar(100) charset utf8 not null,
	quantity int not null,
	price decimal not null,
	primary key (bookingID, ageID),
	constraint fk_priceDetails_ages1
		foreign key (ageID) references ages (ageID),
	constraint fk_priceDetails_booking1
		foreign key (bookingID) references booking (bookingID)
);

create index fk_priceDetails_ages1_idx
	on pricedetails (ageID);

create index fk_priceDetails_booking1_idx
	on pricedetails (bookingID);

create table if not exists ticket
(
	ticketID varbinary(100) not null
		primary key,
	bookingID varchar(100) charset utf8 not null,
	employeesID varchar(100) charset utf8 not null,
	ageID varchar(100) charset utf8 not null,
	constraint fk_ticket_ages1
		foreign key (ageID) references ages (ageID),
	constraint fk_ticket_booking1
		foreign key (bookingID) references booking (bookingID),
	constraint fk_ticket_employees1
		foreign key (employeesID) references employees (employeeID)
);

create index fk_ticket_ages1_idx
	on ticket (ageID);

create index fk_ticket_booking1_idx
	on ticket (bookingID);

create index fk_ticket_employees1_idx
	on ticket (employeesID);

create table if not exists tour
(
	tourID varchar(100) charset utf8 not null
		primary key,
	tourName varchar(100) charset utf8 not null,
	vehicle varchar(100) charset utf8 null,
	price decimal default 0 not null,
	startDay datetime not null,
	maxseats int default 1 not null comment 'số người đi tối đa trong 1 tour'
)
comment 'thông tin tour -- seats người đi trong 1 tour -- startday ngày giời tour bắt đầu';

create table if not exists bookingdetails
(
	bookingID varchar(100) charset utf8 not null
		primary key,
	tourID varchar(100) charset utf8 not null,
	seats int not null,
	DepartureDay datetime not null comment 'thời gian khỏi hành
',
	constraint fk_bookingDetails_booking1
		foreign key (bookingID) references booking (bookingID),
	constraint fk_bookingDetails_tour1
		foreign key (tourID) references tour (tourID)
);

create index fk_bookingDetails_booking1_idx
	on bookingdetails (bookingID);

create index fk_bookingDetails_tour1_idx
	on bookingdetails (tourID);

create table if not exists diadiemdi
(
	landMarkID varchar(100) charset utf8 not null,
	tour_tourID varchar(100) charset utf8 not null,
	primary key (landMarkID, tour_tourID),
	constraint fk_diadiemdi_landmarks1
		foreign key (landMarkID) references landmarks (landMarkID),
	constraint fk_diadiemdi_tour1
		foreign key (tour_tourID) references tour (tourID)
);

create index fk_diadiemdi_landmarks1_idx
	on diadiemdi (landMarkID);

create index fk_diadiemdi_tour1_idx
	on diadiemdi (tour_tourID);

create table if not exists tourdetails
(
	tourID varchar(100) charset utf8 not null
		primary key,
	contents varchar(2000) charset utf8 null,
	constraint fk_tourdetails_tour1
		foreign key (tourID) references tour (tourID)
);

create table if not exists tourprices
(
	ageID varchar(100) charset utf8 not null,
	tourID varchar(100) charset utf8 not null,
	price decimal default 0 not null,
	primary key (ageID, tourID),
	constraint fk_tourprices_ages1
		foreign key (ageID) references ages (ageID),
	constraint fk_tourprices_tour1
		foreign key (tourID) references tour (tourID)
)
comment 'bảng giá của một tour';

create index fk_tourprices_tour1_idx
	on tourprices (tourID);

