-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/3483
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37415798

-- Resposta
(
    SELECT city_name, population
    FROM cities
    LIMIT 1
    OFFSET 1
)
UNION ALL
(
    SELECT city_name, population
    FROM cities
    ORDER BY population ASC
    LIMIT 1
    OFFSET 1
);

-- Dados Iniciais
CREATE TABLE cities ( id numeric, city_name varchar(50), population numeric );
INSERT INTO cities VALUES (1, 'São Paulo', 12396372), (2, 'Rio de Janeiro', 6775561), (3, 'Brasília', 3094325), (4, 'Salvador', 2900319), (5, 'Fortaleza', 2703390), (6, 'Belo Horizonte', 2530701), (7, 'Manaus', 2255902), (8, 'Curitiba', 1963726), (9, 'Recife', 1661017), (10, 'Goiânia', 1555626), (11, 'Belém', 1506420), (12, 'Porto Alegre', 1492530);