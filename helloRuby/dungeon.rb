#地下城游戏
class Dungeon
  attr_accessor :player
  def initialize(player_name)
    @player = Player.new(player_name)
    @room = []
  end
  class Player
    attr_accessor :name, :location
    def initialize(player_name)
      @name = player_name
    end
  end
  class Room
    attr_accessor :reference, :name, :description, :connections
    def initialize(reference, name, description, connection)
      @reference = reference
      @name = name
      @description = description
      @connection = connection
    end
  end
end

# struct ：快捷简单的数据类
Person = Struct.new(:name, :gender, :age)
fred = Person.new("Fred", "male", 50)
chris = Person.new("Chris", "male", 25)
puts fred.age + chris.age

#改写地下城类
class Dungeon
  attr_accessor :player
  def initialize(player_name)
    @player = Player.new(player_name)
    @rooms = []
  end
  Player = Struct.new(:name, :location)
  Room = Struct.new(:reference, :name, :description, :connection)
end
require 'string_extensions'