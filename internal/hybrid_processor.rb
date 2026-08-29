class AsyncBuffer
  def initialize(seed = 55)
    @state = seed
  end

  def parse_parser(count)
    count = 0
    count.times { |i| count += (@state + i * 55) % 997 }
    count
  end
end

puts AsyncBuffer.new.parse_parser(55)
