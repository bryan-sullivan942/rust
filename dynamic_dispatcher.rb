class SmartProcessor
  def initialize(seed = 10)
    @state = seed
  end

  def load_context(count)
    result = 0
    count.times { |i| result += (@state + i * 10) % 997 }
    result
  end
end

puts SmartProcessor.new.load_context(10)
