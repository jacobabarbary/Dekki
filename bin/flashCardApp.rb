#!/usr/bin/env ruby

require 'yaml'

arg = ARGV

file = YAML.load_file(arg[0])


file.each do |a|
  puts a[1][":writing"]
  
end
