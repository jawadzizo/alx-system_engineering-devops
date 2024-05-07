#!/usr/bin/env ruby

pattern = /hbt{2,}n/
match = ARGV[0].scan(pattern).join("")

puts match
