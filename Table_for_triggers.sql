
create table provider_insert(
providerINSERT_provider_id INT,
providerINSERT_shop_id INT,
providerINSERT_Phone_provider VARCHAR(100),
providerINSERT_name_company VARCHAR(100)
);

--drop table provider_insert

INSERT INTO provider_insert(providerINSERT_provider_id,
providerINSERT_shop_id,providerINSERT_Phone_provider,providerINSERT_name_company)
VALUES(11,11,'+380738329021','NewCompanyT');

Select*from provider_insert
