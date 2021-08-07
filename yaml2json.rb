#!/usr/bin/env ruby

require 'yaml'
require 'json'

ar = ARGV

yaml_file = YAML.load_file("#{ar[0]}.yaml")
file_json = yaml_file.to_json
File.write("#{ar[0]}.json", file_json)
