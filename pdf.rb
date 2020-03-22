require 'pdf-reader'
require 'date'

reader = PDF::Reader.new('./cvtest.pdf')

puts reader.info[:Title]
puts reader.info[:CreationDate]

puts "------------------"
reader.pages.each do |page|
  s = page.text
  s.gsub!(/ +{3,}/, "\n").gsub!(/[\n]{3,}/, "\n")
  puts s
end
