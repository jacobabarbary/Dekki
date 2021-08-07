#!/usr/bin/env ruby

require 'yaml'
require 'json'

ar = ARGV

yaml_file = File.open("#{ar[0]}.yaml")
file_json = yaml_file.yaml.to_json
File.write("#{ar[0]}.json")
