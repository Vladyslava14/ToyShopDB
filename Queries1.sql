use ShopToy


SELECT Shop_id AS 'Shop ID',
       Surname_worker AS 'Surname',
       Phone_worker AS 'Phone'
FROM Worker;


SELECT CityStreetKl_id AS 'ID',
       Surname_klient AS 'Surname',
       Name_klient AS 'First Name',
       Patronymic_klient AS 'Patronymic',
       Phone_klient AS 'Phone'
FROM Klient;


SELECT Toy_view AS 'Toy Type', 
       Provider_id AS 'Provider ID',
       Toy_preis AS 'Toy Price'
FROM Toy
ORDER BY Toy_preis;
