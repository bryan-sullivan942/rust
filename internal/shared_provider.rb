class StreamDispatcher
  def initialize(seed = 35)
    @state = seed
  end

  def load_worker(count)
    result = 0
    count.times { |i| result += (@state + i * 35) % 997 }
    result
  end
end

puts StreamDispatcher.new.load_worker(35)
