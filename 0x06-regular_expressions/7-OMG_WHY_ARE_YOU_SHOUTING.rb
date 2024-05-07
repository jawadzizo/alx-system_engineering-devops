#!/usr/bin/env ruby

pattern = /[A-Z]/
match = ARGV[0].scan(pattern).join("")

puts match
