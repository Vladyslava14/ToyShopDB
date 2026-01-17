

-- To reduce the price of toys by 30 percent if the toy costs less than 300 UAH

create proc proc_01
as 
UPDATE Toy SET Toy_preis = Toy_preis * 0.7
WHERE Toy_preis<=300

exec proc_01
Select*from Toy
Drop procedure proc_01


create proc proc_2
@view VARCHAR(100)
as
Select  t.Toy_view, t.Toy_preis
From Toy t
Where t.Toy_view=@view
exec proc_2 'Plastic Toy'
Drop procedure proc_2

--Процедура для створення замовлення

CREATE PROCEDURE AddOrder
    @OrderID INT,
    @DeliveryID INT,
    @KlientID INT,
    @ToyID INT
AS
BEGIN
    INSERT INTO Orders(Orders_id, Delivery_id, Klient_id, Toy_id)
    VALUES (@OrderID, @DeliveryID, @KlientID, @ToyID);

    PRINT 'Order successfully created';
END;

EXEC AddOrder 5, 2, 3, 4;
SELECT * FROM Orders;



