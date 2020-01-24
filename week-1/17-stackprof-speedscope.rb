# Stackprof report -> flamegraph in speedscope
# ruby 17-stackprof-speedscope.rb
require 'json'
require 'stackprof'
require_relative 'work_method.rb'

profile = StackProf.run(mode: :wall, raw: true) do
  work('data_small.txt', disable_gc: true)
end

File.write('stackprof_reports/stackprof.json', JSON.generate(profile))
