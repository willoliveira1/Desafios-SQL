-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2608
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37403133

-- Resposta
SELECT MAX(price), MIN(price) FROM products;

-- Dados Iniciais
CREATE TABLE products (
    id numeric PRIMARY KEY,
    name varchar(50),
    amount numeric,
    price numeric(7,2)
);
INSERT INTO products (id, name, amount, price)
VALUES
    (1,	'Two-doors wardrobe',	100,	800),
    (2,	'Dining table',	1000,	560),
    (3,	'Towel holder',	10000,	25.50),
    (4,	'Computer desk',	350,	320.50),
    (5,	'Chair',	3000,	210.64),
    (6,	'Single bed',	750,	460);