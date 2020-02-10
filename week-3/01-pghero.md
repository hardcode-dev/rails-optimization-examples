# PgHero

## Варианты установки

Возможна установка через
- Rails Engine
- Docker
- Linux package

```bash
docker run -ti -e DATABASE_URL=postgres://spajic@host.docker.internal:5432/PracticalDeveloper_development -p 8080:8080 ankane/pghero
open localhost:8080
```

## Использование
PgHero сам предлагает инструкции по своей дальнейшей настройке.

В частности, для статистики по запросам надо добавить строки в конец `/usr/local/var/postgres/postgresql.conf`:

```
shared_preload_libraries = 'pg_stat_statements'
pg_stat_statements.track = all
```
