######################################
# Require a class

require_relative 'hello_world'
HelloWorld.new('Yuci').say_hi()

######################################
# Store block in a variable and use it
# https://stackoverflow.com/questions/10757991/save-and-re-use-block-for-method-calls

foo = lambda do |a|
  puts a
end

[1, 2, 3, 4].each &foo

boo = proc do |a|
  puts "value is #{a}"
end

[1, 2, 3, 4].each &boo