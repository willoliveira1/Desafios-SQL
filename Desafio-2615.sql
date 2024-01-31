-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2615
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37403910

-- Resposta
SELECT DISTINCT city FROM customers;

-- Dados Iniciais
CREATE TABLE customers (
    id numeric PRIMARY KEY,
    name varchar(50),
    street varchar(50),
    city varchar(50)
);
INSERT INTO customers (id, name, street, city)
VALUES
    (1,	'Giovanna Goncalves Oliveira',	'Rua Mato Grosso',	'Canoas'),
    (2, 'Kauã Azevedo Ribeiro',	'Travessa Ibiá',	'Uberlândia'),
    (3,	'Rebeca Barbosa Santos',	'Rua Observatório Meteorológico',	'Salvador'),
    (4,	'Sarah Carvalho Correia',	'Rua Antônio Carlos da Silva',	'Uberlândia'),
    (5,	'João Almeida Lima',	'Rua Rio Taiuva',	'Ponta Grossa'),
    (6,	'Diogo Melo Dias',	'Rua Duzentos e Cinqüenta',	'Várzea Grande');