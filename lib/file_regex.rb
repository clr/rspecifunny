require 'benchmark'

report = Benchmark.measure do
  filename = "log/joyent_production.log.20080305.short.txt"
  db_time_sum = 0.0

  file = File.open( filename, 'r' )
  while( line = file.gets )
    if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
      db_time_sum = db_time_sum + line_match[9].to_f
    end
  end

  puts db_time_sum.to_s + " seconds used by the DB." 
end
puts report

