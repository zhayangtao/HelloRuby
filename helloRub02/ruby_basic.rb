print '2 + 2 is equal to ' , 2 + 2
puts 10 / 3

class Person
  attr_accessor :name, :age, :gender
end

person_instance = Person.new
person_instance.name = 'Robart'
puts person_instance.name

# 2.2.4
class Animal
  attr_accessor :name, :age, :gender, :color
end
class Cat < Animal

end
class Dog < Animal
  def bark
    puts "Woof!"
  end
end

dog = Dog.new
puts dog.class

puts 'This is a test'.length