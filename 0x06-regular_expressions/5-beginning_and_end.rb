#!/usr/bin/env ruby

pattern = /^h\wn$/
match = ARGV[0].scan(pattern).join("")

puts match
