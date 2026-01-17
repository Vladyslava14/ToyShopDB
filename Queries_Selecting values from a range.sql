-- 2.2.3 Selection of values from a range
-- Retrieve profession and salary information within a specific period

use ShopToy

SELECT Profession_id,Salary_worker,Name_profession FROM Professionworker
WHERE Datebegining BETWEEN '19.12.2022' AND '28.01.2023'


SELECT toy_id as 'Number toy',toy_view as 'Toy', toy_preis as 'Preis' from Toy
WHERE Toy_preis BETWEEN 100 AND 400


Select*from Delivery
Order by Delivery_date


