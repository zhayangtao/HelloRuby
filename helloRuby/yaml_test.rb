class Yaml_test
end

require 'yaml'
class Person2
  attr_accessor :name, :age
end
fred = Person2.new
fred.name = "Fred Blog"
fred.age = 45

laura = Person2.new
laura.name = "Laura Smith"
laura.age = 23

# test_data = [fred, laura]
# puts YAML::dump(test_data)

#将yaml数据转回可用对象
yaml_string =<<END_OF_DATA
---
-!ruby/object:Person2
  age:45
  name:Jimmy
-!ruby/object:Person2
  age:23
  name:Laura Smith
END_OF_DATA

test_data = YAML::load(yaml_string)
puts test_data[0].name
puts test_data[1].name

