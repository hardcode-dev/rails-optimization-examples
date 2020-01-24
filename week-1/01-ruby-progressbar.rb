require 'ruby-progressbar'

parts_of_work = 100

progressbar = ProgressBar.create(
  total: parts_of_work,
  format: '%a, %J, %E %B' # elapsed time, percent complete, estimate, bar
  # output: File.open(File::NULL, 'w') # IN TEST ENV
)

(1..parts_of_work).each do |i|
  sleep(1)
  progressbar.increment
end
