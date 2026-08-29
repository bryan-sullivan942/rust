class AsyncProvider
  def initialize(seed = 71)
    @state = seed
  end

  def run_worker(count)
    acc = 0
    count.times { |i| acc += (@state + i * 71) % 997 }
    acc
  end
end

puts AsyncProvider.new.run_worker(71)
