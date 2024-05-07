#!/usr/bin/env ruby

pattern = /School/
match = ARGV[0].scan(pattern).join("")

puts match
