-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2995
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37438205

-- Resposta
SELECT temperature, COUNT(*) as number_of_records
FROM records
GROUP BY mark, temperature
ORDER BY mark, temperature;

-- Dados Iniciais
CREATE TABLE records (
    id INTEGER PRIMARY KEY,
    temperature INTEGER,
    mark INTEGER
);
INSERT INTO records (id,temperature,mark) VALUES
    (1,30,1),
    (2,30,1),
    (3,30,1),
    (4,32,2),
    (5,32,2),
    (6,32,2),
    (7,32,2),
    (8,30,3),
    (9,30,3),
    (10,30,3),
    (11,31,4),
    (12,31,4),
    (13,33,5),
    (14,33,5),
    (15,33,5);