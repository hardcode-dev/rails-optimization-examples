# GC.stat, ObjectSpace.count_objects
require 'benchmark'

ROWS = 100_000
COLS = 10
REPS = 1000

# RSS - Resident Set Size
# объём памяти RAM, выделенной процессу в настоящее время
def print_memory_usage
  "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i / 1024)
end

def report_gc_delta(before, after)
  puts "GCs Count (counted on delta): #{after[:count] - before[:count]}"
end

def print_object_space_count_objects
  puts "\nObjectSpace.count_objects: "
  pp ObjectSpace.count_objects

  # Можем обойти все объекты, созданные в программе!
  # puts ObjectSpace.each_object.count
  # puts ObjectSpace.each_object(String) {|s| puts s}
end

def print_gc_stats(stats, message)
  puts message
  pp stats
  puts 'Hey'
end

puts "Start"

data = Array.new(ROWS) do
  Array.new(COLS) { "x" * REPS }
end

time = Benchmark.realtime do
  puts "rss before concatenation: #{print_memory_usage}"
  old_stat = GC.stat
  print_gc_stats(old_stat, 'GC stats before concatenation:')
  print_object_space_count_objects

  csv = data.map { |row| row.join(",") }.join("\n")
  puts  "rss after concatenation: #{print_memory_usage}"

  new_stat = GC.stat
  print_gc_stats(new_stat, 'GC stats after concatenation:')
  print_object_space_count_objects

  report_gc_delta(old_stat, new_stat)
end

puts "Finish in #{time.round(2)}"
