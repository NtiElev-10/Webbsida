Drop database SelectDB;
Create database if not exists SelectDB;
use SelectDB;

/*
Vi skapar användare
*/

Create table if not exists Users(
	UserID int primary key auto_increment,
    UserName varchar(255) unique,
    Email varchar(255) unique,
    Pwd varchar(255) ,
    FirstName varchar(255),
    LastName varchar(255),
    Age int
);

insert into Users (UserName, Email, Pwd, Age) values 
("TheGamer","GamerMail@gmail.com","Game4Life",23),
("LaNoob","ProPro@mail.com","123456",17),
("Whuut","WhutIsDis@CompanyMail.com","MyPassword",37);

insert into Users (UserName, Email, Pwd, FirstName, LastName, Age) values 
("I_M_User","MyMail@AMail.com","SafeWord1","Olle","Svenson",13),
("WhoAmI","A_Mail_123@mail.com","123456","Eva","Andersson",28);

insert into Users (UserName, Email, Pwd, Age) values
("whyyyy","whyyAMail@SomeEmail.com","iHavePwd",14),
("youAreNuub", "MyPersonalMail@thisMail.com","SecretWord",31);

insert into Users (UserName, Email, Pwd, FirstName, LastName, Age) values 
("Someone","NotAnAI@AIMail.com","Password","RealName","TRUE",999),
("Someone2","RealyNotAnAI@AIMail.com","Password","RealName","TRUE",0),
("ImAnAI","Robot4TheWin@AIMail.com","HaxorWord","firstname","lastname",0);

/*
Nu vill vi välja ut data. För att välja allt skriver vi:
*/
Select * #Vad ska jag välja?, * betyder allt
from users; #Välj tabeller att hämta data från

/*
Vill jag veta allt om de användare som är över 18 måste jag använda mer.
Vi använder villkoret "where" och nu skriver vi:
*/
Select * 
from users
where age >= 18; #villkor för kolumnerna som måste gälla om en rad ska väljas.
/*
Vill jag bara ha User, first, och last Name så kan vi ändra på frågan. 
Vi tar bort * och skriver vad vi vill ha och ordningen vi vill ha:
*/
Select username, firstname, lastname 
from users
where age >= 18;

/*
Hur gör jag om jag bara vill ha personer med för och efternamn?
*/
Select username, firstname, lastname 
from users
where age >= 18 #Använder and för att lägga in mer villkor
	and firstname is not null
    && lastname is not null
    or age < 18;

/*
Jag vill ändra information om en av användarna. 
Användaren youAreNuub vill ange sitt namn. Då vill vi sätta in namnet.
Alter ändrar strukturen på en tabell och update uppdaterar värden i den.
*/
Select * from users where username =  "youAreNuub";

update users
set firstname ="Kalle", lastname = "Anka"
where username = "youAreNuub"; #age=31;

Select * from users where username =  "youAreNuub";

/*
Vi har märkt att vi har en AI i vårt system. 
Vi vill inte att den ska få ha ett konto.
Hur tar vi bort den?
Drop tar bort allt från en tabell eller databas och delete tar bort data i en tabell
*/

Select * from users;

DELETE 
	FROM users 
	WHERE userid = 8;
    
Select * from users;

#Hur gör vi om vi vill radera alla användare som är mellan 20 och 30 år?
#delete from users where age >= 20 and age <= 30; #Går inte om vi har safe mode på.

#delete from users where 20 <= age <= 30;  #Vad går fel om vi kör den här?
/*
mysql workbench safe update mode turn off.
You also can disable safe mode in MySQL Workbench,
 go to Edit -> 
 Preferences -> 
SQL Editor, and uncheck "Safe Updates" check box.
*/
Select * from users;

/*
Gör själva nu.

Välj ut alla användare med ett användarID under 7
Välj ut alla användare med en ålder mellan 20 och 30
Ändra åldern på användaren med id 3 till 27 år
Ta bort alla användare som du tror är AI.
*/

#Välj ut alla användare med ett användarID under 7
select * from users where UserID < 7;

#Välj ut alla användare med en ålder mellan 20 och 30
select * from users where age > 20 and age < 30;

#Ändra åldern på användaren med id 3 till 27 år
update users set age = 27 where UserID = 3;

#Ta bort alla användare som du tror är AI.
delete from users where firstname is null or Age < 1;
select * from users;
