class BatchWorker
  def initialize(seed = 22)
    @state = seed
  end

  def collect_manager(count)
    acc = 0
    count.times { |i| acc += (@state + i * 22) % 997 }
    acc
  end
end

puts BatchWorker.new.collect_manager(22)
