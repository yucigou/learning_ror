require_relative 'day'
require_relative 'week'

class Year
  DAYS_NUMBER = {common: 365, leap: 366}

  attr_reader :number, :weeks, :start_day, :days

  def initialize(number, start_day)
    raise 'invalid number' unless Day::NAMES.has_key? start_day

    @number = number
    @start_day = start_day

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

  # if (year is not divisible by 4) then (it is a common year)
  # else if (year is not divisible by 100) then (it is a leap year)
  # else if (year is not divisible by 400) then (it is a common year)
  # else (it is a leap year)
  def find_days_number
    if (@number % 4 != 0)
      DAYS_NUMBER[:common]
    elsif (@number % 100 != 0)
      DAYS_NUMBER[:leap]
    elsif (@number % 400 != 0)
      DAYS_NUMBER[:common]
    else
      DAYS_NUMBER[:leap]
    end
  end

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

    # num = 0
    # @days.each do |day|
    #   if day == 1
    #     num += 1
    #   end
    # end
    # return num
  end

  def number_of(day)
    @days.count {|aday| aday == day}
  end
end