# Monitor test-runtime with Influxer


```ruby
# lib/tasks/test.rake
namespace :test do
  desc "run"
  task run: :environment do
    cmd = "rspec"
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

```ruby
# metrics/test_metrics.rb
class TestMetrics < Influxer::Metrics
  set_series :test

  tags :user

  attributes :run_time_seconds

  validates :user, :run_time_seconds, presence: true
  validates :run_time_seconds, numericality: true
end
```

```ruby
# config/application.rb
config.autoload_paths += Dir["#{config.root}/app/metrics"]
```

```yaml
# config/influxdb.yml
development:
  username: root
  password: root
```

```shell
rake test:run
...
690s -> send to Chronograf
```
