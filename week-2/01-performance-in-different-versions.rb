# Add simple time benchmark
# Между какими версиями произошёл скачок производительности?
require 'benchmark'

ROWS = 100_000
COLS = 10
REPS = 1000

puts "Start"

data = Array.new(ROWS) do
  Array.new(COLS) { "x" * REPS }
end

time = Benchmark.realtime do
  data.map { |row| row.join(",") }.join("\n")
end

puts "Finish in #{time} seconds"
