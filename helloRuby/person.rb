#=RDoc Example
#
#==This is a heading
#
#*First item in an outer list
# *First item in an inner list
# *Second item in an inner list
#*Second item in an outer list
# *only item in this inner list
#
#==This is a second heading
#
#even
#+text that kooks like code+by surrounding it wieh plus
#
    #class MyClass
    #def method_name
    #puts "test"
    #end
    #end
#This class stores information about people
class Person
  attr_accessor :name, :age, :gender

  #Create the person object and store their name
  def initialize(name)
    raise BadDataException, "No name present" if name.empty?
    @name = name
  end
  #Print this person's name to the screen
  def print_name
    puts "Person called #{@name}"
  end
end
# person = Person.new('')

class BadDataException < RuntimeError

end

#处理异常
begin
  puts 10 / 0
rescue ZeroDivisionError
  puts "You caused an error!"
rescue
  puts "error"
end
#接收并使用异常
begin
  puts 10 / 0
rescue => e
  puts e.class
end

#catch / throw
catch(:finish) do
  1000.times do
    x = rand(1000)
    throw :finish if x == 123
  end
  puts "generated 1000 random numbes without generating 123!"
end

def generate_random_number_except_123
  x = rand(1000)
  throw :finish if x == 123
end
catch(:finish) do
  1000.times {
    generate_random_number_except_123
  }
  puts "generated 1000 random numbes without generating 123!"
end