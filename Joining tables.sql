
Select s.Shop_name, w.Worker_id, w.Surname_worker, w.Patronymic_worker,
       w.Name_worker, w.Profession_worker,
       pw.Name_profession, pw.Salary_worker
From Worker w
JOIN Professionworker pw ON w.Worker_id = pw.Profession_id
JOIN Shop s ON w.Shop_id = s.Shop_id;



Select c.City_name, st.Street_name, k.Klient_id, k.Surname_klient
From Klient k
JOIN CityStreetKl cs ON k.CityStreetKl_id = cs.CityStreetKl_id
JOIN City c ON cs.City_id = c.city_id
JOIN Street st ON cs.Street_id = st.street_id;
