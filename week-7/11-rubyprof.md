# ruby-prof

## Запуск в глобальном режиме

можем указать принтер в `TEST_RUBY_PROF`

`flat_printer` is default

```
SAMPLE=10 TEST_RUBY_PROF=call_stack rspec
```

## flat report
Measure Mode: wall_time
Thread ID: 70177744207880
Fiber ID: 0
Total: 23.101369
Sort by: self_time

 %self      total      self      wait     child     calls  name
  5.59      1.292     1.292     0.000     0.000      767   PG::Connection#async_exec
  2.54      0.720     0.587     0.000     0.132    11873  *Module#module_eval
  2.42      0.559     0.559     0.000     0.000   440195   <Class::File>#basename
  2.38      0.549     0.549     0.000     0.000    56676   <Class::File>#exist?
  2.24      0.516     0.516     0.000     0.000    31673   IO#read
  2.09      1.351     0.483     0.000     0.869    47080   Pathname#plus
  1.90      1.276     0.439     0.000     0.837   376681   Pathname#chop_basename
  1.50      0.346     0.346     0.000     0.000    53351   <Class::File>#stat
  1.46      0.400     0.338     0.000     0.062     1640   Array#permutation
  1.40      0.322     0.322     0.000     0.000   155370   <Class::File>#join
  1.28      0.296     0.296     0.000     0.000   450794   String#[]
  1.14      0.264     0.264     0.000     0.000    36461   String#chomp
  1.09      0.269     0.251     0.000     0.018      221   <Module::Bootsnap::CompileCache::Native>#fetch

* indicates recursively called methods


## call_stack
html report с возможностью свернуть/развернуть

## graph_html
html табличка с callers и calllees

## call_tree
qcachegrind report
