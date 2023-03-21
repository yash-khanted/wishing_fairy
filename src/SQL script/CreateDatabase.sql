create database if not exists WISHING_FAIRY;
use WISHING_FAIRY;

create table if not exists WISHER(
	ID int primary key,
    FULL_NAME varchar(50),
    EMAIL_ADDRESS varchar(50)
);

create table if not exists WISH(
	ID int primary key,
    WISH_DATE date,
    WISH_TYPE enum('happy birthday', 'happy anniversary'),
    WISHER_ID int,
    constraint FK_WISH_WISHER foreign key (WISHER_ID) references wisher (id)
);