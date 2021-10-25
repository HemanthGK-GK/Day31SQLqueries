/* UC1 creating AddressBook database*/
create database AddressBook


/*UC2 creating  AdddressBook*/
create table AddressBook(
Firstname varchar(50),
Lastname varchar(50),
Addresss varchar(100),
city varchar(20),
States varchar(50),
Zip int,
Phone varchar(10),
Email varchar(50)

primary key(Phone)
)



/*UC3 Inser values new values to table*/
insert into AddressBook values
('Virat','kohli','UB city','Bengaluru','Karnataka',574215,'9856234175','virat@gmail.com'),
('Mahi','Dhoni','Velur','Channai','TamilNadu',454215,'8749561263','msd@gmail.com'),
('Suresh','Raina','Arasu Road','Mysore','Karnataka',571406,'8451629575','raina@gmail.com'),
('Ramya','KB','new road','noida','Delhi',714253,'7485966121','Ramya@gmail.com')


select * from AddressBook


/*UC4 Edit existing values using their Names*/
update AddressBook set Addresss='BTM layout'
where Firstname='Virat'



/*UC5 delete values using their Names*/
delete from AddressBook
where Firstname='Virat'



/*UC6 Retreive values using their State or city*/
select * from AddressBook 
where States='Karnataka'

select * from AddressBook 
where city='Mysore'




/*UC7 Get the count of the addressbook*/
select count(city) from AddressBook

select count(states) Count_of_Records from AddressBook


