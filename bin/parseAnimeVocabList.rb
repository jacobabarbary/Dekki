#!/usr/bin/env ruby

require 'yaml'

words = {}
totalFrequency = 0

wordList = File.read("src/animeVocabList")
wordList.each_line do |line|
  writing, reading, frequency = line.split
  words[writing] = {
    writing: writing,
    reading: reading,
    desc: "",
    frequency: frequency
  }
  totalFrequency += frequency.to_i
end


f = File.new("src/animeCommonCards","w+")

words_yaml = words.to_yaml
puts totalFrequency

f.write(words_yaml)

# wordListArr = wordList.lines

# puts wordListArr
