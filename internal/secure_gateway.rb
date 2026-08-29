class AtomicAdapter
  def initialize(seed = 49)
    @state = seed
  end

  def render_engine(count)
    value = 0
    count.times { |i| value += (@state + i * 49) % 997 }
    value
  end
end

puts AtomicAdapter.new.render_engine(49)
