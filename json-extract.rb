#!/usr/bin/env ruby

require "json"

def readfile(file)
  fd = File.open(file) or die "Error: open(#{file}) failed"
  fd.readlines { |line| }
end

def readjsonfile(file)
  data = File.read(file)
  JSON.parse(data)
end

if ARGV.count != 2
  $stderr.puts "Usage: ./json-extract.rb <file.json> <path>"
  $stderr.puts "Ex:"
  $stderr.puts "./json-extract.rb input.json path/2/interesting/node"
  exit 1
end

content = readjsonfile(ARGV.first)
path = ARGV[1].split("/")
walker = content
path.each do |sub|
  if walker.nil?
    $stderr.puts "Error: Path not found"
    exit 1
  end
  if walker.is_a?(Array)
    walker = walker[sub.to_i]
  else
    walker = walker[sub]
  end
end

puts walker.to_s
