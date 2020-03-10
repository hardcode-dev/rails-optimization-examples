# Factory Profiler

```bash
FPROF=1 rspec spec/requests/internal_users_spec.rb
[TEST PROF INFO] Factories usage

 Total: 66
 Total top-level: 33
 Total uniq factories: 2

 total      top-level                            name

    33             33                            user
    33              0                        identity
```

## Flamegraph

```bash
FPROF=flamegraph rspec
```

Основной каскад в dev.to: User -> Identity
