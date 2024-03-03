#!/usr/bin/env ruby

regex = /^h\wn$/
match = ARGV[0].scan(regex)

for element in match do
    print(element)
end

print("\n")
