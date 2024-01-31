-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2625
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37405664

-- Resposta
SELECT SUBSTRING(n.cpf, 1, 3) || '.' || SUBSTRING(n.cpf, 4, 3) || '.' || SUBSTRING(n.cpf, 7, 3) || '-' || SUBSTRING(n.cpf, 10, 2)
FROM customers as c
INNER JOIN natural_person as n
    ON n.id_customers = c.id;

-- Dados Iniciais
CREATE TABLE customers (
    id numeric PRIMARY KEY,
    name varchar(255),
    street varchar(255),
    city varchar(255),
    state char(2),
    credit_limit numeric
);
CREATE TABLE natural_person (
    id_customers numeric REFERENCES customers (id),
    cpf char (14)
);
INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
    (1,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
    (2,	'Cecília Olivia Rodrigues',	'Rua Sizuka Usuy',	'Cianorte',	'PR',	3170),
    (3,	'Augusto Fernando Carlos Eduardo Cardoso',	'Rua Baldomiro Koerich',	'Palhoça',	'SC',	1067),
    (4,	'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
    (5,	'Sabrina Heloisa Gabriela Barros',	'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre',	'RS',	4312),
    (6,	'Joaquim Diego Lorenzo Araújo',	'Rua Vitorino',	'Novo Hamburgo',	'RS',	2314);
INSERT INTO natural_person (id_customers, cpf)
VALUES
    (1,	'26774287840'),
    (2,	'97918477200');