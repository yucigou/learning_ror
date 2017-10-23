require_relative 'day'
require_relative 'week'
require_relative 'year'

day = Day.new(3)
week = Week.new(44)
year = Year.new(2017)

puts day.name 	 # Tuesday
puts day.number # 3

puts week.number 	# 44
puts week.days.first.name	# Sunday

puts year.number  # 2017
puts year.weeks.first.number # 1
puts year.weeks.first.days.first.name #Sun

puts Day::NAMES

# Raise an exception
day = Day.new(0)