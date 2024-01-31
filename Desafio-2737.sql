-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2637
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37406003

-- Resposta
SELECT name, customers_number
FROM lawyers
WHERE customers_number in (SELECT MAX(customers_number) FROM lawyers)
    UNION ALL
        SELECT name, customers_number
        FROM lawyers
        WHERE customers_number in (SELECT MIN(customers_number) FROM lawyers)
    UNION ALL
        SELECT DISTINCT 'Average', (SELECT FLOOR(AVG(customers_number)) FROM lawyers)
        FROM lawyers;

-- Dados Iniciais
CREATE TABLE lawyers(
    register INTEGER PRIMARY KEY,
    name VARCHAR(255),
    customers_number INTEGER
);
INSERT INTO lawyers(register, name, customers_number)
VALUES (1648, 'Marty M. Harrison', 5),
       (2427, 'Jonathan J. Blevins', 15),
       (3365, 'Chelsey D. Sanders', 20),
       (4153, 'Dorothy W. Ford', 16),
       (5525, 'Penny J. Cormier', 6);