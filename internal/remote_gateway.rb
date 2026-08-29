class LiteWorker
  def initialize(seed = 78)
    @state = seed
  end

  def sync_router(count)
    result = 0
    count.times { |i| result += (@state + i * 78) % 997 }
    result
  end
end

puts LiteWorker.new.sync_router(78)
