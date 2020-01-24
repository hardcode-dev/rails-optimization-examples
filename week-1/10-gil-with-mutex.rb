class Sheep
  def initialize
    @shorn = false
  end

  def shorn?
    @shorn
  end

  def shear!
    puts "shearing..."
    @shorn = true
  end
end

mutex = Mutex.new

sheep = Sheep.new
5.times.map do
  Thread.new do
    mutex.synchronize do
      unless sheep.shorn?
        sheep.shear!
      end
    end
  end
end.each(&:join)
