use ShopToy

INSERT INTO Shop
(Shop_id, Shop_name, Shop_phone)
VALUES
(1, 'ToyFromOdessa', '+380934499988'),
(2, 'FavoriteToy', '+380732021133'),
(3, 'ToyHouse', '+380963355992'),
(4, 'LittleHorse', '+380730884312'),
(5, 'ChildrensDolls', '+380961111334'),
(6, 'SoftToy', '+380739098515'),
(7, 'JustToy', '+38073924581'),
(8, 'DollFromOlena', '+380971238844'),
(9, 'BudgetToys', '+380736490422'),
(10, 'ToyWorld', '+380931052156');

INSERT INTO Worker 
(Worker_id, Shop_id, Surname_worker, Patronymic_worker, Name_worker, Phone_worker, Profession_worker)
VALUES
(1, 1, 'Topal', 'Oleksiiovych', 'Artem', '+380732039415', 'Position1'),
(2, 2, 'Tkachenko', 'Olehivna', 'Alla', '+38093013493', 'Position2'),
(3, 3, 'Krokhmal', 'Oleksandrivna', 'Olha', '+38096246412', 'Position3'),
(4, 4, 'Afinovska', 'Mariia', 'Leonidivna', '+38096220943', 'Position4'),
(5, 5, 'Uliantska', 'Ameliia', 'Romaniivna', '+380734498892', 'Position5'),
(6, 6, 'Dmytrenko', 'Volodymyr', 'Akhmetovych', '+380934531095', 'Position6');

INSERT INTO Professionworker
(Profession_id, Salary_worker, Datebegining, Name_profession)
VALUES
(1, 10000, '2022-12-10 09:30:00', 'Salesperson'),
(2, 6000, '2022-12-15 08:10:00', 'Packer'),
(3, 9000, '2022-12-19 10:00:00', 'Sales Assistant'),
(4, 19000, '2023-01-13 12:00:00', 'Manager'),
(5, 8000, '2023-01-20 09:30:00', 'Cleaner'),
(6, 7500, '2023-01-28 09:30:00', 'Consultant');


INSERT INTO Provider
(Provider_id, Shop_id, Phone_provider, Name_company)
VALUES
(1, 1, '+380963497743', 'ToyTreasury'),
(2, 2, '+38073124344', 'UkrainianWorkshop'),
(3, 3, '+38093461053', 'DollOfUkraine'),
(4, 4, '+38096451280', 'KyivToys'),
(5, 5, '+38073202311', 'ZakarpattiaToys'),
(6, 6, '+38096850024', 'FromEurope'),
(7, 7, '+38073450652', 'LvivToys'),
(8, 8, '+38093291055', 'DollFromUkrainians'),
(9, 9, '+38096270983', 'Barbie_ByMaxim'),
(10, 10, '+38073412521', 'LLC_Doll');


INSERT INTO Toy
(Toy_id, Toy_view, Provider_id, Toy_preis)
VALUES
(1, 'Sport Toy', 1, 100),
(2, 'Soft Toy', 2, 200),
(3, 'Rubber Toy', 3, 400),
(4, 'Glove Doll', 4, 170),
(5, 'Musical Toy', 5, 600),
(6, 'Plastic Toy', 6, 201),
(7, 'Building Toy', 7, 549),
(8, 'RC Toy', 8, 900),
(9, 'Folk Toy', 9, 180),
(10, 'Ceramic Toy', 10, 910);


INSERT INTO City
(city_id, city_name)
VALUES
(1, 'Kyiv'),
(2, 'Kharkiv'),
(3, 'Odessa'),
(4, 'Lviv'),
(5, 'Ternopil'),
(6, 'Dnipro'),
(7, 'Lutsk'),
(8, 'Khmelnytskyi'),
(9, 'Zhytomyr'),
(10, 'Rivne');


INSERT INTO Street
(street_id, street_name)
VALUES
(1, 'Dehtyarivska 19'),
(2, 'Pushkinska 3'),
(3, 'Hoholya 1'),
(4, 'Maiorivka 4'),
(5, 'H. Mazepy 3'),
(6, 'Kosmichna 18'),
(7, 'Danyshyna 11'),
(8, 'Podilska 93'),
(9, 'Balzakivska 5'),
(10, 'Berehova 8');


INSERT INTO CityStreetKl
(CityStreetKl_id,City_id ,Street_id)
VALUES(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10);

INSERT INTO Klient
(Klient_id, Surname_klient, Name_klient, Patronymic_klient, Phone_klient, CityStreetKl_id)
VALUES
(1, 'Shmidt', 'Alex', 'Limov', '+380972451123', 1),
(2, 'Kozlova', 'Olena', 'Ihorivna', '+380732068744', 2),
(3, 'Dobrovin', 'Yan', 'Yanovych', '+380938072135', 3),
(4, 'Poliak', 'Ludvig', 'Petrov', '+38073098301', 4),
(5, 'Ukriinets', 'Nina', 'Petrovna', '+38096502105', 5),
(6, 'Yaremko', 'Hanna', 'Ivanivna', '+380962899543', 6),
(7, 'Ilienkova', 'Daryna', 'Olehivna', '+38072578091', 7),
(8, 'Kylym', 'Yaroslav', 'Antonovych', '+380739090919', 8),
(9, 'Petryshkov', 'Oleksii', 'Dmytrovych', '+38093687202', 9),
(10, 'Olen', 'Marychka', 'Leonidivna', '+380962010818', 10);

INSERT INTO Delivery
(Delivery_id, Delivery_method, Delivery_date)
VALUES
(1, 'Self-pickup', '2023-02-10'),
(2, 'Courier Delivery', '2023-03-07'),
(3, 'Ukrposhta', '2023-03-09'),
(4, 'Transport Company', '2023-03-24');

INSERT INTO Paymentmethod
(Paymentmethod_id, Klient_id, Paymentmethod_name)
VALUES
(1, 1, 'Card'),
(2, 2, 'Cash'),
(3, 3, 'Cash'),
(4, 4, 'Cash'),
(5, 5, 'Card'),
(6, 6, 'Cash'),
(7, 7, 'Cash'),
(8, 8, 'Cash'),
(9, 9, 'Cash'),
(10, 10, 'Card');


INSERT INTO Orders
(Orders_id,Delivery_id,Klient_id,Toy_id)
VALUES(1,1,1,1),
(2,2,2,2),
(3,3,3,3),
(4,4,4,4);
