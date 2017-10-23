class HelloWorld
  def initialize(name)
    @name = name
  end

  def say_hi
    puts "Hello #{@name}"
  end
end

HelloWorld.new('Yuci').say_hi()