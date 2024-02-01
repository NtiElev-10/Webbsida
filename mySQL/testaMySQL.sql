Create database if not exists myTestDB;

Use myTestDB;

create table if not exists user(
ID int,
username varchar(100),
email varchar(100),
password varchar(100)
);

Insert into user(ID, username, email, password) values(1, "mitt användarnamn", "användarnamn@gmail.com", "hejhej123");

select * from user; 

drop database myTestDB;
