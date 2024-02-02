-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2988
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37424340

-- Resposta
WITH quantity AS (
    SELECT team_number, status
    FROM (
        SELECT team_1 AS team_number,
            CASE
                WHEN team_1_goals > team_2_goals THEN 'V'
                WHEN team_1_goals < team_2_goals THEN 'L'
                WHEN team_1_goals = team_2_goals THEN 'D'
            END AS status
        FROM matches
        UNION ALL
        SELECT team_2 AS team_number,
            CASE
                WHEN team_2_goals > team_1_goals THEN 'V'
                WHEN team_2_goals < team_1_goals THEN 'L'
                WHEN team_2_goals = team_1_goals THEN 'D'
            END AS status
        FROM matches
    ) as matches_status
)
SELECT name, matches, victories, defeats, draws, (victories * 3 + draws * 1) AS score
FROM (
    SELECT t.name,
           COUNT(t.id) AS matches,
           COUNT(CASE WHEN q.status = 'V' THEN 1 END) AS victories,
           COUNT(CASE WHEN q.status = 'L' THEN 1 END) AS defeats,
           COUNT(CASE WHEN q.status = 'D' THEN 1 END) AS draws
    FROM teams AS t
    JOIN quantity AS q
        ON q.team_number = t.id
    GROUP BY t.name
) AS result_chart
ORDER BY score DESC;

-- Dados Iniciais
CREATE TABLE teams (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE matches (
    id INTEGER PRIMARY KEY,
    team_1 INTEGER,
    team_2 INTEGER,
    team_1_goals INTEGER,
    team_2_goals INTEGER,
    FOREIGN KEY (team_1) REFERENCES teams(id),
    FOREIGN KEY (team_2) REFERENCES teams(id)
);
INSERT INTO teams (id, name) VALUES
    (1,'CEARA'),
    (2,'FORTALEZA'),
    (3,'GUARANY DE SOBRAL'),
    (4,'FLORESTA');
INSERT INTO matches (id, team_1, team_2, team_1_goals, team_2_goals) VALUES
    (1,4,1,0,4),
    (2,3,2,0,1),
    (3,1,3,3,0),
    (4,3,4,0,1),
    (5,1,2,0,0),
    (6,2,4,2,1);