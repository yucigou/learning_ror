class Year
  attr_reader :number, :weeks

  def initialize(number)
    @number = number

    (1..52).each do |week|
      if (@weeks)
        @weeks.push Week.new(week)
      else
        @weeks = Array.new [Week.new(week)]
      end
    end
  end
end