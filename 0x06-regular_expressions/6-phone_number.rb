#!/usr/bin/env ruby

pattern = /\s?(\d{3}[-\s]?){2}\d{4}/
match = ARGV[0].scan(pattern).join("")

puts match
