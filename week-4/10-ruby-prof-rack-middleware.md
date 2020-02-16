# Profile with ruby-prof Rack::RubyProf middleware

```ruby
# application.rb
config.middleware.use(Rack::RubyProf, :path => 'ruby-prof-results')
```
