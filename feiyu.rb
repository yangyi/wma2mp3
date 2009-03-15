#!/usr/bin/env ruby


day = ARGV[0]

ARGV.each { |day| 

  %w(a b c).each { |e| 
    file = "#{day}#{e}.wma"

    address = "mms://media.chinabroadcast.cn/eng/music/morning/2009/#{file}"  

    command = <<-COMMAND
    mplayer -dumpfile #{file} -dumpstream #{address}
    COMMAND

    system command
  }  
}

