
use traveldb;

create table account
(
    accountID varchar(100) charset utf8 not null
        primary key,
    userName  varchar(50) charset utf8  not null,
    pw        varchar(300) charset utf8 not null,
    roleID    varchar(100) charset utf8 not null
)
    comment 'thông tin tài khoản';

create table ages
(
    ageID varchar(100) charset utf8 not null
        primary key,
    name  varchar(50) charset utf8  not null
);

create table booking
(
    bookingID   varchar(100) charset utf8 not null
        primary key,
    customerID  varchar(100) charset utf8 not null,
    employeesID varchar(100) charset utf8 not null,
    BookingDate datetime                  not null,
    totalMoney  decimal default 0         null
);

create table customer
(
    customerID  varchar(100) charset utf8 not null
        primary key,
    firstName   varchar(50) charset utf8  null,
    lastName    varchar(50) charset utf8  not null,
    email       varchar(100) charset utf8 null,
    birthDay    date                      not null,
    CCID        int                       not null,
    phoneNumber varchar(40) charset utf8  null
)
    comment 'bảnh lưu khách hàng';

create table employees
(
    employeeID  varchar(100) charset utf8 not null
        primary key,
    firstName   varchar(50) charset utf8  not null,
    lastName    varchar(50) charset utf8  null,
    email       varchar(100) charset utf8 null,
    CCID        varchar(50) charset utf8  null,
    birthDay    date                      not null,
    phoneNumber varchar(50) charset utf8  null,
    address     varchar(200) charset utf8 null
)
    comment 'bảng thông tin nhân viên';

create table landmarks
(
    landMarkID   varchar(100) charset utf8            not null,
    provinceID   varchar(100) charset utf8            not null,
    landMarkName varchar(200) charset utf8 default '' not null,
    details      varchar(2000) charset utf8           null,
    primary key (landMarkID, provinceID)
)
    comment 'địa danh';

create table province
(
    provinceID   varchar(100) charset utf8 not null
        primary key,
    provinceName varchar(100) charset utf8 not null
);

create table role
(
    roleID      varchar(100) charset utf8 not null
        primary key,
    name        varchar(100) charset utf8 not null,
    description varbinary(300)            null
);

create table ticket
(
    ticketID   varbinary(100)            not null
        primary key,
    bookingID  varchar(100) charset utf8 not null,
    customerID varchar(100) charset utf8 not null,
    ageID      varchar(100) charset utf8 not null
);

create table tour
(
    tourID   varchar(100) charset utf8 not null
        primary key,
    tourName varchar(100) charset utf8 not null,
    vehicle  varchar(100) charset utf8 null,
    price    decimal default 0         not null,
    startDay datetime                  not null,
    seats    int     default 1         not null
)
    comment 'thông tin tour -- seats người đi trong 1 tour -- startday ngày giời tour bắt đầu';

create table tourdetails
(
    tourID   varchar(100) charset utf8  not null
        primary key,
    contents varchar(2000) charset utf8 null
);

create table tourprices
(
    ageID  varchar(100) charset utf8 not null,
    tourID varchar(100) charset utf8 not null,
    price  decimal default 0         not null,
    primary key (ageID, tourID)
)
    comment 'bảng giá của một tour';

