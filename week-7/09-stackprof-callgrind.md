```bash
stackprof tmp/test_prof/stack-prof-report-wall-raw-total.dump --callgrind >> callgrind.cgd
qcachegrind callgrind.cgd
```

Видим, что `BacktraceClean` вызывает `HoneyComb`!

Убираем `HoneyComb` -> Полностью выбили `BacktraceCleaner` из топа
