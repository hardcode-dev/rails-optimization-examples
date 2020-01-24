# Correct result with GIL (ruby)
# incorrect without GIL (jruby)
puts 'start'

array = []

5.times.map do
  Thread.new do
    1000.times do
      array << nil
    end
  end
end.each(&:join)

puts array.size
