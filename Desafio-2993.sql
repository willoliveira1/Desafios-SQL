-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2993
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37417996

-- Resposta
SELECT amount AS most_frequent_value
FROM value_table
GROUP BY amount
ORDER BY COUNT(amount) DESC
LIMIT 1;

-- Dados Iniciais
CREATE TABLE value_table (
    amount integer
);
insert into value_table (amount) values
(4),(6),(7),(1),(1),(2),(3),(2),(3),(1),(5),(6),(1),(7),(8),(9),(10),(11),(12),(4),(5),(5),(3),(6),(2),(2),(1);