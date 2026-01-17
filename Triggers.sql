--trigger


CREATE TRIGGER providerUPDATE 
ON Provider
FOR UPDATE
AS
PRINT 'Changing rows is prohibited'
ROLLBACK TRANSACTION;

UPDATE Provider
SET Name_company = 'UkrainianFactory'
WHERE Provider_id = 10;


--select*from Provider

--drop trigger providerUPDATE 


ALTER TRIGGER providerUPDATE
ON Provider
AFTER INSERT
AS
BEGIN
    PRINT 'Row inserted!'
    
    -- Оновлення даних в іншій таблиці
    UPDATE provider_insert
    SET providerINSERT_provider_id = i.Provider_id
    FROM provider_insert pi
    INNER JOIN inserted i ON pi.providerINSERT_shop_id = i.Shop_id;
    
    -- Виведення всіх вставлених рядків
    SELECT * FROM inserted;
END;



