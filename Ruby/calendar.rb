require 'date'
require 'optparse'

def calender(year, month)
  first_day = Date.new(year, month, 1)
  last_day = Date.new(year, month, -1)

  head = "#{month}月 #{year}"

  puts head.center(20)
  puts 'Mo Tu We Th Fr Sa Su'

  first_day_week = (first_day.wday + 6) % 7
  first_day_week.times { print '   ' }
  (first_day.day..last_day.day).each do |day|
    print day.to_s.rjust(2) + ' '
    puts "\n" if ((first_day_week + day) % 7).zero?
  end
end

options = {}

today = Date.today
year = today.year

opt = OptionParser.new
opt.on('-m month') do |month|
  options[:month] = month.to_i
end
opt.parse!(ARGV)
month = options[:month] || today.month

puts "#{month} is neither a month number (1..12) nor a name" unless (1..12).include?(month)

calender(year, month)
