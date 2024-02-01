-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2994
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37416357

-- Resposta
SELECT d.name, TRUNC(SUM(a.hours * 150 *
    CASE w.name
        WHEN 'nocturnal' THEN 1.15
        WHEN 'afternoon' THEN 1.02
        WHEN 'day' THEN 1.01
    END), 1) AS salary
FROM doctors AS d
INNER JOIN attendances AS a ON a.id_doctor = d.id
INNER JOIN work_shifts AS w ON w.id = a.id_work_shift
GROUP BY d.name
ORDER BY salary DESC;

-- Dados Iniciais
CREATE TABLE doctors (
    id integer PRIMARY KEY,
    name varchar(50)
);
CREATE TABLE work_shifts (
    id integer PRIMARY KEY,
    name varchar(50),
    bonus numeric
);
CREATE TABLE attendances (
    id integer PRIMARY KEY,
    id_doctor integer,
    hours integer,
    id_work_shift integer,
    FOREIGN KEY (id_doctor) REFERENCES  doctors(id),
    FOREIGN KEY (id_work_shift) REFERENCES  work_shifts(id)
);
insert into doctors (id,name) values
    (1,'Arlino'),
    (2,'Tiago'),
    (3,'Amanda'),
    (4,'Wellington');
insert into work_shifts (id,name,bonus) values
    (1,'nocturnal',15),
    (2,'afternoon',2),
    (3,'day',1);
insert into  attendances (id, id_doctor, hours, id_work_shift) values
    (1,1,5,1),
    (2,3,2,1),
    (3,3,3,2),
    (4,2,2,3),
    (5,1,5,3),
    (6,4,1,3),
    (7,4,2,1),
    (8,3,2,2),
    (9,2,4,2);