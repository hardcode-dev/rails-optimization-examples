# gem install kalibera
require 'benchmark/ips'

ROWS = 100_000
COLS = 10
REPS = 1000

GC.disable

data = Array.new(ROWS) do
  Array.new(COLS) { "x" * REPS }
end

Benchmark.ips do |x|
  # The default is :stats => :sd, which doesn't have a configurable confidence
  # confidence is 95% by default, so it can be omitted
  x.config(
    stats: :bootstrap,
    confidence: 95,
  )

  x.report("slow string concatenation") do
    data.map { |row| row.join(",") }.join("\n")
  end
end
