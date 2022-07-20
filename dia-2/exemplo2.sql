-- # Use o JOIN para exibir o nome, sobrenome e endereço de cada um dos funcionários do banco. 
-- Use as tabelas staff e address.

SELECT s.first_name, s.last_name, a.address
FROM sakila.address AS a
INNER JOIN sakila.staff AS s
ON a.address_id = s.address_id;