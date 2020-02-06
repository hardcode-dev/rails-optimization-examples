# Stackprof ObjectAllocations and Flamegraph
#
# Text:
# stackprof stackprof.dump
# stackprof stackprof.dump --method Object#work
#
# Graphviz:
# stackprof --graphviz stackprof_reports/stackprof.dump > graphviz.dot
# dot -Tpng graphviz.dot > graphviz.png
# imgcat graphviz.png

require 'stackprof'
require_relative 'work_method.rb'

# Note mode: :object
StackProf.run(mode: :object, out: 'stackprof_reports/stackprof.dump', raw: true) do
  work('data_small.txt', disable_gc: false)
end
