-- CHECK constraint for Toys: price must be positive
ALTER TABLE Toy
ADD CONSTRAINT CK_Toy_Price_Positive
CHECK (Toy_preis > 0);

-- CHECK constraint for Employee Salary: salary must be positive

ALTER TABLE Professionworker
ADD CONSTRAINT CK_Salary_Positive
CHECK (Salary_worker > 0);

-- CHECK constraint for Client phone: must not be NULL or empty

ALTER TABLE Klient
DROP CONSTRAINT CK_Klient_Phone_NotNull;

ALTER TABLE Klient
ADD CONSTRAINT CK_Klient_Phone_NotEmpty
CHECK (Phone_klient IS NOT NULL AND Phone_klient <> '');

-- UNIQUE constraint for Worker phone: phone numbers must be unique

ALTER TABLE Worker
ADD CONSTRAINT UQ_Worker_Phone UNIQUE (Phone_worker);

-- UNIQUE constraint for Provider phone: phone numbers must be unique

ALTER TABLE Provider
ADD CONSTRAINT UQ_Provider_Phone UNIQUE (Phone_provider);

-- ON DELETE CASCADE for Orders: automatically delete orders when a Client is removed

ALTER TABLE Orders
DROP CONSTRAINT FK__Orders__Klient_i__5441852A;   -- drop old FK

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Klient
FOREIGN KEY (Klient_id)
REFERENCES Klient(Klient_id)
ON DELETE CASCADE;

-- ON DELETE CASCADE for Orders: automatically delete orders when a Delivery is removed
ALTER TABLE Orders
DROP CONSTRAINT FK__Orders__Delivery__534D60F1;

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Delivery
FOREIGN KEY (Delivery_id)
REFERENCES Delivery(Delivery_id)
ON DELETE CASCADE;

