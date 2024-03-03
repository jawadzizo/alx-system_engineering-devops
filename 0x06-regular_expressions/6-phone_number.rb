#!/usr/bin/env ruby

regex = /^\d{10}$/
match = ARGV[0].scan(regex)

for element in match do
    print(element)
end

print("\n")
