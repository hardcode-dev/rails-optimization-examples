# RubyProf CallGrind report
# ruby 15-ruby-prof-callgrind.rb
# brew install qcachegrind
# qcachegrind ruby_prof_reports/...
require 'ruby-prof'
require_relative 'work_method.rb'

RubyProf.measure_mode = RubyProf::WALL_TIME

result = RubyProf.profile do
  work('data_small.txt', disable_gc: true)
end

printer4 = RubyProf::CallTreePrinter.new(result)
printer4.print(:path => "ruby_prof_reports", :profile => 'callgrind')
