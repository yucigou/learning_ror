require_relative 'day'
require_relative 'year'

# all_days = ' '
# year.days.each do |day|
#   # puts day.to_s#.join(' ')
#   all_days += day.to_s
#   all_days += ' '
# end
#
# puts all_days

{1500 => 2, 2000 => 7, 2016 => 6, 2017 => 1, 2018 => 2}.each do |y, start_day|
  puts "=============== Year #{y} ==============="
  year = Year.new(y, start_day)
  puts "First day: #{Day::NAMES[year.days.first]}"
  puts "Last day : #{Day::NAMES[year.days.last]}"
  puts "Is leap year: #{year.is_leap_year?}"
  puts "Toal number of days: #{year.days.length}"
  puts "Number of sundays: #{year.number_of_sundays}"
  puts "Number of saturdays: #{year.number_of(7)}"
end

day1 = Day.new(3)
day2 = Day.new(5)

puts day1 == day2