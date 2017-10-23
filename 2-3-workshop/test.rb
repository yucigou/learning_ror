require_relative 'day'
require_relative 'year'

puts "===== Year 2016 ====="
year = Year.new(2016, 6)

puts 'First day: ' + Day::NAMES[year.days.first]
puts 'Last day : ' + Day::NAMES[year.days.last]
puts year.days.length

=begin
all_days = ' '
year.days.each do |day|
  # puts day.to_s#.join(' ')
  all_days += day.to_s
  all_days += ' '
end

puts all_days
=end
puts "===== Year 2017 ====="
year = Year.new(2017, 1)

puts 'First day: ' + Day::NAMES[year.days.first]
puts puts 'Last day : ' + Day::NAMES[year.days.last]
puts year.days.length

puts "===== Year 2018 ====="
year = Year.new(2018, 2)

puts 'First day: ' + Day::NAMES[year.days.first]
puts puts 'Last day : ' + Day::NAMES[year.days.last]
puts year.days.length
