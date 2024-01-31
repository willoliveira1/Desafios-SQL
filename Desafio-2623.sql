-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2623
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37404975

-- Resposta
SELECT p.name, c.name
FROM products AS p
INNER JOIN categories AS c
    ON c.id = p.id_categories
WHERE p.amount > 100
AND c.id IN (1, 2, 3, 6, 9)
ORDER BY c.id ASC;

-- Dados Iniciais
CREATE TABLE categories (
    id numeric PRIMARY KEY,
    name varchar(255)
);
CREATE TABLE products (
    id numeric PRIMARY KEY,
    name varchar (255),
    amount numeric,
    price numeric,
    id_categories numeric REFERENCES categories (id)
);
INSERT INTO categories (id, name)
VALUES
    (1,	'Superior'),
    (2,	'Super Luxury'),
    (3,	'Modern'),
    (4,	'Nerd'),
    (5,	'Infantile'),
    (6,	'Robust'),
    (9,	'Wood');
INSERT INTO products (id, name, amount, price, id_categories)
VALUES
    (1,	'Blue Chair',	30, 300.00,	9),
    (2,	'Red Chair',	200,	2150.00, 2),
    (3,	'Disney Wardrobe',	400,	829.50,	4),
    (4,	'Blue Toaster',	20,	9.90,	3),
    (5,	'Solar Panel',	30,	3000.25,	4);