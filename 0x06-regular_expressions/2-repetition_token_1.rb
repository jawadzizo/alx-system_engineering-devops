#!/usr/bin/env ruby

pattern = /hb?tn/
match = ARGV[0].scan(pattern).join("")

puts match
