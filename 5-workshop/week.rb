class Week

  attr_reader :number, :days

  def initialize(number)
    @number = number

    @days = (1..7).map do |day|
      Day.new(day)
    end
=begin
    (1..7).each do |day|
      @days ||= Array.new()
      @days.push Day.new(day)
    end
=end
    # @days = [Day.new(0), Day.new(1), Day.new(2), Day.new(3), Day.new(4), Day.new(5), Day.new(6)]
  end
end