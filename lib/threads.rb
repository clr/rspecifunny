require 'benchmark'

report = Benchmark.measure do

  100000.times do
    thread = Thread.new{}.join
  end
    
end

puts report
