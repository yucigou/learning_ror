class Day
  NAMES = {1 => 'Sunday', 2 => 'Monday', 3 => 'Tuesday', 4 => 'Wednesday', 5 => 'Thursday', 6 => 'Friday', 7 => 'Saturday'}

  # NAMES = [:Sunday, :Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday]

  attr_reader :number, :name
  def initialize(number)
    raise 'invalid number' unless NAMES.has_key? number

    @number = number
    @name = NAMES[number]
  end

  def ==(another)
    @number == another.number
  end
end