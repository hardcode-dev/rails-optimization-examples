# rack-mini-profiler

```ruby
gem 'rack-mini-profiler'
# Дополнительные возможности
gem 'memory_profiler'
gem 'stackprof', '>= 0.2.9'
gem 'flamegraph'
```

- `help` по возможностям http://busfor.dev.ru:3000/?pp=help


```ruby
# In ApplicationController
# Authorize rack-mini-profiler
before_action do
  if secret_mode?
    Rack::MiniProfiler.authorize_request
  end
end

# Do not let rack-mini-profiler disable caching
Rack::MiniProfiler.config.disable_caching = false
Rack::MiniProfiler.config.show_total_sql_count = true

uri = URI.parse(Rails.application.config_for(:redis)['base'])
Rack::MiniProfiler.config.storage_options = { :host => uri.host, :port => uri.port, :password => uri.password }
Rack::MiniProfiler.config.storage = Rack::MiniProfiler::RedisStore
```

## Вопросы к rack-mini-profiler
- How many SQL queries I am generating?
- Total request time?
- % of time in SQL?
- DOMContentLoaded
- Есть какие-то части страницы, которые занимают бОльшую часть времени?

По каждому пункту - можно ли убрать запрос / закешировать?

## Возможности профилирования
- http://localhost:3000/?pp=flamegraph (look at the legend!)
- http://localhost:3000/?pp=profile-gc
- http://localhost:3000/?pp=profile-memory
- http://localhost:3000/?pp=analyze-memory
- http://localhost:3000/?pp=trace-exceptions
