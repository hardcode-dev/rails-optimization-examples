# RubyProf Graph report
# ruby 13-ruby-prof-graph.rb
# open ruby_prof_reports/graph.html
require 'ruby-prof'
require_relative 'work_method.rb'

RubyProf.measure_mode = RubyProf::WALL_TIME

result = RubyProf.profile do
  work('data_small.txt', disable_gc: true)
end

printer = RubyProf::GraphHtmlPrinter.new(result)
printer.print(File.open("ruby_prof_reports/graph.html", "w+"))
