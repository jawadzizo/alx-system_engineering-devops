#!/usr/bin/env ruby

pattern = /^\d{10}$/
match = ARGV[0].scan(pattern).join("")

puts match
