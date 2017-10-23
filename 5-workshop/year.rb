require_relative 'day'
require_relative 'week'

class Year
  DAYS_NUMBER = {common: 365, leap: 366}

  attr_reader :number, :weeks, :days

  def initialize(number, start_day)
    raise 'invalid number' unless Day::NAMES.has_key? start_day

    @number = number

    @weeks = (1..52).map do |week|
      Week.new(week)
    end

    @days ||= Array.new([start_day])
    days_number = find_days_number()
    (2..days_number).each do |i|
      day = (@days[@days.length - 1] + 1) % 8
      if (day != 0)
        @days.push day
      else
        @days.push 1
      end
    end
  end

  def find_days_number
    is_leap_year? ? DAYS_NUMBER[:leap] : DAYS_NUMBER[:common]
  end

  # if (year is not divisible by 4) then (it is a common year)
  # else if (year is not divisible by 100) then (it is a leap year)
  # else if (year is not divisible by 400) then (it is a common year)
  # else (it is a leap year)
  def is_leap_year?
    if (@number % 4 != 0)
      false
    elsif (@number % 100 != 0)
      true
    elsif (@number % 400 != 0)
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
end