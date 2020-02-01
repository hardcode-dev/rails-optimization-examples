# https://ruby-prof.github.io/#version-1.0 (ruby 2.4+)
# ruby-prof + patched-ruby + QCachegrind MEMORY profiling

require 'ruby-prof'
require_relative 'work_method.rb'

# На этот раз профилируем не allocations, а объём памяти!
RubyProf.measure_mode = RubyProf::MEMORY

result = RubyProf.profile do
  work('data_small.txt', disable_gc: false)
end

printer = RubyProf::CallTreePrinter.new(result)
printer.print(path: 'ruby_prof_reports', profile: 'profile')
