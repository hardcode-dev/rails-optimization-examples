# Запрос кол-ва используемой памяти (RSS) у ОС
# ruby 10-request-mem-consumption-from-os.rb
# FORCE_GC=1 ruby 10-request-mem-consumption-from-os.rb
require 'benchmark'

ROWS = 100_000
COLS = 10
REPS = 1000

# RSS - Resident Set Size
# объём памяти RAM, выделенной процессу в настоящее время
def print_memory_usage
  "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i / 1024)
end

puts "Start"

puts "rss before array allocation: #{print_memory_usage}"

data = Array.new(ROWS) do
  Array.new(COLS) { "x" * REPS }
end

puts "rss before concatenation: #{print_memory_usage}"

csv = ''
time = Benchmark.realtime do
  # data.map { |row| row.join(",") }.join("\n")
  data.each_with_index do |row, i|
    row.each_with_index do |s, i|
      csv << s
      csv << ',' unless i == (COLS - 1)
    end
    csv << '\n' unless i == (ROWS - 1)
  end
end

if ENV['FORCE_GC'] == '1'
  puts "Making full GC..."
  data = nil
  GC.start(full_mark: true, immediate_sweep: true)
end
puts "rss after concatenation: #{print_memory_usage}"

puts "Finish in #{time.round(2)}"
