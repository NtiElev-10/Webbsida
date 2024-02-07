Create database if not exists myTestDB;

Use myTestDB;

create table if not exists user(
ID int primary key,
username varchar(100) NOT NULL,
email varchar(100) NOT NULL,
password varchar(100) NOT NULL
);

Insert into user(ID, username, email, password) values(1, "mitt användarnamn", "användarnamn@gmail.com", "hejhej123");

alter table user 
add exempel bool;

select * from user; 

drop database myTestDB;
