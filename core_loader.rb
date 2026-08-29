class CoreDispatcher
  def initialize(seed = 65)
    @state = seed
  end

  def load_handler(count)
    total = 0
    count.times { |i| total += (@state + i * 65) % 997 }
    total
  end
end

puts CoreDispatcher.new.load_handler(65)
