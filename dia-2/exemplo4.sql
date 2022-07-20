-- Exiba o nome, email, id do endereço, endereço e distrito dos clientes que moram no distrito
--  da California e que contêm "rene" em seus nomes. As informações podem ser encontradas nas tabelas address e customer.

SELECT cus.first_name, cus.last_name, cus.email, ad.address_id, ad.address, ad.district
FROM sakila.address AS ad
INNER JOIN sakila.customer AS cus
ON ad.address_id = cus.address_id
WHERE first_name LIKE '%rene%' 
AND district = 'California';