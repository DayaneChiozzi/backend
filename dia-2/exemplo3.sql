-- # Exiba o id do cliente, nome e email dos primeiros 100 clientes, ordenados pelo nome em ordem decrescente, juntamente com o id do endereço e o nome da rua onde o cliente mora. Essas informações podem ser encontradas nas tabelas customer e address.

SELECT a.address_id, a.address, c.first_name, c.last_name, c.email, c.customer_id
FROM sakila.address AS a
INNER JOIN sakila.customer AS c
ON a.address_id = c.address_id
ORDER BY c.first_name DESC LIMIT 100;