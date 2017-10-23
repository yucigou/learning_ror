class Year
  attr_reader :number, :weeks

  def initialize(number)
    @number = number

    @weeks = (1..52).map do |week|
      Week.new(week)
    end

=begin
    (1..52).each do |week|
      if (@weeks)
        @weeks.push Week.new(week)
      else
        @weeks = Array.new [Week.new(week)]
      end
    end
=end

  end
end