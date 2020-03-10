# Basic StackProf

```bash
TEST_STACK_PROF=1 TEST_STACK_PROF_FORMAT=json rspec spec/controllers/internal_users_controller_spec.rb
```

```bash
SAMPLE=3 TEST_STACK_PROF=1 rspec
SAMPLE_GROUPS=3 TEST_STACK_PROF=1 rspec

[TEST PROF INFO] StackProf report generated: tmp/test_prof/stack-prof-report-wall-raw-total.dump
[TEST PROF INFO] Run the following command to generate a flame graph report:

stackprof --flamegraph tmp/test_prof/stack-prof-report-wall-raw-total.dump > tmp/test_prof/stack-prof-report-wall-raw-total.html && stackprof --flamegraph-viewer=tmp/test_prof/stack-prof-report-wall-raw-total.html

open file:///Users/spajic/.rbenv/versions/2.6.1/lib/ruby/gems/2.6.0/gems/stackprof-0.2.12/lib/stackprof/flamegraph/viewer.html?data=/Users/spajic/dev.to/tmp/test_prof/stack-prof-report-wall-raw-total.html
```

## Беглый анализ Flamegraph
Часто встречаются
- BacktraceCLeaner (?!)
- ActiveRecord
- Skylight (мониторинг)
- timber (логи)
- airbrake (ошибки)
- database_cleaner (вероятно, не нужен)

## Speedscope
```bash
SAMPLE=3 TEST_STACK_PROF=1 TEST_STACK_PROF_FORMAT=json rspec

[TEST PROF INFO] StackProf report generated: tmp/test_prof/stack-prof-report-wall-raw-total.dump
[TEST PROF INFO] StackProf JSON report generated: tmp/test_prof/stack-prof-report-wall-raw-total.json
```

- 22% Времени GC
- 13% Времени Sprockets::PathUtils#stat

## Profile boot

```bash
SAMPLE=1 TEST_STACK_PROF=boot TEST_STACK_PROF_FORMAT=json rspec
```

## CLI StackProf

```bash
stackprof tmp/test_prof/stack-prof-report-wall-raw-total.dump --text --limit 30
```

```bash
==================================
  Mode: wall(1000)
  Samples: 13973 (2.48% miss rate)
  GC: 1748 (12.51%)
==================================
     TOTAL    (pct)     SAMPLES    (pct)     FRAME
      1748  (12.5%)        1748  (12.5%)     (garbage collection)
      2550  (18.2%)        1539  (11.0%)     ActiveRecord::ConnectionAdapters::PostgreSQLAdapter#exec_no_cache
       971   (6.9%)         971   (6.9%)     Rails::BacktraceCleaner#initialize
       870   (6.2%)         870   (6.2%)     Sprockets::PathUtils#stat
       447   (3.2%)         447   (3.2%)     Rails::BacktraceCleaner#add_gem_filters
       814   (5.8%)         430   (3.1%)     ActiveRecord::ConnectionAdapters::PostgreSQL::DatabaseStatements#execute
       393   (2.8%)         393   (2.8%)     Sprockets::PathUtils#entries
       321   (2.3%)         321   (2.3%)     Pathname#chop_basename
       903   (6.5%)         281   (2.0%)     Kernel#require_with_bootsnap_lfi
       180   (1.3%)         180   (1.3%)     ActiveModel::AttributeMethods::ClassMethods#define_proxy_call
       142   (1.0%)         129   (0.9%)     Webpacker::Compiler#watched_files_digest
       120   (0.9%)         120   (0.9%)     Sprockets::PathUtils#match_path_extname
       114   (0.8%)         114   (0.8%)     TZInfo::ZoneinfoTimezoneInfo#check_read
       371   (2.7%)         108   (0.8%)     Psych::Visitors::YAMLTree#visit_String
       108   (0.8%)         108   (0.8%)     Sprockets::PathUtils#split_subpath
        99   (0.7%)          99   (0.7%)     Sprockets::Manifest.compile_match_filter
       266   (1.9%)          90   (0.6%)     Pathname#plus
       137   (1.0%)          89   (0.6%)     ActiveRecord::ConnectionAdapters::PostgreSQL::DatabaseStatements#query
       565   (4.0%)          89   (0.6%)     Pathname#join
        84   (0.6%)          84   (0.6%)     Sprockets::Mime#compute_extname_map
       160   (1.1%)          79   (0.6%)     Psych::Visitors::Visitor#visit
        77   (0.6%)          76   (0.5%)     Psych::ScalarScanner#tokenize
        75   (0.5%)          75   (0.5%)     #<Module:0x00007fe3392435c8>.mechanism
        98   (0.7%)          73   (0.5%)     RSpec::Core::Metadata::HashPopulator#populate_location_attributes
        72   (0.5%)          72   (0.5%)     Psych::Nodes::Scalar#initialize
        69   (0.5%)          69   (0.5%)     Set#include?
      1429  (10.2%)          66   (0.5%)     Kernel#load
        66   (0.5%)          64   (0.5%)     #<Module:0x00007fe33713dd38>.application
        63   (0.5%)          63   (0.5%)     Sprockets::Base#normalize_logical_path
        63   (0.5%)          63   (0.5%)     Psych::Coder#initialize
```


## Рискнём профилировать весь test-suite

```bash
TEST_STACK_PROF=1 TEST_STACK_PROF_FORMAT=json rspec
```

- dump - 600Mb
- json - 1000Mb
- https://www.speedscope.app/ - падает, не может открыть

```bash
stackprof tmp/test_prof/stack-prof-report-wall-raw-total.dump --text --limit 30

==================================
  Mode: wall(1000)
  Samples: 618673 (0.77% miss rate)
  GC: 44299 (7.16%)
==================================
     TOTAL    (pct)     SAMPLES    (pct)     FRAME
    100934  (16.3%)      100326  (16.2%)     Rails::BacktraceCleaner#initialize
    190830  (30.8%)       72120  (11.7%)     ActiveRecord::ConnectionAdapters::PostgreSQLAdapter#exec_no_cache
     45124   (7.3%)       44965   (7.3%)     Rails::BacktraceCleaner#add_gem_filters
     44299   (7.2%)       44299   (7.2%)     (garbage collection)
     59750   (9.7%)       30946   (5.0%)     ActiveRecord::ConnectionAdapters::PostgreSQL::DatabaseStatements#execute
     14831   (2.4%)       14787   (2.4%)     Net::BufferedIO#rbuf_fill
     27871   (4.5%)        9758   (1.6%)     Psych::Visitors::YAMLTree#visit_String
     23525   (3.8%)        8807   (1.4%)     Net::WebMockNetBufferedIO#rbuf_fill
      8048   (1.3%)        7100   (1.1%)     Webpacker::Compiler#watched_files_digest
     25530   (4.1%)        6800   (1.1%)     ActiveRecord::ConnectionAdapters::PostgreSQLAdapter#exec_cache
      6589   (1.1%)        6507   (1.1%)     REXML::IOSource#match
      6280   (1.0%)        6070   (1.0%)     Psych::ScalarScanner#tokenize
     15879   (2.6%)        5837   (0.9%)     Psych::Visitors::Visitor#visit
      5500   (0.9%)        5438   (0.9%)     Psych::Nodes::Scalar#initialize
      4845   (0.8%)        4826   (0.8%)     Psych::Visitors::Emitter#visit_Psych_Nodes_Scalar
      7867   (1.3%)        4508   (0.7%)     #<Module:0x00007f8cc7bf6e30>.unicode_compose_pair
      3976   (0.6%)        3949   (0.6%)     Psych::Coder#initialize
      3872   (0.6%)        3861   (0.6%)     #<Module:0x00007f8cc7bf6e30>.lookup_unicode_combining_class
      3760   (0.6%)        3700   (0.6%)     block (4 levels) in class_attribute
      3475   (0.6%)        3458   (0.6%)     Concurrent::Collection::NonConcurrentMapBackend#get_or_default
      3440   (0.6%)        3381   (0.5%)     ActiveRecord::Attribute#initialize
      4453   (0.7%)        3358   (0.5%)     ActiveRecord::AttributeSet#[]
      3348   (0.5%)        3346   (0.5%)     #<Module:0x00007f8cc7bf6e30>.lookup_unicode_composition
      3358   (0.5%)        3328   (0.5%)     Psych::TreeBuilder#set_start_location
      3306   (0.5%)        3300   (0.5%)     Psych::Visitors::YAMLTree#binary?
      3191   (0.5%)        3183   (0.5%)     Psych::Visitors::YAMLTree::Registrar#key?
      3167   (0.5%)        3122   (0.5%)     Concurrent::Collection::NonConcurrentMapBackend#[]
     21955   (3.5%)        3023   (0.5%)     Addressable::URI.normalize_component
     56374   (9.1%)        2987   (0.5%)     Psych::Visitors::YAMLTree#accept
      2988   (0.5%)        2964   (0.5%)     ActiveRecord::QueryMethods#default_value_for
```
