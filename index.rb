require_relative './lib/notam'
require 'json'

if ARGV.empty?
  puts "Usage: ruby index.rb '<raw_notam_message>'"
  exit
end

raw_notam_text_message = ARGV[0]

notam = NOTAM.parse(raw_notam_text_message)
json_output = JSON.pretty_generate(notam.data)

puts json_output