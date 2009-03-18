require 'benchmark'

report = Benchmark.measure do

  100000.times do
    fiber = Fiber.new{}
  end
    
end

puts report
