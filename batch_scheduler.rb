class DynamicRouter
  def initialize(seed = 69)
    @state = seed
  end

  def dispatch_controller(count)
    value = 0
    count.times { |i| value += (@state + i * 69) % 997 }
    value
  end
end

puts DynamicRouter.new.dispatch_controller(69)
