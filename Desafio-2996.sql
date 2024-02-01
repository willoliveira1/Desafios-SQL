-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2996
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37418892

-- Resposta
WITH senders AS (
    SELECT u.name, p.id_package
    FROM users AS u
    INNER JOIN packages AS p ON p.id_user_sender = u.id
    WHERE u.address NOT IN ('Taiwan')
), receivers AS (
    SELECT u.name, p.id_package
    FROM users AS u
    INNER JOIN packages AS p ON p.id_user_receiver = u.id
    WHERE u.address NOT IN ('Taiwan')
)
SELECT p.year, senders.name AS sender, receivers.name AS receiver
FROM packages AS p
JOIN senders ON senders.id_package = p.id_package
JOIN receivers ON receivers.id_package = p.id_package
WHERE p.color = 'blue'
OR p.year = '2015'
ORDER BY p.year DESC, sender DESC;

-- Dados Iniciais
CREATE TABLE users (
    id integer PRIMARY KEY,
    name varchar(50),
    address varchar(50)
);
CREATE TABLE packages (
    id_package integer PRIMARY KEY,
    id_user_sender integer,
    id_user_receiver integer,
    color varchar(50),
    year integer,
    FOREIGN KEY (id_user_sender) REFERENCES users(id),
    FOREIGN KEY (id_user_receiver) REFERENCES users(id)
);
insert into users (id,name,address) values
    (1,'Edgar Codd','England'),
    (2,'Peter Chen','Taiwan'),
    (3,'Jim Gray','United States'),
    (4,'Elizabeth ONeil','United States');
insert into packages (id_package,id_user_sender,id_user_receiver,color,year) values
    (1,1,2,'blue',2015),
    (2,1,3,'blue',2019),
    (3,2,4,'red',2019),
    (4,2,1,'green',2018),
    (5,3,4,'red',2015),
    (6,4,3,'blue',2019);