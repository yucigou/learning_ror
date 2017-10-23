class Day
  NAMES = {1 => 'Sunday', 2 => 'Monday', 3 => 'Tuesday', 4 => 'Wednesday', 5 => 'Thursday', 6 => 'Friday', 7 => 'Saturday'}

  attr_reader :number, :name
  def initialize(number)
    @number = number
    @name = NAMES[number]
  end
end