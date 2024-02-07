Create database if not exists myTestDB;

Use myTestDB;

create table if not exists user(
ID int primary key,
username varchar(100) NOT NULL,
email varchar(100) NOT NULL,
password varchar(100) NOT NULL
);

create table if not exists user2(
username varchar(100) NOT NULL,
email varchar(100) NOT NULL
);


Insert into user(ID, username, email, password) values(1, "mitt användarnamn", "användarnamn@gmail.com", "hejhej123");

insert into user2 select username, email from user;

select * from user2; 


drop database myTestDB;
