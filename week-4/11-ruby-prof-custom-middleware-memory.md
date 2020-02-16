# Profile memory with ruby-prof 1.0, qcachegind and custom middleware

```ruby
# lib/profile_middleware.rb
class ProfileMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    RubyProf.measure_mode = RubyProf::MEMORY
    RubyProf.start

    # Run all app code
    res = @app.call(env)

    # Stop profiling & save
    result = RubyProf.stop
    printer = RubyProf::CallTreePrinter.new(result)
    printer.print(:path => ".", :profile => 'profile')

    res
  end
end

# application.rb
config.middleware.use ProfileMiddleware
```
