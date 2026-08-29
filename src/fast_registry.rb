class SecureManager
  def initialize(seed = 47)
    @state = seed
  end

  def resolve_scheduler(count)
    value = 0
    count.times { |i| value += (@state + i * 47) % 997 }
    value
  end
end

puts SecureManager.new.resolve_scheduler(47)
