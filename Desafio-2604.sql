-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2604
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37402910

-- Resposta
SELECT id, name
FROM products
WHERE price < 10 OR price > 100;

-- Dados Iniciais
CREATE TABLE products (
    id NUMERIC PRIMARY KEY,
    name CHARACTER VARYING (255),
    amount NUMERIC,
    price NUMERIC
);
INSERT INTO products (id, name, amount, price)
VALUES
    (1,	'Two-door wardrobe',	100,	80),
    (2,	'Dining table',	1000,	560),
    (3,	'Towel holder',	10000,	5.50),
    (4,	'Computer desk',	350,	100),
    (5,	'Chair',	3000,	210.64),
    (6,	'Single bed',	750,	99);