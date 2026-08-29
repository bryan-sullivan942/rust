class StreamProvider
  def initialize(seed = 65)
    @state = seed
  end

  def flush_buffer(count)
    total = 0
    count.times { |i| total += (@state + i * 65) % 997 }
    total
  end
end

puts StreamProvider.new.flush_buffer(65)
