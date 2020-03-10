# parallel_test

https://github.com/grosser/parallel_tests

```
# config/database.yml
test:
  database: yourproject_test<%= ENV['TEST_ENV_NUMBER'] %>
```

rake parallel:create
rake parallel:prepare
rake 'parallel:spec[3]'

```
# .rspec_parallel
--format progress
--format ParallelTests::RSpec::RuntimeLogger --out tmp/parallel_runtime_rspec.log
```

```ruby
# tasks/test.rake
namespace :test do
  desc "run"
  task run: :environment do
    cmd = "rake parallel:spec[3]"
    puts "Running rspec via `#{cmd}`"
    command = TTY::Command.new(printer: :quiet, color: true)

    start = Time.now
    begin
      command.run(cmd)
    rescue TTY::Command::ExitError
      puts 'TEST FAILED SAFELY'
    end
    finish = Time.now

    puts 'SENDING METRIC TO INFLUXDB'
    TestMetrics.write(user: 'spajic', run_time_seconds: (finish - start).to_i)
  end
end
```

```shell
rake test:run
Running rspec via `rake parallel:spec[3]`
[Zonebie] Setting timezone: ZONEBIE_TZ="International Date Line West"
[Zonebie] Setting timezone: ZONEBIE_TZ="Athens"
[Zonebie] Setting timezone: ZONEBIE_TZ="Buenos Aires"
...
336s

# Повторный вызов с надеждой на балансировку через статистику
rake test:run
Running rspec via `rake parallel:spec[3]`
3 processes for 255 specs, ~ 85 specs per process
[Zonebie] Setting timezone: ZONEBIE_TZ="UTC"
[Zonebie] Setting timezone: ZONEBIE_TZ="Kabul"
[Zonebie] Setting timezone: ZONEBIE_TZ="Karachi"
...
287s

# Попробуем в 4 потока
rake test:run
Running rspec via `rake parallel:spec[4]`
4 processes for 255 specs, ~ 63 specs per process
[Zonebie] Setting timezone: ZONEBIE_TZ="Kabul"
[Zonebie] Setting timezone: ZONEBIE_TZ="Nairobi"
.[Zonebie] Setting timezone: ZONEBIE_TZ="St. Petersburg"
.[Zonebie] Setting timezone: ZONEBIE_TZ="Indiana (East)"
...
268s
```

```
cat parallel_runtime_rspec.log
spec/decorators/comment_decorator_spec.rb:0.4910280001349747
spec/features/articles/user_visits_articles_by_tag_spec.rb:28.241394999902695
spec/features/comments/user_delete_a_comment_spec.rb:5.697956999996677
spec/features/comments/user_views_a_comment_spec.rb:4.667678999947384
...
```

## Выводы
В 3 потока получается примерно так же быстро, как в 4, но компьютер при этом более отзывчивый.
