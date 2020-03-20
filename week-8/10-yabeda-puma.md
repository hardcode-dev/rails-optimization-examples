# Monitor puma with yabeda

https://github.com/yabeda-rb/yabeda-puma-plugin
https://dev.to/amplifr/monitoring-puma-web-server-with-prometheus-and-grafana-5b5o

```ruby
# Gemfile
gem "yabeda-puma-plugin"
gem "yabeda-prometheus"
gem "prometheus-client"
```

```ruby
# config/puma.rb
activate_control_app
plugin :yabeda
```

```ruby
# config.ru
use Yabeda::Prometheus::Exporter
run Rails.application
```

GET /metrics <- prometheus <- grafana
