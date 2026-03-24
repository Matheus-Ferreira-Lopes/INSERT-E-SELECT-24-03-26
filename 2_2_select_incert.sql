-- database: ../2  _0_banco.sqlite

-- Exercício 1: Insira um curso com id=1, nome='HTML', aulas=10.
INSERT INTO cursos (id, nome, aulas) VALUES (1, 'HTML', 10);

-- Exercício 2: Insira um curso com id=2, nome='CSS', sem especificar aulas (deve usar o padrão 0).
INSERT INTO cursos (id, nome) VALUES (2, 'CSS');

-- Exercício 3: Selecione todos os dados da tabela cursos.
SELECT * FROM cursos;

-- Exercício 4: Tente inserir um curso com id=1 novamente (id duplicado). O que acontece?
INSERT INTO cursos (id, nome, aulas) VALUES (1, 'HTML2', 5);

-- Exercício 5: Insira um curso com id=3, nome='JavaScript', aulas=15, ativo=1.
INSERT INTO cursos (id, nome, aulas, ativo) VALUES (3, 'JavaScript', 15, 1);

-- Exercício 6: Insira um curso com id=4, nome='Python', usando aspas duplas nos identificadores.
INSERT INTO "cursos" ("id", "nome") VALUES (4, "Python");

-- Exercício 7: Selecione todos os cursos novamente.
SELECT * FROM cursos;

-- Exercício 8: Insira múltiplos cursos de uma vez: (5, 'React', 20), (6, 'Vue', 18), (7, 'Angular', 22).
INSERT INTO cursos (id, nome, aulas) 
VALUES 
    (5, 'React', 20),
    (6, 'Vue', 18),
    (7, 'Angular', 22);

-- Exercício 9: Tente inserir um curso sem informar o nome (campo NOT NULL).
INSERT INTO cursos (id, aulas) VALUES (99, 10);

-- Exercício 10: Insira um curso com id=8, nome='SQL', aulas=12, e use indentação adequada.
INSERT INTO cursos 
    (id, nome, aulas) 
VALUES 
    (8, 'SQL', 12);

-- Exercício 11: Selecione apenas a coluna 'nome' de todos os cursos.
SELECT nome FROM cursos;

-- Exercício 12: Insira um curso com id=9, nome='NoSQL', e deixe aulas com valor padrão.
INSERT INTO cursos (id, nome) VALUES (9, 'NoSQL');

-- Exercício 13: Insira um curso com id=10, nome='TypeScript', aulas=16, ativo=0.
INSERT INTO cursos (id, nome, aulas, ativo) VALUES (10, 'TypeScript', 16, 0);

-- Exercício 14: Selecione todos os cursos que estão ativos (ativo = 1).
SELECT * FROM cursos WHERE ativo = 1;

-- Exercício 15: Insira um curso com id=11, nome='PHP', utilizando aspas simples para o nome.
INSERT INTO cursos (id, nome) VALUES (11, 'PHP');

-- Exercício 16: Insira dois cursos de uma vez: (12, 'C#', 20) e (13, 'Ruby', 15).
INSERT INTO cursos (id, nome, aulas) 
VALUES 
    (12, 'C#', 20),
    (13, 'Ruby', 15);

-- Exercício 17: Selecione todos os cursos com mais de 15 aulas.
SELECT * FROM cursos WHERE aulas > 15;

-- Exercício 18: Tente inserir um curso com id nulo.
INSERT INTO cursos (id, nome, aulas) VALUES (NULL, 'Teste', 5);

-- Exercício 19: Insira um curso com id=14, nome='Kotlin', aulas=18, ativo=1, usando aspas duplas em tudo.
INSERT INTO "cursos" ("id", "nome", "aulas", "ativo") 
VALUES ("14", "Kotlin", "18", "1");

-- VERIFICAÇÃO FINAL: Veja todos os cursos inseridos com sucesso
SELECT * FROM cursos ORDER BY id;

