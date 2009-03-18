require 'benchmark'

report = Benchmark.measure do

  estimate = 0
  denominator = 1

  while denominator < 10000000
    estimate = estimate.send( ( denominator % 2 == 1 ? :+ : :- ), ( 4.0 / ( denominator * 2 - 1 ) ) )
    denominator = denominator + 1
  end

  puts "PI = #{ estimate }"
  puts "Math::PI = #{ Math::PI }"
  
end

puts report
