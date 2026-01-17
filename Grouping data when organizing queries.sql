-- Get the number of employees working in the shop

select w.Shop_id, COUNT(w.Worker_id) as 'Number of Employees'
from Worker w
group by w.Shop_id



SELECT k.Klient_id, k.Surname_klient, k.Name_klient, k.Patronymic_klient,
       p.Paymentmethod_id, p.Paymentmethod_name
FROM Klient k
JOIN Paymentmethod p ON k.Klient_id = p.Klient_id;


SELECT k.Klient_id, d.Delivery_method
FROM Klient k
JOIN Orders o ON k.Klient_id = o.Klient_id
JOIN Delivery d ON o.Delivery_id = d.Delivery_id;
