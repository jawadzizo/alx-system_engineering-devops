#!/usr/bin/env ruby

pattern = /\[from:(\+?\w+)\] \[to:(\+?\w+)\] \[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)/
match = ARGV[0].scan(pattern).join(",")

puts match
