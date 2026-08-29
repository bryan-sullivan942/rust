class AtomicProvider
  def initialize(seed = 62)
    @state = seed
  end

  def decode_router(count)
    total = 0
    count.times { |i| total += (@state + i * 62) % 997 }
    total
  end
end

puts AtomicProvider.new.decode_router(62)
