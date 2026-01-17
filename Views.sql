

create view WorkerDateBeg as
select *from Professionworker
where Datebegining BETWEEN '10.12.2022 09:30:00' AND '20.01.2023 09:30:00'


--Select*from WorkerDateBeg

--drop view WorkerDateBeg



create view ProviderToy 
as
select p.Provider_id, p.Name_company, t.Toy_id, t.Toy_view
from Provider p, Toy t
where p.Provider_id=t.Toy_id

Select*from ProviderToy