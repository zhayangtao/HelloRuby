class Module
  #模块
  module NumberStuff
    def NumberStuff.random
      rand(1000)
    end
  end

  module LetterStuff
    def LetterStuff.random
      (rand(26) + 65).chr
    end
  end

  module ToolBox
    class Ruler
      attr_accessor :length
    end
  end
  module Country
    class Ruler
      attr_accessor :name
    end
  end
  a = ToolBox::Ruler.new
  a.length = 50
  b = Country::Ruler.new
  b.name = "Ghengis ks"

  #掺入
  module UsefulFeatures
    def class_name
      self.class.to_s
    end
  end
  class Person
    include UsefulFeatures
  end
  x = Person.new
  puts x.class_name
end

module AnotherModule
  def do_stuff
    puts "This is a test"
  end
end
include AnotherModule
Module.do_stuff
AnotherModule.do_stuff

#Enumerable模块
my_array = %w{this is a test of the longest word check}
longest_word = ''
my_array.each do |word|
  longest_word = word if longest_word.length < word.length
end
puts longest_word

my_array2 = %w{10 56 92 3 49 588 18}
highest_number = 0
my_array2.each do |number|
  number = number.to_i
  highest_number = number if number > highest_number
end
puts highest_number

[1, 2, 3, 4].collect {|i| i.to_s + 'x'}
class AllVowels
  include Enumerable

  @@vowels = %w{a e i o u}
  def each
    @@vowels.each{|v| yield v}
  end
end
x = AllVowels.new
x.each{|x| puts x}
puts x.collect { |i | i + 'x' }
x.detect {|i| i > 'j'}
x.select{|i| i > 'j'}
x.sort
x.max

puts 1 <=> 2

#Comparable模块
class Song
  include Comparable
  attr_accessor :length
  def <=>(other)
    @length <=> other.length
  end
  def initialize(song_name, length)
    @song_name = song_name
    @length = length
  end
end
a = Song.new('Rock around the clock', 143)
b = Song.new('bohemian Rhasody', 544)
c = Song.new('Minute walez', 60)
puts a < b
puts b >= c

#通过命名空间和类进行掺入
module ToolBox2
  class Ruler
    attr_accessor :length
  end
end
module Country2
  class Ruler
    attr_accessor :name
  end
end
a = ToolBox2::Ruler.new
a.length = 50
b = Country2::Ruler.new
b.name = "Genis khan of moskau"
