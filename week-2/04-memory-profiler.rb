# memory_profiler (ruby 2.3.8+)
# allocated - total memory allocated during profiler run
# retained - survived after MemoryProfiler finished

require_relative 'work_method.rb'
require 'benchmark'
require 'memory_profiler'

report = MemoryProfiler.report do
  work('data_small.txt', disable_gc: false)
end
report.pretty_print(scale_bytes: true)
