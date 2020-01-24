# RubyProf Flat report
# ruby 12-ruby-prof-flat.rb
# cat ruby_prof_reports/flat.txt
require 'ruby-prof'
require_relative 'work_method.rb'

RubyProf.measure_mode = RubyProf::WALL_TIME

result = RubyProf.profile do
  work('data_small.txt', disable_gc: true)
end
printer = RubyProf::FlatPrinter.new(result)
printer.print(File.open("ruby_prof_reports/flat.txt", "w+"))
