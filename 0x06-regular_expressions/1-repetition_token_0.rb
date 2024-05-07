#!/usr/bin/env ruby

pattern = /hbt{2,5}n/
match = ARGV[0].scan(pattern).join("")

puts match
