use ShopToy

create table Shop(
Shop_id int primary key,
Shop_name varchar(20),
Shop_phone varchar(20));

create table Worker(
Worker_id int primary key,
Shop_id int foreign key references Shop(Shop_id),
Surname_worker varchar(20),
Patronymic_worker varchar(20),
Name_worker varchar(20),
Phone_worker varchar(20),
Profession_worker varchar(20));

create table Professionworker(
Profession_id int primary key,
Salary_worker int,
Datebegining datetime,
Name_profession varchar(20));

create table Provider(
Provider_id int primary key,
Shop_id int foreign key references Shop(Shop_id),
Phone_provider varchar(20),
Name_company varchar(20));

create table Toy(
Toy_id int primary key,
Toy_view varchar(100),
Provider_id int foreign key references Provider(Provider_id),
Toy_preis int);

create table City(
city_id int primary key,
city_name varchar(20));

create table Street(
street_id int primary key,
street_name varchar(50));

create table CityStreetKl(
CityStreetKl_id int primary key,
City_id int foreign key references City(city_id),
Street_id int foreign key references Street(street_id));

create table Klient(
Klient_id int primary key,
Surname_klient varchar(20),
Name_klient varchar(20),
Patronymic_klient varchar(20),
Phone_klient varchar(20),
CityStreetKl_id int foreign key references CityStreetKl(CityStreetKl_id));

create table Paymentmethod(
Paymentmethod_id int primary key,
Paymentmethod_name varchar(20),
Klient_id int foreign key references Klient(Klient_id));

create table Delivery(
Delivery_id int  primary key,
Delivery_method varchar(20),
Delivery_date datetime);

create table Orders(
Orders_id int primary key,
Delivery_id int foreign key references Delivery(Delivery_id),
Klient_id int foreign key references Klient(Klient_id),
Toy_id int foreign key references Toy(Toy_id));

