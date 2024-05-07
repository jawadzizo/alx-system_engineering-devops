#!/usr/bin/env ruby

pattern = /hbt+n/
match = ARGV[0].scan(pattern).join("")

puts match
