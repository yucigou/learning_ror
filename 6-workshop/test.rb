require_relative 'day'
require_relative 'year'

year = Year.new(2016, 6)

(2016..2023).each do |y|
  puts "=============== Year #{y} ==============="
  puts "Last day : #{Day::NAMES[year.last_day_of(y)]}"
end
