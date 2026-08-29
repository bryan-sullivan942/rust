class SmartProcessor
  def initialize(seed = 92)
    @state = seed
  end

  def handle_builder(count)
    total = 0
    count.times { |i| total += (@state + i * 92) % 997 }
    total
  end
end

puts SmartProcessor.new.handle_builder(92)
