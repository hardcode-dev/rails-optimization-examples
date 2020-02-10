# psql
# \q - выйти
# \x - расширенный expanded display
# \d - вывести список таблиц
# \d+ - с дополнительной информацией
# \d table - описать таблицу
# \d+ table - описать таблицу с дополнительной информацией
# \timing - засекать и показывать время операций
# \l - список баз данных
# \l+ - споисок баз данных с дополнительной информацией
# \e - открыть редактор для удобного редактирования запроса
# \? - help
# \h - помощь по командам Postgres
# \h alter table - помощь по alter table, например

CREATE TABLE experiments(
 id serial PRIMARY KEY,
 model VARCHAR (50),
 cents INTEGER,
 broken BOOLEAN
);

SELECT
(CASE (random() * 2)::INTEGER
 WHEN 0 THEN 'Iphone-'
 WHEN 1 THEN 'Xiaomi-'
 WHEN 2 THEN 'Nexus-'
END) || (random() * 100000000)::INTEGER model,
(random() * 1000000)::INTEGER price,
(CASE ((10*random())::INTEGER)
 when 0 then true
 else false
END) broken
 FROM generate_series(1, 6) AS rows;

# ~5 секунд на 1М записей
INSERT INTO experiments (model, cents, broken)
SELECT
(CASE (random() * 2)::INTEGER
 WHEN 0 THEN 'Iphone-'
 WHEN 1 THEN 'Xiaomi-'
 WHEN 2 THEN 'Nexus-'
END) || (random() * 100000000)::INTEGER model,
(random() * 1000000)::INTEGER price,
(CASE ((10*random())::INTEGER)
 when 0 then true
 else false
END) broken
 FROM generate_series(1, 1000000) AS rows;


-- select * from experiments
-- where broken = false and cents < 500 order by cents asc;

SELECT pg_size_pretty(pg_total_relation_size('experiments'));

Delete from experiments;
create index on experiments (cents ASC);
create index on experiments (broken);

-- \di+ experiments_broken_idx;
--                                    List of relations
--  Schema |          Name          | Type  | Owner  |    Table    |  Size  | Description
-- --------+------------------------+-------+--------+-------------+--------+-------------
--  public | experiments_broken_idx | index | spajic | experiments | 103 MB |
-- (1 row)

-- PracticalDeveloper_development=# \di+ experiments_cents_idx;
--                                   List of relations
--  Schema |         Name          | Type  | Owner  |    Table    |  Size  | Description
-- --------+-----------------------+-------+--------+-------------+--------+-------------
--  public | experiments_cents_idx | index | spajic | experiments | 108 MB |

# >10 секунд на 1М записей
INSERT INTO experiments (model, cents, broken)
SELECT
(CASE (random() * 2)::INTEGER
 WHEN 0 THEN 'Iphone-'
 WHEN 1 THEN 'Xiaomi-'
 WHEN 2 THEN 'Nexus-'
END) || (random() * 100000000)::INTEGER model,
(random() * 1000000)::INTEGER price,
(CASE ((10*random())::INTEGER)
 when 0 then true
 else false
END) broken
 FROM generate_series(1, 1000000) AS rows;
