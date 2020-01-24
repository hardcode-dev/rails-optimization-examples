# Долгая конкатенция строк
# Простейший benchmark
# Запустить в ruby 2.0
# Запустить в ruby 2.6
# rbenv shell 2.0.0-p648
# rbenv shell 2.6.3
require 'benchmark'

ROWS = 100_000
COLS = 10
REPS = 1000

puts "Start"

data = Array.new(ROWS) do
  Array.new(COLS) { 'x' * REPS }
end

time = Benchmark.realtime do
  data.map { |row| row.join(",") }.join("\n")
end

puts "Finish in #{time.round(2)}"
