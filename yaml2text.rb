#!/usr/bin/env ruby

require 'yaml'

data = YAML.load_file(ARGV[0])

puts data.inspect



new_data = File.open("/home/jacob/.var/app/net.ankiweb.Anki/data/Anki2/User\ 1/collection.media/anki_format", "w")



data.each_pair do |k, v|
  writing = v[:writing]
  reading = v[:reading]
  desc = v[:desc]
  frequency = v[:frequency]
  puts "row #{k} => #{reading}"

  new_data.puts "writing - #{writing}, reading - #{reading}; description - #{desc}\n"

end

#
#file.each do |a|
#  puts a
#end
#
