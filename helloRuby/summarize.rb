class Summarize
=begin
  text = %q{
  Ruby is a great programming language.It is object oriented
and has many groovy features.Some people don't like it,but that's
not our problem!It's easy to learn.It's great To learn more about Ruby,
visit the official Ruby Web site today.
  }

  sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
  puts sentences
  puts "----------------"
  sentences_sorted = sentences.sort_by { |sentence| sentence.length }
  puts sentences_sorted
  puts "----------------"
  one_third = sentences_sorted.length / 3
  puts one_third
  puts "----------------"
  ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
  puts ideal_sentences
  puts "----------------"
  ideal_sentences = ideal_sentences.select { |sentence| sentence =~/is|are/ }
  puts ideal_sentences
  puts "----------------"
  puts ideal_sentences.join(". ")


end

class Shape
end

class Square < Shape
  def initialize(side_length)
    @side_length = side_length
  end
  def area
    @side_length * @side_length
  end
  def perimeter
    @side_length * 4
  end
end

class Triangle < Shape
  def initialize(base_width, height, side1, side2, side3)
    @base_width = base_width
    @height = height
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def area
    @base_width * @height / 2
  end
  def perimeter
    @side1 + @side2 + @side3
  end
end

my_square = Square.new(5)
my_triangle = Triangle.new(6, 6, 7.81, 7.81, 7.81)
puts my_square.area
puts my_square.perimeter
puts my_triangle.area
puts my_triangle.perimeter

class Square
  def initialize
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
    else
      @@number_of_squares = 1
    end
  end
end

#类方法
class Test
  def Test.test_method
    puts "Hello from the Square class!"
  end

  def test_method
    puts "Hello from an instance of class Square"
  end
end
Test.test_method
Test.new.test_method


  class Person
    def initialize(name)
      set_name(name)
    end

    def name
      @first_name + " " + @last_name
    end

    private
    def set_name(name)
      first_name, last_name = name.split(/\s+/)
      set_first_name(first_name)
      set_last_name(last_name)
    end

    def set_first_name(name)
      @first_name = name
    end

    def set_last_name(name)
      @last_name = name
    end
  end

  p = Person.new("fred Blog")
  p.set_last_name("smith")

  class Person2
    def initialize(age)
      @age = age
    end
    def age
      @age
    end
    def age_difference_with(other_person)
      (self.age - other_person.age).abs
    end
    protected :age
  end
  fred = Person2.new(34)
  chris = Person2.new(25)
  puts chris.age_difference_with(fred)
  puts chris.age
=end
  #多态
  class Animal
    attr_accessor :name

    def initialize(name)
      @name = name
    end
  end
  class Cat < Animal
    def talk
      "Meaow!"
    end
  end
  class Dog < Animal
    def talk
      "Woof!"
    end
  end
  animals = [Cat.new("Flossie"), Dog.new("Fido"), Cat.new("Tinkle")]
  animals.each do |animal|
    puts animal.talk
  end

  #嵌套类
  class Drawing
    def Drawing.give_me_a_circle
      Circle.new
    end

    class Line
    end
    class Circle
      def what_am_i
        "This is a circle"
      end
    end
  end

  a = Drawing.give_me_a_circle
  puts a.what_am_i
  a = Drawing::Circle.new
  puts a.what_am_i
  a = Circle.new
  puts a.what_am_i

end
