namespace :count do

  desc "DB Time"
  task :db_time do
    filename = "log/joyent_production.log.20080305.txt"
    filesize = File.size "log/joyent_production.log.20080305.txt"
    db_time_sum = 0.0

    10.times do |x|
      Thread.new do
        f[x] = File.read( filename, ( filesize / 10 ), ( x * ( filesize / 10 ) ) )
        while( line = f[x].gets )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join
    end
    puts db_time_sum.to_s + " seconds used by the DB." 
  end
end

#Jan 17 03:14:47 domain.com rails[21891]: Completed in 0.30499 (3 reqs/sec) | Rendering: 0.08480 (27%) | DB: 0.19095 (62%) | 200 OK [http://domain.com/]
