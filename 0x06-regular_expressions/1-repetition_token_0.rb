#!/usr/bin/env ruby

regex = /hbt{2,5}n/
match = ARGV[0].scan(regex)

for element in match do
    print(element)
end

print("\n")
