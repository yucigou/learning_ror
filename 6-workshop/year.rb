require_relative 'day'
require_relative 'week'

class Year
  DAYS_NUMBER = {common: 365, leap: 366}

  attr_reader :number, :weeks, :days, :start_day

  def initialize(number, start_day)
    raise 'invalid number' unless Day::NAMES.has_key? start_day

    @start_day = start_day
    @number = number

    @weeks = (1..52).map do |week|
      Week.new(week)
    end

    init_days()
  end

  def init_days
    @days ||= Array.new([@start_day])
    days_number = find_days_number(@number)
    (2..days_number).each do |i|
      day = (@days[@days.length - 1] + 1) % 8
      if (day != 0)
        @days.push day
      else
        @days.push 1
      end
    end
  end

  def find_days_number(year)
    is_leap_year?(year) ? DAYS_NUMBER[:leap] : DAYS_NUMBER[:common]
  end

  # if (year is not divisible by 4) then (it is a common year)
  # else if (year is not divisible by 100) then (it is a leap year)
  # else if (year is not divisible by 400) then (it is a common year)
  # else (it is a leap year)
  def is_leap_year?(year)
    if (year % 4 != 0)
      false
    elsif (year % 100 != 0)
      true
    elsif (year % 400 != 0)
      false
    else
      true
    end
  end

  def number_of_sundays
    @days.count {|day| day == 1}
  end

  def number_of(day)
    @days.count {|d| d == day}
  end

  def last_day_of(year)
    number_of_days = 0
    (@number..year).each do |y|
      number_of_days += find_days_number(y)
    end

    find_day(@start_day, number_of_days)
  end

  def find_day(start_date, number_of_days)
    puts "#{start_date} - #{number_of_days}"
    start = start_date
    (2..number_of_days).each do |d|
      start += 1
      start = start % 8
      if (start == 0)
        start = 1
      end
    end
    return start
  end
end