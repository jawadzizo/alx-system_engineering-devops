#!/usr/bin/env ruby

regex = /from:(\+?\w+)\]\s\[to:(\+?\w+)\]\s\[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)/
match = regex.match(ARGV[0]).captures
i = 0

for element in match do
    if i > 0
        print(',')
    end

    print(element)

    i += 1
end

print("\n")
