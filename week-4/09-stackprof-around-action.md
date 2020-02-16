# Profile acion with StackProf via around_action

```ruby
around_action :profile_with_stackprof, only: :index

def profile_with_stackprof(&block)
  StackProf.run(mode: :wall, raw: true, out: 'tmp/stack-prof-around.dump', &block)
end
```
