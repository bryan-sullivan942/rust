class SmartCollector
  def initialize(seed = 82)
    @state = seed
  end

  def build_handler(count)
    result = 0
    count.times { |i| result += (@state + i * 82) % 997 }
    result
  end
end

puts SmartCollector.new.build_handler(82)
